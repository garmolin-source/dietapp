'use client'

import { useEffect, useState, useRef, useCallback } from 'react'
import { createClient } from '@/lib/supabase/client'
import StarQuotaPanel from './StarQuotaPanel'
import { getPortionVisualHint } from '@/lib/portionHint'

// ─── Types ────────────────────────────────────────────────────────────────────

interface Profile { total_quota: number; red_quota: number }

interface LogEntry {
  id: string
  meal_type: string
  food: { id: string; name_he: string; name_en: string; star_type: string } | null
  portion: { id: string; label_he: string; grams: number; yellow_stars: number; red_stars: number } | null
  yellow_stars_consumed: number
  red_stars_consumed: number
  quantity: number
}

interface CartItem { food: any; portion: any; quantity: number }

interface AiResult {
  name_en: string
  name_he: string
  category: string
  star_type: 'free' | 'yellow' | 'red'
  portions: any[]
  explanation: string
}

interface DashboardClientProps {
  userId: string
  initialProfile: Profile | null
  initialLogs: LogEntry[]
  today: string
  createdAt: string
}

// ─── Date helpers ─────────────────────────────────────────────────────────────

const DAY_SHORT_HE = ['א׳', 'ב׳', 'ג׳', 'ד׳', 'ה׳', 'ו׳', 'ש׳']
const MONTH_NAMES_HE = ['ינואר', 'פברואר', 'מרץ', 'אפריל', 'מאי', 'יוני',
  'יולי', 'אוגוסט', 'ספטמבר', 'אוקטובר', 'נובמבר', 'דצמבר']

function parseDate(s: string) { return new Date(s + 'T12:00:00') }
function toDateStr(d: Date) { return d.toISOString().split('T')[0] }

function addDays(s: string, n: number) {
  const d = parseDate(s); d.setDate(d.getDate() + n); return toDateStr(d)
}
function addMonths(s: string, n: number) {
  const d = parseDate(s); d.setMonth(d.getMonth() + n); return toDateStr(d)
}

function formatDateLong(s: string) {
  return parseDate(s).toLocaleDateString('he-IL', {
    weekday: 'long', day: 'numeric', month: 'long', year: 'numeric',
  })
}

function getWeekDays(dateStr: string): string[] {
  const d = parseDate(dateStr)
  const sunday = new Date(d)
  sunday.setDate(d.getDate() - d.getDay())
  return Array.from({ length: 7 }, (_, i) => {
    const dd = new Date(sunday); dd.setDate(sunday.getDate() + i); return toDateStr(dd)
  })
}

function getMonthGrid(yearMonth: string): (string | null)[] {
  const [y, m] = yearMonth.split('-').map(Number)
  const firstDow = new Date(y, m - 1, 1).getDay()
  const days = new Date(y, m, 0).getDate()
  const cells: (string | null)[] = Array(firstDow).fill(null)
  for (let i = 1; i <= days; i++)
    cells.push(`${yearMonth}-${String(i).padStart(2, '0')}`)
  while (cells.length % 7 !== 0) cells.push(null)
  return cells
}

// ─── Constants ────────────────────────────────────────────────────────────────

const MEAL_TYPES = ['breakfast', 'lunch', 'dinner', 'snack'] as const
const MEAL_LABELS: Record<string, string> = {
  breakfast: 'ארוחת בוקר',
  lunch: 'ארוחת צהריים',
  dinner: 'ארוחת ערב',
  snack: 'חטיף',
}

// ─── Component ────────────────────────────────────────────────────────────────

export default function DashboardClient({
  userId, initialProfile, initialLogs, today, createdAt,
}: DashboardClientProps) {
  const supabase = createClient()

  // Date / view state
  const [selectedDate, setSelectedDate] = useState(today)
  const [viewMode, setViewMode] = useState<'day' | 'week' | 'month'>('day')
  const [calMonth, setCalMonth] = useState(today.slice(0, 7))

  // Data state
  const [profile] = useState<Profile | null>(initialProfile)
  const [logs, setLogs] = useState<LogEntry[]>(initialLogs)
  const [loadingLogs, setLoadingLogs] = useState(false)

  // Food adder state
  const [activeMeal, setActiveMeal] = useState<string | null>(null)
  const [searchQuery, setSearchQuery] = useState('')
  const [searchResults, setSearchResults] = useState<any[]>([])
  const [searchLoading, setSearchLoading] = useState(false)
  const [cart, setCart] = useState<CartItem[]>([])
  const [saving, setSaving] = useState(false)
  const [saveError, setSaveError] = useState<string | null>(null)
  const searchRef = useRef<NodeJS.Timeout>()
  const isFirstRender = useRef(true)

  // AI lookup state
  const [aiMode, setAiMode] = useState<'none' | 'describe'>('none')
  const [aiDescribe, setAiDescribe] = useState('')
  const [aiLoading, setAiLoading] = useState(false)
  const [aiResult, setAiResult] = useState<AiResult | null>(null)

  // ── Data fetching ──────────────────────────────────────────────────────────

  const fetchLogs = useCallback(async (date: string) => {
    setLoadingLogs(true)
    const { data } = await supabase
      .from('daily_logs')
      .select('*, food:foods(*), portion:food_portions(*)')
      .eq('user_id', userId)
      .eq('log_date', date)
      .order('created_at', { ascending: true })
    setLogs(data || [])
    setLoadingLogs(false)
  }, [userId])

  useEffect(() => {
    if (isFirstRender.current) { isFirstRender.current = false; return }
    fetchLogs(selectedDate)
  }, [selectedDate])

  // Realtime subscription
  useEffect(() => {
    const channel = supabase
      .channel(`logs:${userId}:${selectedDate}`)
      .on('postgres_changes', {
        event: '*', schema: 'public', table: 'daily_logs',
        filter: `user_id=eq.${userId}`,
      }, () => fetchLogs(selectedDate))
      .subscribe()
    return () => { supabase.removeChannel(channel) }
  }, [userId, selectedDate])

  // Food search
  useEffect(() => {
    if (!searchQuery.trim()) { setSearchResults([]); return }
    clearTimeout(searchRef.current)
    searchRef.current = setTimeout(async () => {
      setSearchLoading(true)
      const { data } = await supabase
        .from('foods')
        .select('*, portions:food_portions(*)')
        .or(`name_he.ilike.%${searchQuery}%,name_en.ilike.%${searchQuery}%`)
        .eq('is_active', true)
        .order('name_he')
        .limit(20)
      const results = data || []
      setSearchResults(results)
      setSearchLoading(false)
      if (results.length === 0 && searchQuery.trim().length >= 2) {
        runAiLookup('search', searchQuery.trim())
      } else {
        setAiResult(null)
      }
    }, 300)
    return () => clearTimeout(searchRef.current)
  }, [searchQuery])

  // ── Date navigation ────────────────────────────────────────────────────────

  function selectDate(date: string) {
    if (date < createdAt) return
    setSelectedDate(date)
    setCalMonth(date.slice(0, 7))
    closeAdder()
  }

  function shiftDate(n: number) {
    const next = addDays(selectedDate, n)
    if (n < 0 && next < createdAt) return
    selectDate(next)
  }

  // ── Food adder ─────────────────────────────────────────────────────────────

  function openAdder(meal: string) {
    setActiveMeal(meal); setSearchQuery(''); setSearchResults([])
    setCart([]); setAiMode('none'); setAiDescribe(''); setAiResult(null); setSaveError(null)
  }

  function closeAdder() {
    setActiveMeal(null); setSearchQuery(''); setSearchResults([])
    setCart([]); setAiMode('none'); setAiDescribe(''); setAiResult(null); setSaveError(null)
  }

  async function runAiLookup(type: 'search' | 'describe', query: string) {
    setAiLoading(true); setAiResult(null)
    try {
      const res = await fetch('/api/foods/ai-lookup', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ type, query }),
      })
      const data = await res.json()
      if (data.error) throw new Error(data.error)
      setAiResult(data)
    } catch {
      setAiResult(null)
    } finally {
      setAiLoading(false)
    }
  }

  async function addAiResultToCart() {
    if (!aiResult) return
    setAiLoading(true)
    setSaveError(null)
    try {
      const res = await fetch('/api/foods/quick-add', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify(aiResult),
      })
      const food = await res.json()
      if (food.error) throw new Error(food.error)
      const defaultPortion = food.portions?.find((p: any) => p.is_default) ?? food.portions?.[0]
      if (!defaultPortion) throw new Error('No portions returned')
      setCart(prev => [...prev, { food, portion: defaultPortion, quantity: 1 }])
      setAiResult(null); setAiMode('none'); setAiDescribe(''); setSearchQuery('')
    } catch (err: any) {
      setSaveError('שגיאה בהוספת המזון: ' + (err?.message ?? 'נסה שוב'))
    } finally {
      setAiLoading(false)
    }
  }

  function addToCart(food: any) {
    if (cart.some(c => c.food.id === food.id)) return
    const defaultPortion = food.portions?.find((p: any) => p.is_default) ?? food.portions?.[0]
    if (!defaultPortion) return
    setCart(prev => [...prev, { food, portion: defaultPortion, quantity: 1 }])
  }

  function removeFromCart(foodId: string) {
    setCart(prev => prev.filter(c => c.food.id !== foodId))
  }

  function updateCartPortion(foodId: string, portionId: string) {
    setCart(prev => prev.map(c => {
      if (c.food.id !== foodId) return c
      const p = c.food.portions?.find((p: any) => p.id === portionId)
      return p ? { ...c, portion: p } : c
    }))
  }

  function updateCartQty(foodId: string, delta: number) {
    setCart(prev => prev.map(c =>
      c.food.id !== foodId ? c : { ...c, quantity: Math.max(0.5, c.quantity + delta) }
    ))
  }

  async function saveCart() {
    if (!activeMeal || cart.length === 0) return
    setSaving(true)
    setSaveError(null)
    const { error } = await supabase.from('daily_logs').insert(
      cart.map(item => ({
        user_id: userId,
        log_date: selectedDate,
        meal_type: activeMeal,
        food_id: item.food.id,
        portion_id: item.portion.id,
        quantity: item.quantity,
        yellow_stars_consumed: parseFloat(item.portion.yellow_stars) * item.quantity,
        red_stars_consumed: parseFloat(item.portion.red_stars) * item.quantity,
      }))
    )
    setSaving(false)
    if (error) {
      setSaveError('שגיאה בשמירה: ' + error.message)
      return
    }
    closeAdder()
    fetchLogs(selectedDate)
  }

  async function deleteEntry(id: string) {
    await supabase.from('daily_logs').delete().eq('id', id)
    fetchLogs(selectedDate)
  }

  // ── Derived values ─────────────────────────────────────────────────────────

  const totalQuota = profile?.total_quota ?? 12
  const redQuota = profile?.red_quota ?? 3
  const totalYellow = logs.reduce((s, e) => s + (parseFloat(e.yellow_stars_consumed as any) || 0), 0)
  const totalRed = logs.reduce((s, e) => s + (parseFloat(e.red_stars_consumed as any) || 0), 0)
  const isToday = selectedDate === today

  // ── Render ─────────────────────────────────────────────────────────────────

  return (
    <div className="space-y-4">

      {/* ── Date navigator ── */}
      <div className="bg-card rounded-2xl border-2 border-border shadow-card p-4 space-y-3">
        <div className="flex items-center justify-between">
          <button
            onClick={() => shiftDate(-1)}
            disabled={addDays(selectedDate, -1) < createdAt}
            className="w-9 h-9 flex items-center justify-center rounded-xl hover:bg-muted disabled:opacity-25 text-xl transition-colors text-foreground"
          >›</button>

          <div className="text-center">
            <div className="font-medium text-foreground text-sm">{formatDateLong(selectedDate)}</div>
            {!isToday && (
              <button onClick={() => selectDate(today)} className="text-xs text-primary hover:underline mt-0.5">
                חזור להיום
              </button>
            )}
            {isToday && <div className="text-xs text-primary mt-0.5 font-medium">היום</div>}
          </div>

          <button
            onClick={() => shiftDate(1)}
            className="w-9 h-9 flex items-center justify-center rounded-xl hover:bg-muted text-xl transition-colors text-foreground"
          >‹</button>
        </div>

        {/* View mode switcher */}
        <div className="flex gap-1 justify-center">
          {(['day', 'week', 'month'] as const).map(mode => (
            <button
              key={mode}
              onClick={() => setViewMode(mode)}
              className={`px-4 py-1.5 rounded-xl text-sm font-medium transition-colors ${
                viewMode === mode
                  ? 'bg-primary text-primary-fg'
                  : 'bg-muted text-muted-fg hover:text-foreground'
              }`}
            >
              {mode === 'day' ? 'יום' : mode === 'week' ? 'שבוע' : 'חודש'}
            </button>
          ))}
        </div>

        {/* Week strip */}
        {viewMode === 'week' && (
          <div className="grid grid-cols-7 gap-1 pt-1">
            {getWeekDays(selectedDate).map(day => {
              const d = parseDate(day)
              const isSelected = day === selectedDate
              const isTodayDay = day === today
              const isDisabled = day < createdAt
              return (
                <button
                  key={day}
                  onClick={() => !isDisabled && selectDate(day)}
                  disabled={isDisabled}
                  className={`flex flex-col items-center py-2 rounded-xl transition-colors text-xs ${
                    isSelected ? 'bg-primary text-primary-fg' :
                    isTodayDay ? 'bg-secondary/40 border border-secondary text-foreground' :
                    isDisabled ? 'opacity-25 cursor-not-allowed text-muted-fg' :
                    'hover:bg-muted text-muted-fg'
                  }`}
                >
                  <span>{DAY_SHORT_HE[d.getDay()]}</span>
                  <span className="font-semibold text-sm mt-0.5">{d.getDate()}</span>
                </button>
              )
            })}
          </div>
        )}

        {/* Month calendar */}
        {viewMode === 'month' && (
          <div className="pt-1">
            <div className="flex items-center justify-between mb-2">
              <button
                onClick={() => setCalMonth(m => addMonths(m + '-01', -1).slice(0, 7))}
                className="w-8 h-8 flex items-center justify-center rounded-xl hover:bg-muted text-lg text-foreground"
              >›</button>
              <span className="text-sm font-semibold text-foreground">
                {MONTH_NAMES_HE[parseInt(calMonth.split('-')[1]) - 1]} {calMonth.split('-')[0]}
              </span>
              <button
                onClick={() => setCalMonth(m => addMonths(m + '-01', 1).slice(0, 7))}
                className="w-8 h-8 flex items-center justify-center rounded-xl hover:bg-muted text-lg text-foreground"
              >‹</button>
            </div>
            <div className="grid grid-cols-7 text-center mb-1">
              {DAY_SHORT_HE.map(d => (
                <div key={d} className="text-xs text-muted-fg py-1">{d}</div>
              ))}
            </div>
            <div className="grid grid-cols-7 gap-0.5">
              {getMonthGrid(calMonth).map((day, i) => {
                if (!day) return <div key={i} />
                const isSelected = day === selectedDate
                const isTodayDay = day === today
                const isDisabled = day < createdAt
                return (
                  <button
                    key={day}
                    onClick={() => !isDisabled && selectDate(day)}
                    disabled={isDisabled}
                    className={`aspect-square flex items-center justify-center rounded-xl text-sm transition-colors ${
                      isSelected ? 'bg-primary text-primary-fg font-bold' :
                      isTodayDay ? 'bg-secondary/40 border border-secondary text-foreground font-semibold' :
                      isDisabled ? 'opacity-20 cursor-not-allowed text-muted-fg' :
                      'hover:bg-muted text-foreground'
                    }`}
                  >
                    {parseDate(day).getDate()}
                  </button>
                )
              })}
            </div>
          </div>
        )}
      </div>

      {/* ── Star quota ── */}
      <div className="bg-card rounded-2xl border-2 border-border shadow-card p-4 space-y-4">
        <h2 className="font-display font-normal text-lg text-foreground">מאזן כוכבים יומי</h2>
        <StarQuotaPanel yellowUsed={totalYellow} redUsed={totalRed} totalQuota={totalQuota} />
      </div>

      {/* ── Meal sections ── */}
      {loadingLogs ? (
        <div className="text-center text-muted-fg py-8 text-sm">טוען...</div>
      ) : (
        MEAL_TYPES.map(mealType => {
          const entries = logs.filter(l => l.meal_type === mealType)
          const mealYellow = entries.reduce((s, e) => s + (parseFloat(e.yellow_stars_consumed as any) || 0), 0)
          const mealRed = entries.reduce((s, e) => s + (parseFloat(e.red_stars_consumed as any) || 0), 0)
          const isOpen = activeMeal === mealType

          return (
            <div key={mealType} className="bg-card rounded-2xl border-2 border-border shadow-card overflow-hidden">

              {/* Meal header */}
              <div className="px-4 py-3 bg-party-header border-b-2 border-border flex items-center justify-between">
                <h3 className="font-display font-normal text-lg text-foreground">{MEAL_LABELS[mealType]}</h3>
                <div className="flex items-center gap-3">
                  <div className="flex gap-2 text-sm">
                    {mealYellow > 0 && <span className="text-star-yellow font-medium">⭐ {mealYellow}</span>}
                    {mealRed > 0 && <span className="text-star-red font-medium">🔴 {mealRed}</span>}
                  </div>
                  <button
                    onClick={() => isOpen ? closeAdder() : openAdder(mealType)}
                    className={`text-sm px-3 py-1.5 rounded-xl font-medium transition-colors ${
                      isOpen
                        ? 'bg-muted text-muted-fg'
                        : 'bg-primary hover:bg-primary/90 text-primary-fg'
                    }`}
                  >
                    {isOpen ? '✕ סגור' : '+ הוסף'}
                  </button>
                </div>
              </div>

              {/* Log entries */}
              {entries.length > 0 && (
                <div className="divide-y divide-border">
                  {entries.map(entry => (
                    <div key={entry.id} className="px-4 py-3 flex items-center justify-between">
                      <div>
                        <div className="font-medium text-foreground">{entry.food?.name_he}</div>
                        <div className="text-sm text-muted-fg">
                          {entry.portion?.label_he}
                          {entry.quantity !== 1 && ` × ${entry.quantity}`}
                        </div>
                      </div>
                      <div className="flex items-center gap-3">
                        <div className="text-sm text-right">
                          {parseFloat(entry.yellow_stars_consumed as any) > 0 && (
                            <div className="text-star-yellow font-medium">⭐ {parseFloat(entry.yellow_stars_consumed as any)}</div>
                          )}
                          {parseFloat(entry.red_stars_consumed as any) > 0 && (
                            <div className="text-star-red font-medium">🔴 {parseFloat(entry.red_stars_consumed as any)}</div>
                          )}
                          {!parseFloat(entry.yellow_stars_consumed as any) && !parseFloat(entry.red_stars_consumed as any) && (
                            <div className="text-success text-xs font-medium">✓ חינם</div>
                          )}
                        </div>
                        <button
                          onClick={() => deleteEntry(entry.id)}
                          className="text-muted-fg hover:text-destructive transition-colors"
                        >✕</button>
                      </div>
                    </div>
                  ))}
                </div>
              )}

              {entries.length === 0 && !isOpen && (
                <div className="px-4 py-5 text-center text-muted-fg text-sm">
                  לא נוספו מזונות לארוחה זו
                </div>
              )}

              {/* ── Inline food adder ── */}
              {isOpen && (
                <div className="border-t-2 border-border bg-background/60 p-4 space-y-3">

                  {/* Search input */}
                  <input
                    type="text"
                    value={searchQuery}
                    onChange={e => setSearchQuery(e.target.value)}
                    placeholder="חפש מזון (עברית או אנגלית)..."
                    autoFocus
                    className="w-full px-3 py-2.5 border-2 border-border rounded-xl text-sm bg-card focus:outline-none focus:ring-2 focus:ring-primary/40 focus:border-primary text-right text-foreground placeholder:text-muted-fg transition-colors"
                  />

                  {/* Search results */}
                  {searchLoading && (
                    <div className="text-center text-muted-fg text-xs py-1">מחפש...</div>
                  )}
                  {searchResults.length > 0 && (
                    <div className="bg-card border-2 border-border rounded-2xl divide-y divide-border shadow-soft overflow-hidden">
                      <div className="max-h-48 overflow-y-auto">
                        {searchResults.map(food => {
                          const inCart = cart.some(c => c.food.id === food.id)
                          return (
                            <button
                              key={food.id}
                              onClick={() => inCart ? removeFromCart(food.id) : addToCart(food)}
                              className={`w-full text-right px-3 py-2.5 flex items-center justify-between transition-colors ${
                                inCart ? 'bg-secondary/30' : 'hover:bg-muted'
                              }`}
                            >
                              <div>
                                <div className="text-sm font-medium text-foreground">{food.name_he}</div>
                                <div className="text-xs text-muted-fg">{food.name_en}</div>
                              </div>
                              <div className={`w-5 h-5 rounded-full border-2 flex-shrink-0 flex items-center justify-center transition-colors ${
                                inCart ? 'bg-primary border-primary' : 'border-border'
                              }`}>
                                {inCart && <span className="text-primary-fg text-xs font-bold">✓</span>}
                              </div>
                            </button>
                          )
                        })}
                      </div>
                      {/* Escape hatch: trigger AI even when DB results exist */}
                      {!aiLoading && !aiResult && (
                        <button
                          onClick={() => runAiLookup('search', searchQuery)}
                          className="w-full text-xs text-muted-fg hover:text-foreground py-2 px-3 text-center hover:bg-muted transition-colors border-t border-border"
                        >
                          לא מצאת את מה שחיפשת? 🔍 חפש ב-AI
                        </button>
                      )}
                    </div>
                  )}

                  {/* AI lookup result / loading — shown when no DB results OR user triggered AI manually */}
                  {searchQuery.length >= 2 && !searchLoading && (searchResults.length === 0 || aiLoading || aiResult || aiMode === 'describe') && (
                    <div className="space-y-2">
                      {aiLoading && (
                        <div className="flex items-center gap-2 text-xs text-muted-fg bg-card border-2 border-border rounded-xl p-3">
                          <span className="animate-spin">⏳</span>
                          <span>מחפש מידע תזונתי ברשת...</span>
                        </div>
                      )}

                      {aiResult && !aiLoading && (
                        <div className="bg-card border-2 border-primary/40 rounded-2xl p-3 space-y-2 shadow-soft">
                          <div className="flex items-start justify-between gap-2">
                            <div>
                              <div className="font-display font-normal text-base text-foreground">{aiResult.name_he}</div>
                              <div className="text-xs text-muted-fg">{aiResult.name_en}</div>
                            </div>
                            <span className={`text-xs px-2 py-0.5 rounded-full font-medium flex-shrink-0 ${
                              aiResult.star_type === 'yellow' ? 'bg-amber-100 text-amber-700' :
                              aiResult.star_type === 'red' ? 'bg-red-100 text-red-700' :
                              'bg-green-100 text-green-700'
                            }`}>
                              {aiResult.star_type === 'yellow' ? '⭐ צהוב' :
                               aiResult.star_type === 'red' ? '🔴 אדום' : '✓ חינם'}
                            </span>
                          </div>
                          {aiResult.portions[0] && (
                            <div className="text-xs text-muted-fg">
                              {aiResult.portions[0].label_he} —{' '}
                              {aiResult.portions[0].yellow_stars > 0 && <span className="text-star-yellow">⭐ {aiResult.portions[0].yellow_stars}</span>}
                              {aiResult.portions[0].red_stars > 0 && <span className="text-star-red"> 🔴 {aiResult.portions[0].red_stars}</span>}
                              {aiResult.portions[0].yellow_stars === 0 && aiResult.portions[0].red_stars === 0 && <span className="text-success">חינם</span>}
                            </div>
                          )}
                          {aiResult.explanation && (
                            <p className="text-xs text-muted-fg leading-relaxed">{aiResult.explanation}</p>
                          )}
                          <button
                            onClick={addAiResultToCart}
                            className="w-full text-sm py-2 bg-primary hover:bg-primary/90 text-primary-fg font-medium rounded-xl transition-colors"
                          >
                            + הוסף לסל
                          </button>
                        </div>
                      )}

                      {/* Describe with AI option */}
                      <div className="border-2 border-dashed border-border rounded-2xl p-3 space-y-2">
                        <p className="text-xs text-muted-fg text-center">או תאר את המזון שאכלת ו-AI יחשב את הכוכבים</p>
                        {aiMode !== 'describe' ? (
                          <button
                            onClick={() => setAiMode('describe')}
                            className="w-full text-sm py-2 bg-secondary hover:bg-accent text-foreground font-medium rounded-xl transition-colors"
                          >
                            🤖 תאר עם AI
                          </button>
                        ) : (
                          <div className="space-y-2">
                            <textarea
                              value={aiDescribe}
                              onChange={e => setAiDescribe(e.target.value)}
                              placeholder='למשל: "אכלתי שקשוקה עם 2 ביצים, רוטב עגבניות ופיתה"'
                              rows={3}
                              autoFocus
                              className="w-full px-3 py-2 border-2 border-border rounded-xl text-sm bg-card focus:outline-none focus:ring-2 focus:ring-primary/40 focus:border-primary text-right text-foreground placeholder:text-muted-fg resize-none transition-colors"
                            />
                            <button
                              onClick={() => runAiLookup('describe', aiDescribe)}
                              disabled={aiDescribe.trim().length < 3 || aiLoading}
                              className="w-full text-sm py-2 bg-primary hover:bg-primary/90 disabled:opacity-40 text-primary-fg font-medium rounded-xl transition-colors"
                            >
                              {aiLoading ? '⏳ מחשב...' : 'קבל דירוג כוכבים'}
                            </button>
                          </div>
                        )}
                      </div>
                    </div>
                  )}

                  {!searchQuery && cart.length === 0 && (
                    <p className="text-center text-muted-fg text-xs py-1">חפש מזון להוסיף לארוחה</p>
                  )}

                  {/* Cart */}
                  {cart.length > 0 && (
                    <div className="space-y-2">
                      <p className="text-xs font-medium text-muted-fg">
                        {cart.length} {cart.length === 1 ? 'פריט נבחר' : 'פריטים נבחרו'}:
                      </p>

                      {cart.map(item => {
                        const yStars = parseFloat(item.portion.yellow_stars) * item.quantity
                        const rStars = parseFloat(item.portion.red_stars) * item.quantity
                        return (
                          <div key={item.food.id} className="bg-card rounded-2xl border-2 border-border p-3 space-y-2 shadow-soft">
                            <div className="flex items-center justify-between">
                              <span className="text-sm font-semibold text-foreground">{item.food.name_he}</span>
                              <button
                                onClick={() => removeFromCart(item.food.id)}
                                className="text-muted-fg hover:text-destructive transition-colors text-sm"
                              >✕</button>
                            </div>
                            <div className="flex items-center gap-2">
                              <select
                                value={item.portion.id}
                                onChange={e => updateCartPortion(item.food.id, e.target.value)}
                                className="flex-1 text-sm border-2 border-border rounded-xl px-2 py-1.5 focus:outline-none focus:ring-1 focus:ring-primary bg-background text-foreground"
                              >
                                {item.food.portions?.map((p: any) => (
                                  <option key={p.id} value={p.id}>{p.label_he}</option>
                                ))}
                              </select>
                              <div className="flex items-center gap-1.5 flex-shrink-0">
                                <button
                                  onClick={() => updateCartQty(item.food.id, -0.5)}
                                  className="w-7 h-7 bg-muted rounded-full text-base font-bold hover:bg-border flex items-center justify-center text-foreground transition-colors"
                                >−</button>
                                <span className="text-sm font-semibold w-5 text-center text-foreground">{item.quantity}</span>
                                <button
                                  onClick={() => updateCartQty(item.food.id, 0.5)}
                                  className="w-7 h-7 bg-muted rounded-full text-base font-bold hover:bg-border flex items-center justify-center text-foreground transition-colors"
                                >+</button>
                              </div>
                            </div>
                            {getPortionVisualHint(item.food.category, item.portion.grams) && (
                              <p className="text-xs text-muted-fg mt-0.5">
                                {getPortionVisualHint(item.food.category, item.portion.grams)}
                              </p>
                            )}
                            <div className="text-xs">
                              {yStars > 0 && <span className="text-star-yellow font-medium ml-2">⭐ {yStars}</span>}
                              {rStars > 0 && <span className="text-star-red font-medium">🔴 {rStars}</span>}
                              {yStars === 0 && rStars === 0 && <span className="text-success font-medium">✓ חינם</span>}
                            </div>
                          </div>
                        )
                      })}

                      {saveError && (
                        <p className="text-xs text-destructive text-center">{saveError}</p>
                      )}
                      <button
                        onClick={saveCart}
                        disabled={saving}
                        className="w-full py-3 bg-primary hover:bg-primary/90 text-primary-fg font-semibold rounded-2xl transition-colors text-sm disabled:opacity-50"
                      >
                        {saving ? 'שומר...' : `הוסף ${cart.length} ${cart.length === 1 ? 'פריט' : 'פריטים'} לרשומות`}
                      </button>
                    </div>
                  )}
                </div>
              )}
            </div>
          )
        })
      )}
    </div>
  )
}
