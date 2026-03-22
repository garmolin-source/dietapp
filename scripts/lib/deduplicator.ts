import { readFileSync } from 'fs'
import { resolve } from 'path'

export class Deduplicator {
  private existingNames: Set<string>

  constructor(seedSqlPath: string) {
    this.existingNames = new Set()
    this.loadFromSeed(seedSqlPath)
  }

  private loadFromSeed(filePath: string): void {
    let content: string
    try {
      content = readFileSync(resolve(filePath), 'utf-8')
    } catch {
      process.stderr.write(`[Dedup] Could not read seed file: ${filePath}\n`)
      return
    }

    // Match: ('uuid', 'Hebrew name', 'English Name', 'category', ...)
    // Captures name_en as the 3rd quoted value after a UUID
    const lineRegex = /\('[0-9a-f-]{36}',\s*'[^']*',\s*'([^']*)'/gi
    let match: RegExpExecArray | null
    while ((match = lineRegex.exec(content)) !== null) {
      const nameEn = match[1].trim()
      if (nameEn) {
        this.existingNames.add(nameEn.toLowerCase())
      }
    }

    process.stderr.write(`[Dedup] Loaded ${this.existingNames.size} existing names from seed\n`)
  }

  isDuplicate(nameEn: string): boolean {
    return this.existingNames.has(nameEn.toLowerCase())
  }

  addName(nameEn: string): void {
    this.existingNames.add(nameEn.toLowerCase())
  }

  get size(): number {
    return this.existingNames.size
  }
}
