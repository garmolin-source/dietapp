export function getPortionVisualHint(category: string, grams: number | null | undefined): string | null {
  if (!grams || grams <= 0) return null

  switch (category) {
    case 'protein': {
      if (grams <= 30) return '≈ ביצה אחת'
      if (grams <= 60) return '≈ חצי כף יד'
      if (grams <= 120) return '≈ כף יד אחת'
      if (grams <= 170) return '≈ כף יד וחצי'
      if (grams <= 250) return '≈ 2 כפות יד'
      if (grams <= 350) return '≈ 3 כפות יד'
      return `≈ ${Math.round(grams / 100)} כפות יד`
    }
    case 'carb': {
      if (grams <= 20) return '≈ כף אחת'
      if (grams <= 40) return '≈ 2–3 כפות'
      if (grams <= 70) return '≈ חופן קטן'
      if (grams <= 110) return '≈ חופן'
      if (grams <= 160) return '≈ חופן גדוש'
      if (grams <= 220) return '≈ כוס'
      return '≈ יותר מכוס'
    }
    case 'dairy': {
      if (grams <= 60) return '≈ רבע כוס'
      if (grams <= 130) return '≈ חצי כוס'
      if (grams <= 210) return '≈ כוס'
      if (grams <= 280) return '≈ כוס גדולה'
      return `≈ ${Math.round((grams / 240) * 10) / 10} כוסות`
    }
    case 'fruit': {
      if (grams <= 80) return '≈ פרי קטן'
      if (grams <= 150) return '≈ פרי בינוני'
      if (grams <= 250) return '≈ פרי גדול'
      return '≈ 2 פירות'
    }
    case 'fat': {
      if (grams <= 10) return '≈ כפית'
      if (grams <= 20) return '≈ כף אחת'
      if (grams <= 35) return '≈ 2 כפות'
      if (grams <= 50) return '≈ חופן קטן'
      return '≈ חופן'
    }
    case 'vegetable': {
      if (grams <= 50) return '≈ חופן'
      if (grams <= 120) return '≈ קערית קטנה'
      if (grams <= 220) return '≈ קערית'
      return '≈ קערה'
    }
    default:
      return null
  }
}
