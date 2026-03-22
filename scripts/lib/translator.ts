import Anthropic from '@anthropic-ai/sdk'
import { readFileSync, writeFileSync, existsSync } from 'fs'
import { resolve } from 'path'

const MODEL = 'claude-haiku-4-5-20251001'
const BATCH_SIZE = 30
const HEBREW_REGEX = /[\u05D0-\u05EA]/

type TranslationCache = Record<string, string>

export class Translator {
  private client: Anthropic
  private cache: TranslationCache
  private cachePath: string
  private skipTranslate: boolean

  constructor(cachePath: string, skipTranslate = false) {
    this.client = new Anthropic({ apiKey: process.env.ANTHROPIC_API_KEY })
    this.cachePath = resolve(cachePath)
    this.skipTranslate = skipTranslate
    this.cache = this.loadCache()
  }

  private loadCache(): TranslationCache {
    if (existsSync(this.cachePath)) {
      try {
        const raw = readFileSync(this.cachePath, 'utf-8')
        const parsed = JSON.parse(raw) as TranslationCache
        process.stderr.write(`[Translate] Loaded ${Object.keys(parsed).length} cached translations\n`)
        return parsed
      } catch {
        process.stderr.write(`[Translate] Cache file invalid, starting fresh\n`)
      }
    }
    return {}
  }

  private saveCache(): void {
    try {
      writeFileSync(this.cachePath, JSON.stringify(this.cache, null, 2), 'utf-8')
    } catch (err) {
      process.stderr.write(`[Translate] Failed to save cache: ${err}\n`)
    }
  }

  private isValidHebrew(text: string): boolean {
    return HEBREW_REGEX.test(text)
  }

  private async translateBatch(names: string[]): Promise<Record<string, string>> {
    const prompt = `You are a Hebrew-English food translator familiar with Israeli market terminology.

Translate the following English food names to Hebrew as they appear on Israeli food labels or menus.
- Keep preparation descriptors (raw, cooked, boiled, fried, roasted, etc.)
- Use Israeli market terminology (e.g., "חזה עוף" for chicken breast)
- Be concise — use the common Israeli name for each food
- Return ONLY a JSON array of Hebrew strings, same order and count as the input list

English food names:
${names.map((n, i) => `${i + 1}. ${n}`).join('\n')}

Respond with ONLY a valid JSON array, e.g.: ["שם עברי 1", "שם עברי 2", ...]`

    const response = await this.client.messages.create({
      model: MODEL,
      max_tokens: 2048,
      messages: [{ role: 'user', content: prompt }],
    })

    const textBlock = response.content.find(b => b.type === 'text')
    if (!textBlock || textBlock.type !== 'text') {
      throw new Error('No text block in response')
    }

    const text = textBlock.text.trim()

    // Extract JSON array (may be wrapped in markdown code block)
    const jsonMatch = text.match(/\[[\s\S]*\]/)
    if (!jsonMatch) {
      throw new Error(`Response did not contain a JSON array: ${text.slice(0, 100)}`)
    }

    const parsed = JSON.parse(jsonMatch[0]) as unknown[]
    if (!Array.isArray(parsed)) {
      throw new Error('Parsed response is not an array')
    }
    if (parsed.length !== names.length) {
      throw new Error(`Array length mismatch: got ${parsed.length}, expected ${names.length}`)
    }

    const result: Record<string, string> = {}
    for (let i = 0; i < names.length; i++) {
      const hebrewName = String(parsed[i])
      if (!this.isValidHebrew(hebrewName)) {
        throw new Error(`Item ${i + 1} ("${hebrewName}") contains no Hebrew characters`)
      }
      result[names[i]] = hebrewName
    }

    return result
  }

  private async translateSingle(name: string): Promise<string | null> {
    try {
      const result = await this.translateBatch([name])
      return result[name] ?? null
    } catch (err) {
      process.stderr.write(`[Translate] Single retry failed for "${name}": ${err}\n`)
      return null
    }
  }

  /** Translate a list of English food names to Hebrew, using cache where available */
  async translateAll(names: string[]): Promise<Record<string, string>> {
    const uncached = names.filter(n => !this.cache[n])

    if (uncached.length === 0) {
      process.stderr.write('[Translate] All names found in cache\n')
    } else if (this.skipTranslate) {
      process.stderr.write(`[Translate] --skip-translate: skipping ${uncached.length} untranslated names\n`)
      // Fill missing with English name as fallback
      for (const name of uncached) {
        this.cache[name] = name
      }
    } else {
      process.stderr.write(`[Translate] Translating ${uncached.length} names in batches of ${BATCH_SIZE}...\n`)

      for (let i = 0; i < uncached.length; i += BATCH_SIZE) {
        const batch = uncached.slice(i, i + BATCH_SIZE)
        const batchNum = Math.floor(i / BATCH_SIZE) + 1
        const totalBatches = Math.ceil(uncached.length / BATCH_SIZE)
        process.stderr.write(`[Translate] Batch ${batchNum}/${totalBatches} (${batch.length} names)...\n`)

        try {
          const translated = await this.translateBatch(batch)
          Object.assign(this.cache, translated)
          this.saveCache()
        } catch (batchErr) {
          process.stderr.write(`[Translate] Batch ${batchNum} failed (${batchErr}), retrying items individually...\n`)

          for (const name of batch) {
            const hebrew = await this.translateSingle(name)
            this.cache[name] = hebrew ?? name // fallback to English if all fails
          }
          this.saveCache()
        }

        // Small delay between batches to be polite to the API
        if (i + BATCH_SIZE < uncached.length) {
          await new Promise(resolve => setTimeout(resolve, 300))
        }
      }
    }

    // Return the requested subset from cache
    const result: Record<string, string> = {}
    for (const name of names) {
      result[name] = this.cache[name] ?? name
    }
    return result
  }

  getFromCache(name: string): string | undefined {
    return this.cache[name]
  }
}
