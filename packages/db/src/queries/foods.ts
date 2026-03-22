import { supabase } from '../client'
import type { Food } from '@dietapp/types'

export async function searchFoods(query: string): Promise<Food[]> {
  const { data, error } = await supabase
    .from('foods')
    .select(`
      *,
      portions:food_portions(*)
    `)
    .or(`name_he.ilike.%${query}%,name_en.ilike.%${query}%`)
    .eq('is_active', true)
    .order('name_he')
    .limit(20)

  if (error) throw error

  return (data || []).map(mapFood)
}

export async function getFoodById(id: string): Promise<Food | null> {
  const { data, error } = await supabase
    .from('foods')
    .select(`
      *,
      portions:food_portions(* order by sort_order asc)
    `)
    .eq('id', id)
    .single()

  if (error) return null
  return mapFood(data)
}

export async function getAllFoods(): Promise<Food[]> {
  const { data, error } = await supabase
    .from('foods')
    .select(`
      *,
      portions:food_portions(*)
    `)
    .eq('is_active', true)
    .order('name_he')

  if (error) throw error
  return (data || []).map(mapFood)
}

function mapFood(row: any): Food {
  return {
    id: row.id,
    nameHe: row.name_he,
    nameEn: row.name_en,
    category: row.category,
    starType: row.star_type,
    isActive: row.is_active,
    source: row.source,
    portions: (row.portions || []).map((p: any) => ({
      id: p.id,
      foodId: p.food_id,
      labelHe: p.label_he,
      labelEn: p.label_en,
      grams: p.grams,
      yellowStars: p.yellow_stars,
      redStars: p.red_stars,
      isDefault: p.is_default,
      sortOrder: p.sort_order,
    })),
  }
}
