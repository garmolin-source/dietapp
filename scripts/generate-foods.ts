#!/usr/bin/env node
/**
 * Diet Angel Curated Food Database Generator
 *
 * Generates a high-quality, Diet-Angel-accurate food database using Claude.
 * Replaces the USDA-sourced data with curated, Israel-relevant foods.
 *
 * Usage:
 *   npx tsx scripts/generate-foods.ts
 *   npx tsx scripts/generate-foods.ts --category=fruits
 *   npx tsx scripts/generate-foods.ts --dry-run
 *
 * Prerequisites:
 *   export ANTHROPIC_API_KEY=<your key>
 */

import { writeFileSync, readFileSync, existsSync, mkdirSync } from 'fs'
import { resolve, dirname } from 'path'
import { fileURLToPath } from 'url'
import Anthropic from '@anthropic-ai/sdk'
import { emitSQL } from './lib/sql-emitter.js'
import type { FoodRecord, PortionRecord } from './lib/types.js'
import israeliBrandsData from './data/israeli-brands.json' assert { type: 'json' }

const __dirname = dirname(fileURLToPath(import.meta.url))

// ─── CLI ARGS ────────────────────────────────────────────────────────────────

const args = process.argv.slice(2)
const options = {
  category: '',
  dryRun: false,
}
for (const arg of args) {
  if (arg.startsWith('--category=')) options.category = arg.replace('--category=', '')
  else if (arg === '--dry-run') options.dryRun = true
}

// ─── STAR SYSTEM RULES FOR CLAUDE ────────────────────────────────────────────

const STAR_SYSTEM_PROMPT = `You are an expert on the Israeli "Diet Angel" (מלאך הדיאטה) weight-loss system.

STAR SYSTEM RULES — follow exactly:

FREE FOODS (star_type: "free", 0 stars):
- ALL non-starchy vegetables: lettuce, cucumber, tomato, pepper, zucchini, broccoli, cauliflower, spinach, mushrooms, eggplant, onion, garlic, cabbage, celery, radish, green beans, asparagus, artichoke, fennel, leek, parsley, cilantro, dill, etc.
- Herbs and spices
- Water, black coffee, herbal tea, diet soda

YELLOW STARS (star_type: "yellow") — proteins, fruits, healthy fats:
- ALL fruits: regardless of sugar content. Banana, mango, grapes, dates = still yellow.
- Meat & poultry: 2 yellow stars per 150g serving. Scale linearly.
- Fish & seafood: 2 yellow stars per 150g serving.
- Eggs: 1 yellow star per egg (50g).
- Dairy: cheese, yogurt, cottage, labaneh, milk — scale by ~100 kcal = 1 yellow star.
- Legumes (cooked): lentils, chickpeas, beans, edamame — ~1.5 yellow per cup cooked (180g).
- Nuts & seeds: ~1 yellow per handful (30g).
- Avocado: 1 yellow per half (~75g).
- Olive oil, tahini, nut butters: 1 yellow per tablespoon (15g).

RED STARS (star_type: "red") — carbohydrates:
- Bread, pita, crackers, rice cakes: 1 red per slice/unit (~30g).
- Rice, pasta, couscous, bulgur (cooked): 2 red per cup (200g).
- Oats (dry): 1 red per 3 tbsp (25g).
- Potato, sweet potato: 1.5 red per medium (150g).
- Corn: 1 red per ear or 0.5 cup.
- Breakfast cereals: 1 red per portion (~40g).

KEY REFERENCE POINTS from the official Diet Angel PDF:
- Pita 1/3 = 1 red star (22g)
- Egg 1 whole = 1 yellow star
- Chicken breast 150g = 2 yellow stars
- 3% milk 3/4 cup (180ml) = 1 yellow star
- Rolled oats 3 tbsp dry = 1 red star

PORTIONS: Use realistic Israeli serving sizes with Hebrew labels.
Label examples: "ביצה אחת (50 גרם)", "מנה (150 גרם)", "פרוסה (~30 גרם)", "כוס (~240 מ\"ל)", "1 בינוני (~150 גרם)", "כף (~15 גרם)", "חופן (~30 גרם)"

Provide 2-3 portions per food. One must be is_default: true.
Stars must scale linearly with grams. Zero stars for free foods.`

// ─── GENERATION TARGETS ──────────────────────────────────────────────────────

interface CategorySpec {
  key: string
  label: string
  count: number
  prompt: string
}

const CATEGORIES: CategorySpec[] = [
  {
    key: 'vegetables',
    label: 'Vegetables',
    count: 30,
    prompt: `Generate ${30} common FREE vegetables found in Israeli supermarkets/markets.
Include: leafy greens, salad vegetables, cooking vegetables, root vegetables (NOT potato/sweet potato/corn — those are red).
All must be star_type "free" with 0 stars.
Include common Israeli staples: cucumber (מלפפון), tomato (עגבנייה), pepper (פלפל), zucchini (קישוא), eggplant (חציל), lettuce (חסה), spinach (תרד), parsley (פטרוזיליה), cabbage (כרוב), mushrooms (פטריות), carrot (גזר), beet (סלק), etc.
Portions: 1 cup raw (~80g) as default, 1 cup cooked (~150g), 100g.`,
  },
  {
    key: 'fruits',
    label: 'Fruits',
    count: 30,
    prompt: `Generate ${30} common fruits found in Israeli supermarkets.
ALL fruits are YELLOW stars regardless of sugar content.
Star amount: ~1 yellow star per medium fruit (150g), scale by calories.
Include Israeli staples: apple (תפוח), banana (בננה), orange (תפוז), clementine (קלמנטינה), mango (מנגו), watermelon (אבטיח), melon (מלון), grapes (ענבים), strawberry (תות), pomegranate (רימון), date (תמר), fig (תאנה), peach (אפרסק), plum (שזיף), pear (אגס), kiwi, pineapple, lemon, grapefruit, avocado, etc.
Avocado: 1 yellow per half (75g).
Dates: 1 yellow per 2 dates (30g) — very high sugar but still yellow.
Portions: 1 medium (~150g) as default, 1 cup (~150g), 100g.`,
  },
  {
    key: 'proteins_meat',
    label: 'Meat & Poultry',
    count: 25,
    prompt: `Generate ${25} common meat and poultry items.
YELLOW stars. 2 yellow stars per 150g serving (standard Diet Angel).
Scale: 100g = ~1.5 yellow, 50g = ~0.5-1 yellow.
Include: chicken breast (חזה עוף), chicken thigh (שוק עוף), turkey breast (חזה הודו), ground beef (בשר טחון), beef steak (סטייק בקר), lamb chop (צלעות כבש), veal (עגל), chicken liver (כבד עוף), shawarma, schnitzel (prepared).
Portions: 1 serving (150g) default, 100g, 50g.`,
  },
  {
    key: 'proteins_fish',
    label: 'Fish & Seafood',
    count: 20,
    prompt: `Generate ${20} common fish and seafood items popular in Israel.
YELLOW stars. 2 yellow stars per 150g serving.
Include: salmon (סלמון), tuna (טונה), tilapia (אמנון), sea bass (לברק), red mullet (בורי), sardines (סרדינים), shrimp (שרימפס), cod, trout, herring, mackerel, tuna canned, salmon canned.
Portions: 1 fillet (150g) default, 100g, 50g.`,
  },
  {
    key: 'proteins_eggs_legumes',
    label: 'Eggs & Legumes',
    count: 20,
    prompt: `Generate ${20} egg and legume items.
YELLOW stars.
Eggs: 1 yellow star per egg. Include whole egg, egg white, hard boiled, scrambled, omelette.
Legumes (cooked): ~1.5-2 yellow per cup cooked (180g). Include lentils (עדשים), chickpeas (חומוס/גרגרי חומוס), black beans, kidney beans, edamame, hummus spread (כף = 0.5 yellow).
Portions: eggs — 1 egg (50g) default, 2 eggs (100g). Legumes — 1 cup cooked (180g) default, 100g cooked, 3 tbsp dry (30g).`,
  },
  {
    key: 'dairy',
    label: 'Dairy',
    count: 30,
    prompt: `Generate ${30} Israeli dairy products.
YELLOW stars. Scale ~100 kcal = 1 yellow star.
Include Israeli brands generically: Bulgarian cheese 5% (גבינה בולגרית), cottage cheese (קוטג׳), labaneh (לבנה), yellow cheese (גבינה צהובה), mozzarella, feta, hard cheese (גבינה קשה), yogurt 3% (יוגורט), milk 3% (חלב), sour cream (שמנת חמוצה), cream cheese (גבינת שמנת), butter (חמאה), ricotta.
Portions: dairy — 100g default, half cup (120g), tablespoon (15g) for spreads. Milk — 1 cup (240ml) default, 100ml.`,
  },
  {
    key: 'carbs_grains',
    label: 'Grains, Bread & Pasta',
    count: 30,
    prompt: `Generate ${30} carbohydrate foods (grains, bread, pasta, rice).
RED stars. Scale: ~20g net carbs = 1 red star.
Include: white bread (לחם לבן), whole wheat bread (לחם מלא), pita (פיתה), sourdough (לחם מחמצת), rice (אורז), pasta (פסטה), couscous (קוסקוס), bulgur (בורגול), quinoa (קינואה), oats (שיבולת שועל), crackers (קרקרים), rice cakes (אורז תפוח), breadsticks, bagel, ciabatta.
Key amounts: pita 1/3 (22g) = 1 red star. Bread slice (30g) = 1 red. Pasta/rice cooked cup (200g) = 2 red. Oats 3 tbsp dry (25g) = 1 red.
Portions: bread — 1 slice (30g) default. Pasta/rice — 1 cup cooked (200g) default, 3 tbsp dry (30g). Oats — 3 tbsp dry (25g) default.`,
  },
  {
    key: 'carbs_starchy',
    label: 'Starchy Vegetables',
    count: 12,
    prompt: `Generate ${12} starchy vegetables (RED stars — carbs group in Diet Angel).
Include: potato (תפוח אדמה), sweet potato (בטטה), corn (תירס), cassava, taro.
RED stars. Potato/sweet potato: 1.5 red per medium (150g). Corn: 1 red per half cup.
Portions: 1 medium (150g) default for potato/sweet potato, 100g. Corn — half cup (80g) default.`,
  },
  {
    key: 'fats',
    label: 'Fats, Nuts & Seeds',
    count: 20,
    prompt: `Generate ${20} healthy fats, nuts, seeds, and oils.
YELLOW stars. ~1 yellow per tablespoon oil/tahini, ~1 yellow per handful nuts (30g).
Include: olive oil (שמן זית), tahini (טחינה), almond butter (חמאת שקדים), avocado (see fruits), almonds (שקדים), walnuts (אגוזים), cashews (קשיו), pistachios (פיסטוקים), sunflower seeds (גרעיני חמנייה), pumpkin seeds (גרעיני דלעת), sesame (שומשום), chia seeds, flaxseeds, peanuts (בוטנים), peanut butter (חמאת בוטנים), coconut oil.
Portions: oils/spreads — 1 tbsp (15g) default, 1 tsp (5g), 100g. Nuts — 1 handful (30g) default, 1 tbsp (15g), 100g.`,
  },
  {
    key: 'beverages',
    label: 'Beverages',
    count: 20,
    prompt: `Generate ${20} common beverages.
Most are FREE (water, black coffee, herbal tea, diet drinks).
YELLOW: milk, juice (orange juice 1 yellow per cup), smoothies.
RED: sweet fruit juice concentrated, sugary drinks.
Include: water (מים) free, coffee (קפה) free, tea (תה) free, milk 3%, orange juice (מיץ תפוזים), apple juice, pomegranate juice, soy milk, oat milk, coconut water, lemonade.
Portions: 1 cup (240ml) default, 100ml.`,
  },
  {
    key: 'snacks_sweets',
    label: 'Snacks & Sweets',
    count: 20,
    prompt: `Generate ${20} Israeli snack and sweet items.
Mix of RED (chips, crackers, chocolate, cookies) and YELLOW (dark chocolate, halva).
RED snacks: chips (חטיף תפו"א), pretzels (בייגלה), crackers, rice cakes, bamba, biscuits.
YELLOW snacks: dark chocolate (שוקולד מריר) 1 yellow per 25g, halva (חלווה) 1 yellow per 30g.
Chips/crackers: ~1 red per 25-30g portion.
Portions: 1 portion (~25-30g) default, 100g.`,
  },
]

// ─── TYPES ───────────────────────────────────────────────────────────────────

interface GeneratedPortion {
  label_he: string
  label_en: string
  grams: number
  yellow_stars: number
  red_stars: number
  is_default: boolean
  sort_order: number
}

interface GeneratedFood {
  name_he: string
  name_en: string
  category: string
  star_type: 'free' | 'yellow' | 'red'
  portions: GeneratedPortion[]
}

// ─── GENERATION ──────────────────────────────────────────────────────────────

async function generateCategory(
  client: Anthropic,
  spec: CategorySpec,
  existingNames: Set<string>
): Promise<FoodRecord[]> {
  process.stderr.write(`\n[Generate] "${spec.label}" (target: ${spec.count})...\n`)

  const userPrompt = `${spec.prompt}

Return a JSON array of food objects. Each object:
{
  "name_he": "שם בעברית",
  "name_en": "English Name",
  "category": "vegetable"|"fruit"|"protein"|"dairy"|"carb"|"fat"|"beverage"|"snack",
  "star_type": "free"|"yellow"|"red",
  "portions": [
    {
      "label_he": "תווית בעברית",
      "label_en": "English label",
      "grams": 100,
      "yellow_stars": 1.0,
      "red_stars": 0,
      "is_default": true,
      "sort_order": 1
    }
  ]
}

Rules:
- Exactly ${spec.count} foods
- Only one portion has is_default: true per food
- sort_order starts at 1
- For free foods: all stars = 0
- For yellow foods: yellow_stars > 0, red_stars = 0
- For red foods: red_stars > 0, yellow_stars = 0
- Stars must be multiples of 0.5
- Use authentic Israeli Hebrew names as they appear on product labels
- Return ONLY the JSON array, no markdown, no explanation`

  const response = await client.messages.create({
    model: 'claude-opus-4-6',
    max_tokens: 16000,
    system: STAR_SYSTEM_PROMPT,
    messages: [{ role: 'user', content: userPrompt }],
  })

  const textBlock = response.content.find(b => b.type === 'text')
  if (!textBlock || textBlock.type !== 'text') throw new Error('No text in response')

  const text = textBlock.text.trim()
  const jsonMatch = text.match(/\[[\s\S]*\]/)
  if (!jsonMatch) throw new Error(`No JSON array in response: ${text.slice(0, 200)}`)

  let generated: GeneratedFood[]
  try {
    generated = JSON.parse(jsonMatch[0]) as GeneratedFood[]
  } catch (parseErr) {
    const raw = jsonMatch[0]
    // Find approximate error position
    const errMsg = String(parseErr)
    const posMatch = errMsg.match(/position (\d+)/)
    const pos = posMatch ? parseInt(posMatch[1]) : raw.length - 200
    process.stderr.write(`[Generate] JSON parse error near position ${pos}:\n`)
    process.stderr.write(`...${raw.slice(Math.max(0, pos - 100), pos + 100)}...\n`)
    process.stderr.write(`[Generate] Response stop_reason: ${response.stop_reason}\n`)
    throw parseErr
  }
  process.stderr.write(`[Generate] Got ${generated.length} foods from Claude\n`)

  const records: FoodRecord[] = []
  let skipped = 0

  for (const food of generated) {
    const nameKey = food.name_en.toLowerCase().trim()
    if (existingNames.has(nameKey)) {
      skipped++
      continue
    }
    existingNames.add(nameKey)

    const portions: PortionRecord[] = food.portions.map(p => ({
      labelHe: p.label_he,
      labelEn: p.label_en,
      grams: p.grams,
      yellowStars: p.yellow_stars,
      redStars: p.red_stars,
      isDefault: p.is_default,
      sortOrder: p.sort_order,
    }))

    records.push({
      nameHe: food.name_he,
      nameEn: food.name_en,
      category: food.category as any,
      starType: food.star_type,
      source: 'ai_agent',
      needsReview: false,
      portions,
    })
  }

  if (skipped > 0) process.stderr.write(`[Generate] Skipped ${skipped} duplicates\n`)
  process.stderr.write(`[Generate] Kept: ${records.length}\n`)
  return records
}

// ─── MAIN ────────────────────────────────────────────────────────────────────

async function main() {
  const apiKey = process.env.ANTHROPIC_API_KEY
  if (!apiKey) {
    process.stderr.write('[ERROR] ANTHROPIC_API_KEY not set\n')
    process.exit(1)
  }

  const client = new Anthropic({ apiKey })
  const outputDir = resolve(__dirname, 'output')
  mkdirSync(outputDir, { recursive: true })

  const cachePath = resolve(outputDir, 'generated-foods-cache.json')
  const outputPath = resolve(outputDir, '008_curated_foods.sql')

  // Load or init cache
  let cache: Record<string, GeneratedFood[]> = {}
  if (existsSync(cachePath)) {
    try {
      cache = JSON.parse(readFileSync(cachePath, 'utf-8'))
      process.stderr.write(`[Cache] Loaded ${Object.keys(cache).length} cached categories\n`)
    } catch {
      cache = {}
    }
  }

  const existingNames = new Set<string>()

  // Filter categories if --category= specified
  const targets = options.category
    ? CATEGORIES.filter(c => c.key === options.category)
    : CATEGORIES

  if (targets.length === 0) {
    process.stderr.write(`[ERROR] Unknown category: ${options.category}\n`)
    process.exit(1)
  }

  const allGeneratedRecords: FoodRecord[] = []

  for (const spec of targets) {
    let records: FoodRecord[]

    if (cache[spec.key]) {
      process.stderr.write(`[Cache] Using cached "${spec.label}" (${cache[spec.key].length} foods)\n`)
      // Convert cached GeneratedFood[] back to FoodRecord[]
      records = cache[spec.key].map((food: GeneratedFood) => ({
        nameHe: food.name_he,
        nameEn: food.name_en,
        category: food.category as any,
        starType: food.star_type,
        source: 'ai_agent' as const,
        needsReview: false,
        portions: food.portions.map(p => ({
          labelHe: p.label_he,
          labelEn: p.label_en,
          grams: p.grams,
          yellowStars: p.yellow_stars,
          redStars: p.red_stars,
          isDefault: p.is_default,
          sortOrder: p.sort_order,
        })),
      }))
      // Add names to dedup set
      for (const r of records) existingNames.add(r.nameEn.toLowerCase().trim())
    } else {
      records = await generateCategory(client, spec, existingNames)
      // Save to cache
      cache[spec.key] = records.map(r => ({
        name_he: r.nameHe,
        name_en: r.nameEn,
        category: r.category,
        star_type: r.starType,
        portions: r.portions.map(p => ({
          label_he: p.labelHe,
          label_en: p.labelEn,
          grams: p.grams,
          yellow_stars: p.yellowStars,
          red_stars: p.redStars,
          is_default: p.isDefault,
          sort_order: p.sortOrder,
        })),
      }))
      writeFileSync(cachePath, JSON.stringify(cache, null, 2), 'utf-8')
      process.stderr.write(`[Cache] Saved "${spec.label}" to cache\n`)
      // Throttle between categories
      await new Promise(r => setTimeout(r, 1000))
    }

    allGeneratedRecords.push(...records)
  }

  // Add Israeli brands (dedup against generated)
  process.stderr.write('\n[Brands] Adding Israeli brands...\n')
  const israeliRecords: FoodRecord[] = []
  for (const brand of israeliBrandsData as any[]) {
    const key = brand.name_en.toLowerCase().trim()
    if (existingNames.has(key)) continue
    existingNames.add(key)
    israeliRecords.push({
      nameHe: brand.name_he,
      nameEn: brand.name_en,
      category: brand.category,
      starType: brand.star_type,
      source: 'manual',
      needsReview: false,
      portions: brand.portions.map((p: any) => ({
        labelHe: p.label_he,
        labelEn: p.label_en,
        grams: p.grams,
        yellowStars: p.yellow_stars,
        redStars: p.red_stars,
        isDefault: p.is_default,
        sortOrder: p.sort_order,
      })),
    })
  }
  process.stderr.write(`[Brands] Added ${israeliRecords.length} Israeli brands\n`)

  const allFoods = [...allGeneratedRecords, ...israeliRecords]
  const reviewCount = allFoods.filter(f => f.needsReview).length

  process.stderr.write(`\n=== Summary ===\n`)
  process.stderr.write(`Generated foods:  ${allGeneratedRecords.length}\n`)
  process.stderr.write(`Israeli brands:   ${israeliRecords.length}\n`)
  process.stderr.write(`Total:            ${allFoods.length}\n`)
  process.stderr.write(`Needs review:     ${reviewCount}\n`)

  const sql = emitSQL(allFoods, {
    generatedAt: new Date().toISOString().split('T')[0],
    usdaCount: allGeneratedRecords.length,
    israeliCount: israeliRecords.length,
    reviewCount,
  })

  if (options.dryRun) {
    process.stdout.write(sql)
    process.stderr.write('\n[DRY RUN] SQL printed to stdout\n')
  } else {
    writeFileSync(outputPath, sql, 'utf-8')
    process.stderr.write(`\nSQL written to: ${outputPath}\n`)
    process.stderr.write(`\nNext steps:\n`)
    process.stderr.write(`  1. Review ${outputPath}\n`)
    process.stderr.write(`  2. Create migration: cp ${outputPath} supabase/migrations/008_curated_foods.sql\n`)
    process.stderr.write(`  3. supabase db push\n`)
  }
}

main().catch(err => {
  process.stderr.write(`[FATAL] ${err}\n`)
  process.exit(1)
})
