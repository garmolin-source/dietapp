import type { Food, FoodPortion } from './food'

export type MealType = 'breakfast' | 'lunch' | 'dinner' | 'snack'

export interface LogEntry {
  id: string
  userId: string
  logDate: string
  mealType: MealType
  food: Food
  portion: FoodPortion
  quantity: number
  yellowStarsConsumed: number
  redStarsConsumed: number
}

export interface DailyLog {
  date: string
  entries: LogEntry[]
  totalYellow: number
  totalRed: number
}
