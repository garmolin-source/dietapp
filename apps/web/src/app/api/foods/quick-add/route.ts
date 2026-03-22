import { NextResponse } from 'next/server'
import { createClient } from '@/lib/supabase/server'

export async function POST(req: Request) {
  try {
    const supabase = createClient()
    const { data: { user } } = await supabase.auth.getUser()
    if (!user) return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })

    const body = await req.json()
    const { name_en, name_he, category, star_type, portions } = body

    // Check if food already exists (avoid duplicates from repeated AI lookups)
    const { data: existing } = await supabase
      .from('foods')
      .select('*, portions:food_portions(*)')
      .ilike('name_en', name_en)
      .limit(1)
      .single()

    if (existing) return NextResponse.json(existing)

    // Insert food
    const { data: food, error: foodErr } = await supabase
      .from('foods')
      .insert({ name_he, name_en, category, star_type, source: 'user_search' })
      .select()
      .single()

    if (foodErr || !food) {
      return NextResponse.json({ error: foodErr?.message ?? 'Insert failed' }, { status: 500 })
    }

    // Insert portions
    const { data: savedPortions, error: portionErr } = await supabase
      .from('food_portions')
      .insert(
        portions.map((p: any, i: number) => ({
          food_id: food.id,
          label_he: p.label_he,
          label_en: p.label_en,
          grams: p.grams,
          yellow_stars: p.yellow_stars,
          red_stars: p.red_stars,
          is_default: p.is_default ?? i === 0,
          sort_order: p.sort_order ?? i + 1,
        }))
      )
      .select()

    if (portionErr) {
      return NextResponse.json({ error: portionErr.message }, { status: 500 })
    }

    return NextResponse.json({ ...food, portions: savedPortions })
  } catch (err) {
    console.error('[quick-add]', err)
    return NextResponse.json({ error: 'Server error' }, { status: 500 })
  }
}
