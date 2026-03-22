import type { FoodRecord, PortionRecord } from './types.js'

/** Escape a string for safe SQL single-quoted string literals */
function esc(s: string): string {
  return s.replace(/'/g, "''")
}

/** Format a numeric value with 1 decimal place */
function num(n: number): string {
  return n.toFixed(1)
}

function emitFoodBlock(food: FoodRecord): string {
  const lines: string[] = []

  const reviewComment = food.needsReview ? ' -- NEEDS_REVIEW' : ''
  lines.push(`-- [${food.category.toUpperCase()}] ${food.nameEn}${reviewComment}`)
  lines.push(`WITH f AS (`)
  lines.push(
    `  INSERT INTO public.foods (name_he, name_en, category, star_type, source)`
  )
  lines.push(
    `  VALUES ('${esc(food.nameHe)}', '${esc(food.nameEn)}', '${food.category}', '${food.starType}', '${food.source}')`
  )
  lines.push(`  RETURNING id`)
  lines.push(`)`)
  lines.push(
    `INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)`
  )
  lines.push(`SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order`)
  lines.push(`FROM f, (VALUES`)

  const portionLines = food.portions.map((p: PortionRecord, idx: number) => {
    const isFirst = idx === 0
    const prefix = isFirst ? '  ' : '  '
    // Cast types on first row only for PostgreSQL type inference
    if (isFirst) {
      return (
        `${prefix}('${esc(p.labelHe)}'::text, '${esc(p.labelEn)}'::text, ` +
        `${num(p.grams)}::numeric, ${num(p.yellowStars)}::numeric, ` +
        `${num(p.redStars)}::numeric, ${p.isDefault}::boolean, ${p.sortOrder}::integer)`
      )
    }
    return (
      `${prefix}('${esc(p.labelHe)}', '${esc(p.labelEn)}', ` +
      `${num(p.grams)}, ${num(p.yellowStars)}, ${num(p.redStars)}, ${p.isDefault}, ${p.sortOrder})`
    )
  })

  lines.push(portionLines.join(',\n'))
  lines.push(`) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);`)
  lines.push('')

  return lines.join('\n')
}

export interface EmitOptions {
  generatedAt: string
  usdaCount: number
  israeliCount: number
  reviewCount: number
}

export function emitSQL(foods: FoodRecord[], opts: EmitOptions): string {
  const sections: string[] = []

  sections.push(`-- ============================================================`)
  sections.push(`-- Diet Angel Food Database Expansion — Migration 007`)
  sections.push(`-- Generated: ${opts.generatedAt}`)
  sections.push(`-- Source: USDA FoodData Central (SR Legacy + Foundation) + Israeli brands (manual)`)
  sections.push(`-- USDA foods: ${opts.usdaCount}`)
  sections.push(`-- Israeli brands: ${opts.israeliCount}`)
  sections.push(`-- Total: ${opts.usdaCount + opts.israeliCount}`)
  sections.push(`-- Flagged for review (NEEDS_REVIEW): ${opts.reviewCount}`)
  sections.push(`-- `)
  sections.push(`-- Review flagged items before applying to production.`)
  sections.push(`-- Apply: supabase db push`)
  sections.push(`-- ============================================================`)
  sections.push(``)
  sections.push(`BEGIN;`)
  sections.push(``)

  // Group by category for readability
  const categories = [
    'vegetable', 'fruit', 'dairy', 'protein', 'carb', 'fat', 'beverage', 'snack',
  ] as const

  for (const cat of categories) {
    const catFoods = foods.filter(f => f.category === cat)
    if (catFoods.length === 0) continue

    sections.push(`-- ============================================================`)
    sections.push(`-- ${cat.toUpperCase()} (${catFoods.length} foods)`)
    sections.push(`-- ============================================================`)
    sections.push(``)

    for (const food of catFoods) {
      sections.push(emitFoodBlock(food))
    }
  }

  sections.push(`COMMIT;`)
  sections.push(``)

  return sections.join('\n')
}
