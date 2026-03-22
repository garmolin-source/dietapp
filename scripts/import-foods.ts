#!/usr/bin/env node
/**
 * Diet Angel Food Database Expansion Pipeline
 *
 * Usage:
 *   npx tsx scripts/import-foods.ts
 *   npx tsx scripts/import-foods.ts --categories=protein,dairy
 *   npx tsx scripts/import-foods.ts --skip-translate
 *   npx tsx scripts/import-foods.ts --dry-run
 *
 * Prerequisites:
 *   export USDA_API_KEY=<from fdc.nal.usda.gov>
 *   export ANTHROPIC_API_KEY=<your key>
 */

import { writeFileSync, mkdirSync } from 'fs'
import { resolve, dirname } from 'path'
import { fileURLToPath } from 'url'

import { fetchAllCategories, type CategoryTarget } from './lib/usda-client.js'
import { mapStars, getCategoryFromHint } from './lib/star-mapper.js'
import { generatePortions } from './lib/portion-generator.js'
import { Translator } from './lib/translator.js'
import { Deduplicator } from './lib/deduplicator.js'
import { emitSQL } from './lib/sql-emitter.js'
import type { FoodRecord, NormalizedUsdaFood, IsraeliFood } from './lib/types.js'

import israeliBrandsData from './data/israeli-brands.json' assert { type: 'json' }

const __dirname = dirname(fileURLToPath(import.meta.url))

// ─── CLI ARGS ────────────────────────────────────────────────────────────────

const args = process.argv.slice(2)
const options = {
  categories: [] as string[],
  skipTranslate: false,
  dryRun: false,
}

for (const arg of args) {
  if (arg.startsWith('--categories=')) {
    options.categories = arg.replace('--categories=', '').split(',').map(s => s.trim())
  } else if (arg === '--skip-translate') {
    options.skipTranslate = true
  } else if (arg === '--dry-run') {
    options.dryRun = true
  } else if (arg === '--help' || arg === '-h') {
    console.log(`
Diet Angel Food Import Pipeline
================================
Usage: npx tsx scripts/import-foods.ts [options]

Options:
  --categories=cat1,cat2   Run only these USDA categories (e.g. protein,dairy,vegetable)
  --skip-translate         Use translation cache only (skip Claude API calls)
  --dry-run                Print SQL to stdout instead of writing to file
  --help                   Show this help

Environment variables required:
  USDA_API_KEY             From fdc.nal.usda.gov (free)
  ANTHROPIC_API_KEY        Your Anthropic API key (for translation)

Valid category names: vegetable, fruit, dairy, protein, carb, fat, beverage, snack
`)
    process.exit(0)
  }
}

// ─── USDA SEARCH TARGETS ─────────────────────────────────────────────────────

interface SearchTarget {
  usdaCategory: string
  searchQuery: string       // keyword(s) for GET /foods/search
  dietappCategory: string
  targetCount: number
}

// Search queries are keywords likely to appear in food descriptions within each USDA category.
// Results are then filtered client-side to only keep foods matching the exact usdaCategory.
const ALL_SEARCH_TARGETS: SearchTarget[] = [
  { usdaCategory: 'Vegetables and Vegetable Products', searchQuery: 'vegetable raw fresh',    dietappCategory: 'vegetable', targetCount: 150 },
  { usdaCategory: 'Fruits and Fruit Juices',           searchQuery: 'fruit fresh raw',        dietappCategory: 'fruit',     targetCount: 120 },
  { usdaCategory: 'Cereal Grains and Pasta',           searchQuery: 'grain rice pasta flour', dietappCategory: 'carb',      targetCount: 100 },
  { usdaCategory: 'Baked Products',                    searchQuery: 'bread cake cookie baked',dietappCategory: 'carb',      targetCount: 80  },
  { usdaCategory: 'Breakfast Cereals',                 searchQuery: 'cereal breakfast oat',   dietappCategory: 'carb',      targetCount: 40  },
  { usdaCategory: 'Beef Products',                     searchQuery: 'beef raw',               dietappCategory: 'protein',   targetCount: 100 },
  { usdaCategory: 'Poultry Products',                  searchQuery: 'chicken turkey poultry', dietappCategory: 'protein',   targetCount: 100 },
  { usdaCategory: 'Finfish and Shellfish Products',    searchQuery: 'fish salmon tuna',       dietappCategory: 'protein',   targetCount: 100 },
  { usdaCategory: 'Pork Products',                     searchQuery: 'pork ham bacon',         dietappCategory: 'protein',   targetCount: 50  },
  { usdaCategory: 'Lamb, Veal, and Game Products',     searchQuery: 'lamb veal game venison', dietappCategory: 'protein',   targetCount: 50  },
  { usdaCategory: 'Legumes and Legume Products',       searchQuery: 'bean lentil chickpea legume', dietappCategory: 'protein', targetCount: 60 },
  { usdaCategory: 'Dairy and Egg Products',            searchQuery: 'milk cheese egg yogurt', dietappCategory: 'dairy',     targetCount: 150 },
  { usdaCategory: 'Nut and Seed Products',             searchQuery: 'nut seed almond walnut', dietappCategory: 'fat',       targetCount: 80  },
  { usdaCategory: 'Fats and Oils',                     searchQuery: 'oil butter fat margarine',dietappCategory: 'fat',      targetCount: 50  },
  { usdaCategory: 'Beverages',                         searchQuery: 'juice drink water tea',  dietappCategory: 'beverage',  targetCount: 50  },
  { usdaCategory: 'Snacks',                            searchQuery: 'chip snack popcorn cracker', dietappCategory: 'snack', targetCount: 80  },
  { usdaCategory: 'Sugars and Sweets',                 searchQuery: 'sugar candy chocolate sweet', dietappCategory: 'snack', targetCount: 50 },
  { usdaCategory: 'Spices and Herbs',                  searchQuery: 'spice herb pepper dried',dietappCategory: 'vegetable', targetCount: 30  },
  { usdaCategory: 'Soups, Sauces, and Gravies',        searchQuery: 'soup sauce gravy broth', dietappCategory: 'snack',     targetCount: 30  },
]

// ─── HELPERS ─────────────────────────────────────────────────────────────────

function cleanDescription(desc: string): string {
  // Normalize whitespace and trim
  return desc.replace(/\s+/g, ' ').trim()
}

function usdaFoodToRecord(
  food: NormalizedUsdaFood,
  nameHe: string
): { record: FoodRecord; outOfRange: boolean } {
  const mapping = mapStars(food.nutrition, food.usdaCategory, food.description)
  const category = getCategoryFromHint(food.usdaCategory)
  const { portions, outOfRange } = generatePortions(mapping)

  const record: FoodRecord = {
    nameEn: food.description,
    nameHe,
    category,
    starType: mapping.starType,
    source: 'ai_agent',
    needsReview: mapping.needsReview || outOfRange,
    portions,
  }
  return { record, outOfRange }
}

function israeliFoodToRecord(brand: IsraeliFood): FoodRecord {
  return {
    nameEn: brand.name_en,
    nameHe: brand.name_he,
    category: brand.category,
    starType: brand.star_type,
    source: 'manual',
    needsReview: false,
    portions: brand.portions.map(p => ({
      labelEn: p.label_en,
      labelHe: p.label_he,
      grams: p.grams,
      yellowStars: p.yellow_stars,
      redStars: p.red_stars,
      isDefault: p.is_default,
      sortOrder: p.sort_order,
    })),
  }
}

// ─── MAIN ────────────────────────────────────────────────────────────────────

async function main(): Promise<void> {
  process.stderr.write('=== Diet Angel Food Import Pipeline ===\n')
  process.stderr.write(`Options: ${JSON.stringify(options)}\n\n`)

  // Validate environment
  const usdaApiKey = process.env.USDA_API_KEY
  if (!usdaApiKey) {
    process.stderr.write('[ERROR] USDA_API_KEY environment variable is not set.\n')
    process.stderr.write('Get a free API key at: https://fdc.nal.usda.gov/api-key-signup.html\n')
    process.exit(1)
  }

  if (!process.env.ANTHROPIC_API_KEY && !options.skipTranslate) {
    process.stderr.write('[WARN] ANTHROPIC_API_KEY not set. Translation will use cache only.\n')
    options.skipTranslate = true
  }

  // Set up paths
  const seedSqlPath = resolve(__dirname, '..', 'supabase', 'seed.sql')
  const outputDir = resolve(__dirname, 'output')
  const outputPath = resolve(outputDir, '007_expanded_foods.sql')
  const cachePath = resolve(outputDir, 'translations-cache.json')

  mkdirSync(outputDir, { recursive: true })

  // Step 1: Load deduplicator
  process.stderr.write('\n[Step 1] Loading existing foods from seed.sql...\n')
  const dedup = new Deduplicator(seedSqlPath)

  // Step 2: Determine which USDA targets to fetch
  let targets = ALL_SEARCH_TARGETS
  if (options.categories.length > 0) {
    targets = ALL_SEARCH_TARGETS.filter(t =>
      options.categories.includes(t.dietappCategory)
    )
    process.stderr.write(`[Step 2] Running subset: ${options.categories.join(', ')} (${targets.length} USDA categories)\n`)
  }

  // Step 3: Fetch USDA foods
  process.stderr.write('\n[Step 3] Fetching USDA foods...\n')
  const usdaFetchTargets: CategoryTarget[] = targets.map(t => ({
    usdaCategory: t.usdaCategory,
    searchQuery: t.searchQuery,
    targetCount: t.targetCount,
  }))

  const usdaFoods = await fetchAllCategories(usdaFetchTargets, usdaApiKey)
  process.stderr.write(`[Step 3] Total USDA foods fetched: ${usdaFoods.length}\n`)

  // Step 4: Deduplicate
  process.stderr.write('\n[Step 4] Deduplicating...\n')
  const uniqueUsdaFoods: NormalizedUsdaFood[] = []
  let skippedCount = 0
  const seenInBatch = new Set<string>()

  for (const food of usdaFoods) {
    const nameEn = cleanDescription(food.description)
    const key = nameEn.toLowerCase()
    if (dedup.isDuplicate(nameEn) || seenInBatch.has(key)) {
      skippedCount++
      continue
    }
    seenInBatch.add(key)
    uniqueUsdaFoods.push({ ...food, description: nameEn })
    dedup.addName(nameEn)
  }
  process.stderr.write(`[Step 4] Kept: ${uniqueUsdaFoods.length}, Skipped duplicates: ${skippedCount}\n`)

  // Step 5: Translate USDA food names EN→HE
  process.stderr.write('\n[Step 5] Translating food names...\n')
  const translator = new Translator(cachePath, options.skipTranslate)
  const englishNames = uniqueUsdaFoods.map(f => f.description)
  const translations = await translator.translateAll(englishNames)

  // Step 6: Build USDA FoodRecord list
  process.stderr.write('\n[Step 6] Mapping stars and generating portions...\n')
  const usdaRecords: FoodRecord[] = []
  let reviewCount = 0
  let outOfRangeCount = 0

  for (const food of uniqueUsdaFoods) {
    const nameHe = translations[food.description] ?? food.description
    const { record, outOfRange } = usdaFoodToRecord(food, nameHe)
    if (record.needsReview) reviewCount++
    if (outOfRange) outOfRangeCount++
    usdaRecords.push(record)
  }

  process.stderr.write(`[Step 6] USDA records: ${usdaRecords.length}, needs_review: ${reviewCount}, out-of-range portions: ${outOfRangeCount}\n`)

  // Step 7: Load Israeli brands
  process.stderr.write('\n[Step 7] Processing Israeli brands...\n')
  const israeliBrands = israeliBrandsData as IsraeliFood[]
  const israeliRecords: FoodRecord[] = []

  for (const brand of israeliBrands) {
    if (dedup.isDuplicate(brand.name_en)) {
      process.stderr.write(`[Step 7] Skipping duplicate Israeli brand: ${brand.name_en}\n`)
      continue
    }
    dedup.addName(brand.name_en)
    israeliRecords.push(israeliFoodToRecord(brand))
  }

  process.stderr.write(`[Step 7] Israeli brands included: ${israeliRecords.length}\n`)

  // Step 8: Emit SQL
  process.stderr.write('\n[Step 8] Generating SQL...\n')
  const allFoods = [...usdaRecords, ...israeliRecords]
  const totalReviewCount = allFoods.filter(f => f.needsReview).length

  const sql = emitSQL(allFoods, {
    generatedAt: new Date().toISOString().split('T')[0],
    usdaCount: usdaRecords.length,
    israeliCount: israeliRecords.length,
    reviewCount: totalReviewCount,
  })

  // Step 9: Output
  if (options.dryRun) {
    process.stdout.write(sql)
    process.stderr.write('\n[DRY RUN] SQL printed to stdout.\n')
  } else {
    writeFileSync(outputPath, sql, 'utf-8')
    process.stderr.write(`\n[Step 9] SQL written to: ${outputPath}\n`)
  }

  // Summary
  process.stderr.write('\n=== Summary ===\n')
  process.stderr.write(`USDA foods:       ${usdaRecords.length}\n`)
  process.stderr.write(`Israeli brands:   ${israeliRecords.length}\n`)
  process.stderr.write(`Total foods:      ${allFoods.length}\n`)
  process.stderr.write(`Needs review:     ${totalReviewCount}\n`)
  process.stderr.write(`\nNext steps:\n`)
  process.stderr.write(`  1. Review ${options.dryRun ? 'stdout' : outputPath}\n`)
  process.stderr.write(`  2. cp ${outputPath} supabase/migrations/007_expanded_foods.sql\n`)
  process.stderr.write(`  3. supabase db push\n`)
}

main().catch(err => {
  process.stderr.write(`[FATAL] ${err}\n`)
  process.exit(1)
})
