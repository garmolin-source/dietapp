import type { NutritionPer100g, StarMapping, FoodCategory } from './types.js'
import categoryMapJson from '../data/category-map.json' assert { type: 'json' }

const categoryMap = categoryMapJson as Record<string, { category: FoodCategory; categoryHint: string }>

// Category hints that map to red (carb-dominant) foods
const RED_HINTS = new Set(['grain', 'bread', 'pasta', 'cereal', 'potato', 'sweet'])

// Category hints for meat/fish (use 133-cal scale for 2 stars per 150g)
const MEAT_FISH_HINTS = new Set(['meat', 'fish'])

// Hard-coded overrides: matched by description regex, override per-100g star values
interface Override {
  pattern: RegExp
  starType: 'yellow' | 'red'
  yellowPer100g: number
  redPer100g: number
}

const HARD_OVERRIDES: Override[] = [
  // Egg, whole, raw: 1 yellow per 50g egg → 2.0 per 100g
  {
    pattern: /\begg[s]?\b.*\b(whole|raw)\b|\b(whole|raw)\b.*\begg[s]?\b/i,
    starType: 'yellow', yellowPer100g: 2.0, redPer100g: 0,
  },
  // Chicken breast, cooked: 2 yellow per 150g → 1.33 → rounds to 1.5
  {
    pattern: /chicken.*breast.*(cooked|roasted|baked|grilled|broiled)|breast.*chicken.*(cooked|roasted)/i,
    starType: 'yellow', yellowPer100g: 1.5, redPer100g: 0,
  },
  // Milk, whole / 3.25%: 1 yellow per 180ml → ~0.56 per 100g → rounds to 0.5
  {
    pattern: /\bmilk\b.*(whole|3\.?25%|full.?fat)|\b(whole|3\.?25%)\b.*\bmilk\b/i,
    starType: 'yellow', yellowPer100g: 0.5, redPer100g: 0,
  },
  // Pita bread: 1 red per 22g → ~4.5 per 100g
  {
    pattern: /\bpita\b/i,
    starType: 'red', yellowPer100g: 0, redPer100g: 4.5,
  },
  // Oats, rolled/quick, dry: 1 red per 25g → 4.0 per 100g
  {
    pattern: /\boats?\b.*(rolled|quick|dry|raw)|\brolled\b.*\boats?\b|\boatmeal\b.*dry/i,
    starType: 'red', yellowPer100g: 0, redPer100g: 4.0,
  },
]

export function roundToHalf(n: number): number {
  return Math.round(n * 2) / 2
}

/** Refine categoryHint based on description text for edge cases */
function refineCategoryHint(hint: string, description: string): string {
  const desc = description.toLowerCase()

  if (hint === 'dairy') {
    if (/\begg[s]?\b/.test(desc)) return 'egg'
  }

  if (hint === 'vegetable') {
    if (/sweet\s*potato|yam/.test(desc)) return 'potato'
    if (/\bpotato\b/.test(desc) && !/sweet/.test(desc)) return 'potato'
    if (/\bcorn\b/.test(desc) && !/starch|flour|syrup/.test(desc)) return 'potato'
  }

  if (hint === 'grain') {
    if (/\bpasta\b|\bnoodle[s]?\b|\bspaghetti\b|\bmacaroni\b|\bpenne\b|\bfusilli\b|\blinguine\b/.test(desc))
      return 'grain'
    if (/\bbread\b|\bpita\b|\broll[s]?\b|\bbun[s]?\b|\bbagel[s]?\b/.test(desc))
      return 'bread'
    if (/\boats\b|\boatmeal\b|\bcereal\b/.test(desc))
      return 'cereal'
  }

  if (hint === 'bread') {
    if (/\bcake\b|\bcookie\b|\bpastry\b|\bpie\b|\bmuffin\b|\bdonut\b|\bbrownie\b/.test(desc))
      return 'sweet'
    if (/\bcracker\b|\bcrisp\b|\bmatzo\b|\bmatza\b/.test(desc))
      return 'bread'
  }

  return hint
}

export function mapStars(
  nutrition: NutritionPer100g,
  usdaCategory: string,
  description: string
): StarMapping {
  const { calories, protein, fat, carbs, fiber } = nutrition
  const netCarbs = Math.max(0, carbs - fiber)
  const safeCalories = Math.max(calories, 1)

  const pctCarbs = (netCarbs * 4) / safeCalories
  const pctProtein = (protein * 4) / safeCalories
  const pctFat = (fat * 9) / safeCalories

  // Resolve base categoryHint from USDA category
  const mapEntry = categoryMap[usdaCategory]
  const baseHint = mapEntry?.categoryHint ?? 'snack'
  const categoryHint = refineCategoryHint(baseHint, description)
  const category = mapEntry?.category ?? 'snack'

  // Check hard-coded overrides first
  for (const override of HARD_OVERRIDES) {
    if (override.pattern.test(description)) {
      return {
        starType: override.starType,
        yellowStarsPer100g: override.yellowPer100g,
        redStarsPer100g: override.redPer100g,
        categoryHint,
        needsReview: false,
      }
    }
  }

  // RULE 1 — FREE: non-starchy vegetables and herbs
  if (
    (categoryHint === 'vegetable' && netCarbs < 10 && calories < 50) ||
    (categoryHint === 'herb' && calories < 50)
  ) {
    return { starType: 'free', yellowStarsPer100g: 0, redStarsPer100g: 0, categoryHint, needsReview: false }
  }

  // RULE 2 — RED (carb-dominant)
  // Fruits are ALWAYS yellow in Diet Angel regardless of sugar/carb content — skip red rule
  const isRedByCategory = RED_HINTS.has(categoryHint)
  const isRedByNutrition = netCarbs >= 50 || pctCarbs > 0.60
  if (!isFruit && (isRedByCategory || isRedByNutrition)) {
    const redPer100g = Math.max(0.5, roundToHalf(netCarbs / 20))
    return {
      starType: 'red',
      yellowStarsPer100g: 0,
      redStarsPer100g: redPer100g,
      categoryHint,
      needsReview: false,
    }
  }

  // RULE 3 — YELLOW
  const isProtein = protein >= 10 && pctProtein > 0.30
  const isFatFood = fat >= 10 && pctFat > 0.60 && netCarbs < 15
  const isFruit = categoryHint === 'fruit'
  const isDairy = ['dairy', 'egg', 'legume', 'nut'].includes(categoryHint)

  if (isProtein || isFruit || isFatFood || isDairy) {
    let yellowPer100g: number
    if (MEAT_FISH_HINTS.has(categoryHint)) {
      yellowPer100g = roundToHalf(calories / 133)
    } else {
      yellowPer100g = roundToHalf(calories / 100)
    }
    return {
      starType: 'yellow',
      yellowStarsPer100g: Math.max(0.5, yellowPer100g),
      redStarsPer100g: 0,
      categoryHint,
      needsReview: false,
    }
  }

  // RULE 4 — FALLBACK: best guess + flag for review
  const isLikelyYellow = pctProtein > 0.25 || pctFat > 0.45
  if (isLikelyYellow) {
    const yellowPer100g = roundToHalf(calories / 100)
    return {
      starType: 'yellow',
      yellowStarsPer100g: Math.max(0.5, yellowPer100g),
      redStarsPer100g: 0,
      categoryHint,
      needsReview: true,
    }
  }

  if (netCarbs > 15) {
    const redPer100g = Math.max(0.5, roundToHalf(netCarbs / 20))
    return {
      starType: 'red',
      yellowStarsPer100g: 0,
      redStarsPer100g: redPer100g,
      categoryHint,
      needsReview: true,
    }
  }

  // Very low calorie, low carb — probably free-ish
  return {
    starType: 'free',
    yellowStarsPer100g: 0,
    redStarsPer100g: 0,
    categoryHint,
    needsReview: true,
  }
}

export function getCategoryFromHint(usdaCategory: string): FoodCategory {
  return categoryMap[usdaCategory]?.category ?? 'snack'
}
