import type { StarMapping, PortionRecord } from './types.js'
import { roundToHalf } from './star-mapper.js'
import portionTemplatesJson from '../data/portion-templates.json' assert { type: 'json' }

const portionTemplates = portionTemplatesJson as Record<
  string,
  Array<{
    label_en: string
    label_he: string
    grams: number
    is_default: boolean
    sort_order: number
  }>
>

// Sanity bounds for a default portion
const YELLOW_MIN = 0.5
const YELLOW_MAX = 3.0
const RED_MIN = 0.5
const RED_MAX = 4.0

function scaleStars(starsPerHundredG: number, grams: number): number {
  return roundToHalf((starsPerHundredG * grams) / 100)
}

export function generatePortions(mapping: StarMapping): { portions: PortionRecord[]; outOfRange: boolean } {
  const templates = portionTemplates[mapping.categoryHint] ?? portionTemplates['snack']
  const portions: PortionRecord[] = []
  let outOfRange = false

  for (const tmpl of templates) {
    let yellowStars = 0
    let redStars = 0

    if (mapping.starType === 'free') {
      yellowStars = 0
      redStars = 0
    } else if (mapping.starType === 'yellow') {
      yellowStars = Math.max(0, scaleStars(mapping.yellowStarsPer100g, tmpl.grams))
      redStars = 0
    } else {
      yellowStars = 0
      redStars = Math.max(0, scaleStars(mapping.redStarsPer100g, tmpl.grams))
    }

    // Sanity check on the default portion
    if (tmpl.is_default && mapping.starType !== 'free') {
      if (mapping.starType === 'yellow' && (yellowStars < YELLOW_MIN || yellowStars > YELLOW_MAX)) {
        outOfRange = true
      }
      if (mapping.starType === 'red' && (redStars < RED_MIN || redStars > RED_MAX)) {
        outOfRange = true
      }
    }

    portions.push({
      labelEn: tmpl.label_en,
      labelHe: tmpl.label_he,
      grams: tmpl.grams,
      yellowStars,
      redStars,
      isDefault: tmpl.is_default,
      sortOrder: tmpl.sort_order,
    })
  }

  // Ensure at least one default portion exists
  if (!portions.some(p => p.isDefault) && portions.length > 0) {
    portions[0] = { ...portions[0], isDefault: true }
  }

  return { portions, outOfRange }
}
