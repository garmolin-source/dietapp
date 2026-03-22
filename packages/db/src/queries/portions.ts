import { supabase } from '../client'
import type { FoodPortion } from '@dietapp/types'

export async function getPortionsForFood(foodId: string): Promise<FoodPortion[]> {
  const { data, error } = await supabase
    .from('food_portions')
    .select('*')
    .eq('food_id', foodId)
    .order('sort_order', { ascending: true })

  if (error) throw error

  return (data || []).map((p: any) => ({
    id: p.id,
    foodId: p.food_id,
    labelHe: p.label_he,
    labelEn: p.label_en,
    grams: p.grams,
    yellowStars: p.yellow_stars,
    redStars: p.red_stars,
    isDefault: p.is_default,
    sortOrder: p.sort_order,
  }))
}
