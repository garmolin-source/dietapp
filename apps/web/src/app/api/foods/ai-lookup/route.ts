import { NextResponse } from 'next/server'
import Anthropic from '@anthropic-ai/sdk'

const SYSTEM = `You are an expert on the Israeli Diet Angel (מלאך הדיאטה) weight-loss star system.

STAR RULES:
- FREE (star_type: "free"): All non-starchy vegetables, herbs, water, black coffee, vinegar, mustard. 0 stars.
- YELLOW (star_type: "yellow"): ALL fruits regardless of sugar content, meat/fish (2 stars per 150g), eggs (1 star per egg/50g), dairy products, legumes (cooked), nuts/seeds, healthy fats (olive oil, tahini, avocado). ~100 kcal = 1 yellow star. Meat/fish: ~133 kcal = 1 star.
- RED (star_type: "red"): ALL carbohydrates — bread (1 red per slice 30g), pita (1 red per 1/3 pita 22g), rice/pasta cooked (2 red per cup 200g), oats dry (1 red per 3 tbsp 25g), potato/sweet potato (1.5 red per medium 150g), crackers, breakfast cereals, corn. ~20g net carbs = 1 red star.

For mixed meals (e.g. shakshuka, sandwich), estimate total stars for all components combined.
Stars must always be multiples of 0.5. Minimum 0.5 for non-free foods.
Always respond with valid JSON only — no markdown, no explanation outside the JSON.`

export async function POST(req: Request) {
  try {
    const { type, query } = await req.json() as { type: 'search' | 'describe'; query: string }

    if (!query?.trim()) {
      return NextResponse.json({ error: 'Query is required' }, { status: 400 })
    }

    const client = new Anthropic({ apiKey: process.env.ANTHROPIC_API_KEY })

    const prompt = type === 'search'
      ? `Food item to look up: "${query}"

Return the Diet Angel star ranking for a typical serving. Provide 2-3 realistic portion sizes.

JSON format:
{
  "name_en": "English name",
  "name_he": "שם בעברית",
  "category": "vegetable"|"fruit"|"protein"|"dairy"|"carb"|"fat"|"beverage"|"snack",
  "star_type": "free"|"yellow"|"red",
  "portions": [
    {
      "label_en": "1 medium (150g)",
      "label_he": "1 בינוני (~150 גרם)",
      "grams": 150,
      "yellow_stars": 1.5,
      "red_stars": 0,
      "is_default": true,
      "sort_order": 1
    }
  ],
  "explanation": "הסבר קצר בעברית על חישוב הכוכבים"
}

Return ONLY the JSON.`
      : `The user described what they ate: "${query}"

Analyze this description and return Diet Angel star rankings.
If it's a compound meal (e.g. "shakshuka with pita and salad"), calculate total stars for the whole meal.
Use realistic Israeli portion assumptions.

JSON format:
{
  "name_en": "Brief English description",
  "name_he": "תיאור קצר בעברית",
  "category": "protein"|"carb"|"vegetable"|"dairy"|"fat"|"fruit"|"snack"|"beverage",
  "star_type": "free"|"yellow"|"red",
  "portions": [
    {
      "label_en": "1 portion (as described)",
      "label_he": "מנה אחת (כמתואר)",
      "grams": 300,
      "yellow_stars": 2.0,
      "red_stars": 1.0,
      "is_default": true,
      "sort_order": 1
    }
  ],
  "explanation": "הסבר בעברית: פירוט איך חושבו הכוכבים לכל מרכיב"
}

Return ONLY the JSON.`

    const response = await client.messages.create({
      model: 'claude-haiku-4-5-20251001',
      max_tokens: 1024,
      system: SYSTEM,
      messages: [{ role: 'user', content: prompt }],
    })

    const text = response.content.find(b => b.type === 'text')?.text ?? ''
    const jsonMatch = text.match(/\{[\s\S]*\}/)
    if (!jsonMatch) {
      return NextResponse.json({ error: 'Invalid AI response' }, { status: 500 })
    }

    const food = JSON.parse(jsonMatch[0])
    return NextResponse.json(food)
  } catch (err) {
    console.error('[ai-lookup]', err)
    return NextResponse.json({ error: 'Lookup failed' }, { status: 500 })
  }
}
