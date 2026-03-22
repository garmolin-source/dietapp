import type { StarType } from './stars'

export type FoodCategory =
  | 'vegetable'
  | 'fruit'
  | 'dairy'
  | 'protein'
  | 'carb'
  | 'fat'
  | 'beverage'
  | 'snack'

export interface FoodPortion {
  id: string
  foodId: string
  labelHe: string
  labelEn: string
  grams: number | null
  yellowStars: number
  redStars: number
  isDefault: boolean
  sortOrder: number
}

export interface Food {
  id: string
  nameHe: string
  nameEn: string | null
  category: FoodCategory
  starType: StarType
  isActive: boolean
  source: 'manual' | 'ai_agent'
  portions: FoodPortion[]
}
