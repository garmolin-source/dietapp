'use client'

import { useState, useEffect, useRef } from 'react'
import { useRouter } from 'next/navigation'
import { createClient } from '@/lib/supabase/client'
import { getPortionVisualHint } from '@/lib/portionHint'

type MealType = 'breakfast' | 'lunch' | 'dinner' | 'snack'

const MEAL_LABELS: Record<MealType, string> = {
  breakfast: 'ארוחת בוקר',
  lunch: 'ארוחת צהריים',
  dinner: 'ארוחת ערב',
  snack: 'חטיף',
}

export default function LogPage() {
  const [query, setQuery] = useState('')
  const [results, setResults] = useState<any[]>([])
  const [selectedFood, setSelectedFood] = useState<any>(null)
  const [selectedPortion, setSelectedPortion] = useState<any>(null)
  const [mealType, setMealType] = useState<MealType>('breakfast')
  const [quantity, setQuantity] = useState(1)
  const [loading, setLoading] = useState(false)
  const [saving, setSaving] = useState(false)
  const searchTimeout = useRef<NodeJS.Timeout>()
  const router = useRouter()
  const supabase = createClient()

  useEffect(() => {
    if (!query.trim()) {
      setResults([])
      return
    }

    clearTimeout(searchTimeout.current)
    searchTimeout.current = setTimeout(async () => {
      setLoading(true)
      const { data } = await supabase
        .from('foods')
        .select('*, portions:food_portions(*)')
        .or(`name_he.ilike.%${query}%,name_en.ilike.%${query}%`)
        .eq('is_active', true)
        .order('name_he')
        .limit(20)
      setResults(data || [])
      setLoading(false)
    }, 300)

    return () => clearTimeout(searchTimeout.current)
  }, [query])

  function selectFood(food: any) {
    setSelectedFood(food)
    const defaultPortion = food.portions?.find((p: any) => p.is_default) || food.portions?.[0]
    setSelectedPortion(defaultPortion)
  }

  async function handleAdd() {
    if (!selectedFood || !selectedPortion) return
    setSaving(true)

    const { data: { user } } = await supabase.auth.getUser()
    if (!user) return

    const today = new Date().toISOString().split('T')[0]

    await supabase.from('daily_logs').insert({
      user_id: user.id,
      log_date: today,
      meal_type: mealType,
      food_id: selectedFood.id,
      portion_id: selectedPortion.id,
      quantity,
      yellow_stars_consumed: selectedPortion.yellow_stars * quantity,
      red_stars_consumed: selectedPortion.red_stars * quantity,
    })

    setSaving(false)
    router.push('/dashboard')
  }

  const yellowStars = selectedPortion ? selectedPortion.yellow_stars * quantity : 0
  const redStars = selectedPortion ? selectedPortion.red_stars * quantity : 0
  const portionHint = (selectedFood && selectedPortion)
    ? getPortionVisualHint(selectedFood.category, selectedPortion.grams)
    : null

  return (
    <div className="space-y-6">
      <h1 className="text-2xl font-bold text-gray-900">הוספת אוכל</h1>

      <div className="bg-white rounded-xl shadow-sm p-4 space-y-4">
        <div>
          <label className="block text-sm font-medium text-gray-700 mb-1">סוג ארוחה</label>
          <div className="grid grid-cols-2 gap-2">
            {(Object.keys(MEAL_LABELS) as MealType[]).map((type) => (
              <button
                key={type}
                onClick={() => setMealType(type)}
                className={`py-2 px-3 rounded-lg text-sm font-medium transition-colors ${
                  mealType === type
                    ? 'bg-yellow-400 text-white'
                    : 'bg-gray-100 text-gray-700 hover:bg-gray-200'
                }`}
              >
                {MEAL_LABELS[type]}
              </button>
            ))}
          </div>
        </div>

        <div>
          <label className="block text-sm font-medium text-gray-700 mb-1">חיפוש מזון</label>
          <input
            type="text"
            value={query}
            onChange={(e) => setQuery(e.target.value)}
            placeholder="חפש לפי שם (עברית או אנגלית)..."
            className="w-full px-3 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-yellow-400 text-right"
          />
        </div>

        {loading && <p className="text-sm text-gray-500">מחפש...</p>}

        {results.length > 0 && !selectedFood && (
          <div className="border border-gray-200 rounded-lg divide-y max-h-60 overflow-y-auto">
            {results.map((food) => (
              <button
                key={food.id}
                onClick={() => selectFood(food)}
                className="w-full text-right px-4 py-3 hover:bg-gray-50 transition-colors"
              >
                <div className="font-medium text-gray-900">{food.name_he}</div>
                {food.name_en && (
                  <div className="text-sm text-gray-500">{food.name_en}</div>
                )}
                <div className="flex gap-2 mt-1">
                  {food.star_type === 'yellow' && (
                    <span className="text-xs bg-yellow-100 text-yellow-700 px-2 py-0.5 rounded-full">צהוב</span>
                  )}
                  {food.star_type === 'red' && (
                    <span className="text-xs bg-red-100 text-red-700 px-2 py-0.5 rounded-full">אדום</span>
                  )}
                  {food.star_type === 'free' && (
                    <span className="text-xs bg-green-100 text-green-700 px-2 py-0.5 rounded-full">חינם</span>
                  )}
                </div>
              </button>
            ))}
          </div>
        )}

        {selectedFood && (
          <div className="space-y-4">
            <div className="flex items-center justify-between bg-gray-50 rounded-lg p-3">
              <div>
                <div className="font-medium text-gray-900">{selectedFood.name_he}</div>
                {selectedFood.name_en && (
                  <div className="text-sm text-gray-500">{selectedFood.name_en}</div>
                )}
              </div>
              <button
                onClick={() => { setSelectedFood(null); setSelectedPortion(null) }}
                className="text-gray-400 hover:text-gray-600"
              >
                ✕
              </button>
            </div>

            <div>
              <label className="block text-sm font-medium text-gray-700 mb-1">כמות</label>
              <select
                value={selectedPortion?.id}
                onChange={(e) => {
                  const p = selectedFood.portions?.find((p: any) => p.id === e.target.value)
                  setSelectedPortion(p)
                }}
                className="w-full px-3 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-yellow-400"
              >
                {selectedFood.portions?.map((p: any) => (
                  <option key={p.id} value={p.id}>
                    {p.label_he} {p.grams ? `(${p.grams}ג׳)` : ''}
                  </option>
                ))}
              </select>
              {portionHint && (
                <p className="mt-1 text-sm text-gray-500">{portionHint}</p>
              )}
            </div>

            <div>
              <label className="block text-sm font-medium text-gray-700 mb-1">מספר מנות</label>
              <div className="flex items-center gap-3">
                <button
                  onClick={() => setQuantity(Math.max(0.5, quantity - 0.5))}
                  className="w-8 h-8 bg-gray-200 rounded-full font-bold hover:bg-gray-300"
                >
                  −
                </button>
                <span className="text-lg font-semibold w-8 text-center">{quantity}</span>
                <button
                  onClick={() => setQuantity(quantity + 0.5)}
                  className="w-8 h-8 bg-gray-200 rounded-full font-bold hover:bg-gray-300"
                >
                  +
                </button>
              </div>
            </div>

            <div className="bg-gray-50 rounded-lg p-3 flex gap-4">
              {yellowStars > 0 && (
                <div className="text-center">
                  <div className="text-xl">⭐</div>
                  <div className="text-sm font-semibold text-yellow-600">{yellowStars} צהוב</div>
                </div>
              )}
              {redStars > 0 && (
                <div className="text-center">
                  <div className="text-xl">🔴</div>
                  <div className="text-sm font-semibold text-red-600">{redStars} אדום</div>
                </div>
              )}
              {yellowStars === 0 && redStars === 0 && (
                <div className="text-sm text-green-600 font-medium">✓ ללא כוכבים (חינם)</div>
              )}
            </div>

            <button
              onClick={handleAdd}
              disabled={saving}
              className="w-full py-3 bg-yellow-400 hover:bg-yellow-500 text-white font-semibold rounded-lg transition-colors disabled:opacity-50"
            >
              {saving ? 'שומר...' : 'הוסף לרשומות היום'}
            </button>
          </div>
        )}
      </div>
    </div>
  )
}
