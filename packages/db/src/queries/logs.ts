import { supabase } from '../client'
import type { DailyLog, LogEntry, MealType } from '@dietapp/types'

export async function getDailyLog(userId: string, date: string): Promise<DailyLog> {
  const { data, error } = await supabase
    .from('daily_logs')
    .select(`
      *,
      food:foods(*),
      portion:food_portions(*)
    `)
    .eq('user_id', userId)
    .eq('log_date', date)
    .order('created_at', { ascending: true })

  if (error) throw error

  const entries: LogEntry[] = (data || []).map((row: any) => ({
    id: row.id,
    userId: row.user_id,
    logDate: row.log_date,
    mealType: row.meal_type as MealType,
    food: {
      id: row.food.id,
      nameHe: row.food.name_he,
      nameEn: row.food.name_en,
      category: row.food.category,
      starType: row.food.star_type,
      isActive: row.food.is_active,
      source: row.food.source,
      portions: [],
    },
    portion: {
      id: row.portion.id,
      foodId: row.portion.food_id,
      labelHe: row.portion.label_he,
      labelEn: row.portion.label_en,
      grams: row.portion.grams,
      yellowStars: row.portion.yellow_stars,
      redStars: row.portion.red_stars,
      isDefault: row.portion.is_default,
      sortOrder: row.portion.sort_order,
    },
    quantity: row.quantity,
    yellowStarsConsumed: row.yellow_stars_consumed,
    redStarsConsumed: row.red_stars_consumed,
  }))

  const totalYellow = entries.reduce((sum, e) => sum + e.yellowStarsConsumed, 0)
  const totalRed = entries.reduce((sum, e) => sum + e.redStarsConsumed, 0)

  return { date, entries, totalYellow, totalRed }
}

export async function addLogEntry(params: {
  userId: string
  logDate: string
  mealType: MealType
  foodId: string
  portionId: string
  quantity: number
  yellowStarsConsumed: number
  redStarsConsumed: number
}): Promise<string> {
  const { data, error } = await supabase
    .from('daily_logs')
    .insert({
      user_id: params.userId,
      log_date: params.logDate,
      meal_type: params.mealType,
      food_id: params.foodId,
      portion_id: params.portionId,
      quantity: params.quantity,
      yellow_stars_consumed: params.yellowStarsConsumed,
      red_stars_consumed: params.redStarsConsumed,
    })
    .select('id')
    .single()

  if (error) throw error
  return data.id
}

export async function deleteLogEntry(id: string): Promise<void> {
  const { error } = await supabase
    .from('daily_logs')
    .delete()
    .eq('id', id)

  if (error) throw error
}
