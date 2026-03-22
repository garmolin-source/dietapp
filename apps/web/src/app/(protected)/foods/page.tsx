import { createClient } from '@/lib/supabase/server'

const CATEGORY_LABELS: Record<string, string> = {
  vegetable: 'ירקות',
  fruit: 'פירות',
  dairy: 'מוצרי חלב',
  protein: 'חלבונים',
  carb: 'פחמימות',
  fat: 'שומנים',
  beverage: 'משקאות',
  snack: 'חטיפים',
}

const STAR_TYPE_BADGE: Record<string, { label: string; className: string }> = {
  yellow: { label: '⭐ צהוב', className: 'bg-amber-100 text-amber-700 border border-amber-200' },
  red:    { label: '🔴 אדום', className: 'bg-red-100 text-red-700 border border-red-200' },
  free:   { label: '✓ חינם', className: 'bg-green-100 text-green-700 border border-green-200' },
}

export default async function FoodsPage() {
  const supabase = createClient()
  const { data: foods } = await supabase
    .from('foods')
    .select('*, portions:food_portions(*)')
    .eq('is_active', true)
    .order('category')
    .order('name_he')

  const grouped = (foods || []).reduce((acc: Record<string, any[]>, food) => {
    const cat = food.category || 'other'
    if (!acc[cat]) acc[cat] = []
    acc[cat].push(food)
    return acc
  }, {})

  return (
    <div className="space-y-6">
      <h1 className="font-display font-normal text-3xl text-foreground">מאגר מזון</h1>

      {Object.entries(grouped).map(([category, foods]) => (
        <div key={category} className="bg-card rounded-2xl border-2 border-border shadow-card overflow-hidden">
          <div className="bg-party-header px-4 py-3 border-b-2 border-border">
            <h2 className="font-display font-normal text-lg text-foreground">
              {CATEGORY_LABELS[category] || category}
            </h2>
          </div>
          <div className="divide-y divide-border">
            {foods.map((food) => {
              const badge = STAR_TYPE_BADGE[food.star_type] ?? STAR_TYPE_BADGE.free
              return (
                <div key={food.id} className="px-4 py-3">
                  <div className="flex items-center justify-between">
                    <div>
                      <div className="font-medium text-foreground">{food.name_he}</div>
                      {food.name_en && (
                        <div className="text-sm text-muted-fg">{food.name_en}</div>
                      )}
                    </div>
                    <span className={`text-xs font-medium px-2.5 py-1 rounded-full ${badge.className}`}>
                      {badge.label}
                    </span>
                  </div>
                  {food.portions && food.portions.length > 0 && (
                    <div className="mt-2 flex flex-wrap gap-1.5">
                      {food.portions.map((p: any) => (
                        <span key={p.id} className="text-xs bg-muted text-muted-fg px-2 py-1 rounded-xl border border-border">
                          {p.label_he}:{' '}
                          {p.yellow_stars > 0 ? <span className="text-star-yellow">⭐{p.yellow_stars}</span> : null}
                          {p.red_stars > 0 ? <span className="text-star-red"> 🔴{p.red_stars}</span> : null}
                          {p.yellow_stars === 0 && p.red_stars === 0 ? <span className="text-success">✓</span> : null}
                        </span>
                      ))}
                    </div>
                  )}
                </div>
              )
            })}
          </div>
        </div>
      ))}
    </div>
  )
}
