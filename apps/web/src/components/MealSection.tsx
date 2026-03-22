'use client'

import { useRouter } from 'next/navigation'
import { createClient } from '@/lib/supabase/client'

interface MealSectionProps {
  mealType: string
  label: string
  entries: any[]
}

export default function MealSection({ mealType, label, entries }: MealSectionProps) {
  const router = useRouter()
  const supabase = createClient()

  async function handleDelete(id: string) {
    await supabase.from('daily_logs').delete().eq('id', id)
    router.refresh()
  }

  const totalYellow = entries.reduce((sum, e) => sum + (e.yellow_stars_consumed || 0), 0)
  const totalRed = entries.reduce((sum, e) => sum + (e.red_stars_consumed || 0), 0)

  return (
    <div className="bg-white rounded-xl shadow-sm overflow-hidden">
      <div className="px-4 py-3 bg-gray-50 border-b flex items-center justify-between">
        <h3 className="font-semibold text-gray-800">{label}</h3>
        <div className="flex gap-2 text-sm">
          {totalYellow > 0 && (
            <span className="text-yellow-600">⭐ {totalYellow}</span>
          )}
          {totalRed > 0 && (
            <span className="text-red-600">🔴 {totalRed}</span>
          )}
        </div>
      </div>

      {entries.length === 0 ? (
        <div className="px-4 py-6 text-center text-gray-400 text-sm">
          לא נוספו מזונות לארוחה זו
        </div>
      ) : (
        <div className="divide-y">
          {entries.map((entry) => (
            <div key={entry.id} className="px-4 py-3 flex items-center justify-between">
              <div>
                <div className="font-medium text-gray-900">{entry.food?.name_he}</div>
                <div className="text-sm text-gray-500">
                  {entry.portion?.label_he}
                  {entry.quantity !== 1 && ` × ${entry.quantity}`}
                </div>
              </div>
              <div className="flex items-center gap-3">
                <div className="text-sm text-right">
                  {entry.yellow_stars_consumed > 0 && (
                    <div className="text-yellow-600">⭐ {entry.yellow_stars_consumed}</div>
                  )}
                  {entry.red_stars_consumed > 0 && (
                    <div className="text-red-600">🔴 {entry.red_stars_consumed}</div>
                  )}
                  {entry.yellow_stars_consumed === 0 && entry.red_stars_consumed === 0 && (
                    <div className="text-green-600">✓</div>
                  )}
                </div>
                <button
                  onClick={() => handleDelete(entry.id)}
                  className="text-gray-300 hover:text-red-400 transition-colors text-lg"
                  title="מחק"
                >
                  ✕
                </button>
              </div>
            </div>
          ))}
        </div>
      )}
    </div>
  )
}
