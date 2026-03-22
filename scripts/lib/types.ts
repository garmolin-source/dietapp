export type FoodCategory = 'vegetable' | 'fruit' | 'dairy' | 'protein' | 'carb' | 'fat' | 'beverage' | 'snack'
export type StarType = 'yellow' | 'red' | 'free'
export type FoodSource = 'ai_agent' | 'manual'

export interface NutritionPer100g {
  calories: number
  protein: number
  fat: number
  carbs: number
  fiber: number
}

export interface StarMapping {
  starType: StarType
  yellowStarsPer100g: number
  redStarsPer100g: number
  categoryHint: string
  needsReview: boolean
}

export interface PortionRecord {
  labelEn: string
  labelHe: string
  grams: number
  yellowStars: number
  redStars: number
  isDefault: boolean
  sortOrder: number
}

export interface FoodRecord {
  nameEn: string
  nameHe: string
  category: FoodCategory
  starType: StarType
  source: FoodSource
  needsReview: boolean
  portions: PortionRecord[]
}

export interface NormalizedUsdaFood {
  fdcId: number
  description: string
  usdaCategory: string
  dataType: string
  nutrition: NutritionPer100g
}

export interface IsraeliFood {
  name_he: string
  name_en: string
  category: FoodCategory
  star_type: StarType
  source: 'manual'
  portions: Array<{
    label_he: string
    label_en: string
    grams: number
    yellow_stars: number
    red_stars: number
    is_default: boolean
    sort_order: number
  }>
}
