import { NextResponse } from 'next/server'
import Anthropic from '@anthropic-ai/sdk'

const SYSTEM = `You are an expert on the Israeli Diet Angel (מלאך הדיאטה) weight-loss star system.

STAR RULES:
- FREE (star_type: "free"): All non-starchy vegetables, herbs, water, black coffee, vinegar, mustard, tomato sauce (plain). 0 stars.
- YELLOW (star_type: "yellow"): All fruits, meat/fish (2 stars per 150g), eggs (1 star per egg), dairy (milk/yogurt/cheese), legumes (cooked), nuts/seeds, olive oil, tahini, avocado. ~100 kcal = 1 yellow star.
- RED (star_type: "red"): All carbs — bread (~1 red per slice 30g), pita (1 red per 1/3 pita ~22g), rice/pasta cooked (2 red per cup 200g), oats dry (1 red per 3 tbsp), potato/sweet potato (1.5 red per medium 150g), crackers, cereal, corn, dark chocolate. ~20g net carbs = 1 red star.

Stars must always be multiples of 0.5. Always respond with valid JSON only.`

export interface MealItem {
  name_en: string
  name_he: string
  category: 'vegetable' | 'fruit' | 'protein' | 'dairy' | 'carb' | 'fat' | 'beverage' | 'snack'
  star_type: 'free' | 'yellow' | 'red'
  portion_label_he: string
  portion_label_en: string
  grams: number
  yellow_stars: number
  red_stars: number
}

export interface MealParseResult {
  items: MealItem[]
  summary_he: string  // e.g. "סה״כ 3 כוכבים צהובים, 1 אדום"
}

export async function POST(req: Request) {
  try {
    const { description } = await req.json() as { description: string }

    if (!description?.trim()) {
      return NextResponse.json({ error: 'Description is required' }, { status: 400 })
    }

    const client = new Anthropic({ apiKey: process.env.MY_ANTHROPIC_KEY })

    const prompt = `The user described what they ate: "${description}"

Break this down into individual food components. Each ingredient or food item should be a separate entry.
Use realistic Israeli portion assumptions.
For compound dishes (e.g. shakshuka), list each component separately (eggs, tomato sauce, oil).
Ignore water and plain black coffee (or mark as free).

Return JSON in this exact format:
{
  "items": [
    {
      "name_en": "Eggs",
      "name_he": "ביצים",
      "category": "protein",
      "star_type": "yellow",
      "portion_label_he": "2 ביצים",
      "portion_label_en": "2 eggs",
      "grams": 100,
      "yellow_stars": 2,
      "red_stars": 0
    },
    {
      "name_en": "Tomato sauce",
      "name_he": "רוטב עגבניות",
      "category": "vegetable",
      "star_type": "free",
      "portion_label_he": "חצי קערה",
      "portion_label_en": "half bowl",
      "grams": 150,
      "yellow_stars": 0,
      "red_stars": 0
    }
  ],
  "summary_he": "סה״כ: 2 כוכבים צהובים, 0 אדומים"
}

Return ONLY the JSON, no markdown.`

    const response = await client.messages.create({
      model: 'claude-haiku-4-5-20251001',
      max_tokens: 1500,
      system: SYSTEM,
      messages: [{ role: 'user', content: prompt }],
    })

    const text = response.content.find(b => b.type === 'text')?.text ?? ''
    const jsonMatch = text.match(/\{[\s\S]*\}/)
    if (!jsonMatch) {
      return NextResponse.json({ error: 'Invalid AI response' }, { status: 500 })
    }

    const result: MealParseResult = JSON.parse(jsonMatch[0])

    // Clamp stars to 0.5 multiples and non-negative
    result.items = result.items.map(item => ({
      ...item,
      yellow_stars: Math.round(Math.max(0, item.yellow_stars) * 2) / 2,
      red_stars:    Math.round(Math.max(0, item.red_stars)    * 2) / 2,
    }))

    return NextResponse.json(result)
  } catch (err: any) {
    console.error('[ai-meal]', err)
    const msg = err?.message ?? 'Unknown error'
    const isKeyMissing = !process.env.MY_ANTHROPIC_KEY
    return NextResponse.json({
      error: isKeyMissing
        ? 'ANTHROPIC_API_KEY is not set in environment variables'
        : `Meal parse failed: ${msg}`,
    }, { status: 500 })
  }
}
