import type { NormalizedUsdaFood, NutritionPer100g } from './types.js'

const USDA_BASE_URL = 'https://api.nal.usda.gov/fdc/v1'
const THROTTLE_MS = 250
const PAGE_SIZE = 200
const MAX_PAGES = 5   // Max pages to paginate per category before giving up

interface UsdaNutrient {
  nutrientId: number
  nutrientName: string
  unitName: string
  value: number
}

interface UsdaFoodRaw {
  fdcId: number
  description: string
  dataType: string
  foodCategory: string
  foodNutrients: UsdaNutrient[]
}

interface SearchResponse {
  totalHits: number
  currentPage: number
  totalPages: number
  foods: UsdaFoodRaw[]
}

const NUTRIENT_IDS = {
  calories: 1008,
  protein: 1003,
  fat: 1004,
  carbs: 1005,
  fiber: 1079,
} as const

function sleep(ms: number): Promise<void> {
  return new Promise(resolve => setTimeout(resolve, ms))
}

function extractNutrient(nutrients: UsdaNutrient[], id: number): number {
  const n = nutrients.find(n => n.nutrientId === id)
  return n?.value ?? 0
}

function normalizeFood(raw: UsdaFoodRaw): NormalizedUsdaFood {
  const nutrition: NutritionPer100g = {
    calories: extractNutrient(raw.foodNutrients, NUTRIENT_IDS.calories),
    protein: extractNutrient(raw.foodNutrients, NUTRIENT_IDS.protein),
    fat: extractNutrient(raw.foodNutrients, NUTRIENT_IDS.fat),
    carbs: extractNutrient(raw.foodNutrients, NUTRIENT_IDS.carbs),
    fiber: extractNutrient(raw.foodNutrients, NUTRIENT_IDS.fiber),
  }
  return {
    fdcId: raw.fdcId,
    description: raw.description,
    usdaCategory: raw.foodCategory ?? 'Unknown',
    dataType: raw.dataType,
    nutrition,
  }
}

/**
 * Fetch foods for a USDA category using the GET /foods/search endpoint.
 * Uses a targeted search query + client-side category filtering.
 * The POST endpoint appears to be broken for API keys.
 */
export async function fetchFoodsByCategory(
  usdaCategory: string,
  searchQuery: string,
  targetCount: number,
  apiKey: string
): Promise<NormalizedUsdaFood[]> {
  const results: NormalizedUsdaFood[] = []
  let pageNumber = 1

  while (results.length < targetCount && pageNumber <= MAX_PAGES) {
    const params = new URLSearchParams({
      api_key: apiKey,
      query: searchQuery,
      dataType: 'SR Legacy,Foundation',
      pageSize: String(PAGE_SIZE),
      pageNumber: String(pageNumber),
      sortBy: 'description.keyword',
      sortOrder: 'asc',
    })
    const url = `${USDA_BASE_URL}/foods/search?${params.toString()}`

    let response: Response
    try {
      response = await fetch(url)
    } catch (err) {
      process.stderr.write(`[USDA] Network error for "${usdaCategory}": ${err}\n`)
      break
    }

    if (!response.ok) {
      process.stderr.write(`[USDA] HTTP ${response.status} for "${usdaCategory}" (query: "${searchQuery}")\n`)
      const body = await response.text()
      process.stderr.write(`[USDA] Response: ${body.slice(0, 200)}\n`)
      break
    }

    const data = (await response.json()) as SearchResponse
    const foods = data.foods ?? []
    if (foods.length === 0) break

    const matching = foods
      .filter(f => f.foodCategory === usdaCategory)
      .filter(f => Array.isArray(f.foodNutrients) && f.foodNutrients.length > 0)
      .map(normalizeFood)
      .filter(f => f.nutrition.calories > 0)

    results.push(...matching)

    const totalPages = data.totalPages ?? 1
    if (pageNumber >= totalPages || foods.length < PAGE_SIZE) break
    pageNumber++
    await sleep(THROTTLE_MS)
  }

  return results.slice(0, targetCount)
}

export interface CategoryTarget {
  usdaCategory: string
  searchQuery: string
  targetCount: number
}

export async function fetchAllCategories(
  targets: CategoryTarget[],
  apiKey: string
): Promise<NormalizedUsdaFood[]> {
  const all: NormalizedUsdaFood[] = []
  for (const { usdaCategory, searchQuery, targetCount } of targets) {
    process.stderr.write(`[USDA] Fetching "${usdaCategory}" (query: "${searchQuery}", target: ${targetCount})...\n`)
    const foods = await fetchFoodsByCategory(usdaCategory, searchQuery, targetCount, apiKey)
    process.stderr.write(`[USDA] Got ${foods.length} matching foods\n`)
    all.push(...foods)
    await sleep(THROTTLE_MS)
  }
  return all
}
