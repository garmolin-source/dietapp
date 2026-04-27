'use client'

import { useEffect, useState, useRef, useCallback } from 'react'
import { createClient } from '@/lib/supabase/client'
import HeroRing from './HeroRing'
import { getPortionVisualHint } from '@/lib/portionHint'
import { useVoiceInput } from '@/hooks/useVoiceInput'
import type { MealItem } from '@/app/api/foods/ai-meal/route'

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

  // Voice + multi-item meal state
  const [mealItems, setMealItems] = useState<MealItem[]>([])
  const [mealParsing, setMealParsing] = useState(false)
  const [mealError, setMealError] = useState<string | null>(null)
  const runMealParseRef = useRef<(d: string) => void>()

  const voice = useVoiceInput({
    lang: 'he-IL',
    onFinalTranscript: (t) => runMealParseRef.current?.(t),
  })

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
    setMealItems([]); setMealError(null); voice.reset()
  }

  function closeAdder() {
    setActiveMeal(null); setSearchQuery(''); setSearchResults([])
    setCart([]); setAiMode('none'); setAiDescribe(''); setAiResult(null); setSaveError(null)
    setMealItems([]); setMealError(null); voice.reset()
  }

  runMealParseRef.current = runMealParse

  async function runMealParse(description: string) {
    if (!description.trim()) return
    setMealParsing(true)
    setMealError(null)
    setMealItems([])
    try {
      const res = await fetch('/api/foods/ai-meal', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ description }),
      })
      const data = await res.json()
      if (data.error) throw new Error(data.error)
      setMealItems(data.items ?? [])
    } catch (err: any) {
      setMealError('שגיאה בניתוח הארוחה: ' + (err?.message ?? 'נסה שוב'))
    } finally {
      setMealParsing(false)
    }
  }

  async function saveMealItems() {
    if (!activeMeal || mealItems.length === 0) return
    setSaving(true)
    setSaveError(null)
    try {
      // Quick-add each item to get food_id + portion_id, then log
      const rows = await Promise.all(mealItems.map(async item => {
        const res = await fetch('/api/foods/quick-add', {
          method: 'POST',
          headers: { 'Content-Type': 'application/json' },
          body: JSON.stringify({
            name_en: item.name_en,
            name_he: item.name_he,
            category: item.category,
            star_type: item.star_type,
            portions: [{
              label_en: item.portion_label_en,
              label_he: item.portion_label_he,
              grams: item.grams,
              yellow_stars: item.yellow_stars,
              red_stars: item.red_stars,
              is_default: true,
              sort_order: 1,
            }],
          }),
        })
        const food = await res.json()
        if (food.error) throw new Error(food.error)
        const portion = food.portions?.[0]
        if (!portion) throw new Error('No portion returned for ' + item.name_he)
        return {
          user_id: userId,
          log_date: selectedDate,
          meal_type: activeMeal,
          food_id: food.id,
          portion_id: portion.id,
          quantity: 1,
          yellow_stars_consumed: item.yellow_stars,
          red_stars_consumed: item.red_stars,
        }
      }))

      const { error } = await supabase.from('daily_logs').insert(rows)
      if (error) throw new Error(error.message)
      closeAdder()
      fetchLogs(selectedDate)
    } catch (err: any) {
      setSaveError('שגיאה בשמירה: ' + (err?.message ?? 'נסה שוב'))
    } finally {
      setSaving(false)
    }
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

  // ── Derived values (for veggie free count) ────────────────────────────────

  const freeCount = logs.filter(e =>
    !parseFloat(e.yellow_stars_consumed as any) && !parseFloat(e.red_stars_consumed as any)
  ).length

  // ── Meal header tints ──────────────────────────────────────────────────────

  const MEAL_TINT: Record<string, string> = {
    breakfast: 'bg-mustard-bg',
    snack:     'bg-leaf-bg',
    lunch:     'bg-brick-bg',
    dinner:    'bg-[#ead6c0]',
  }

  const MEAL_ICON: Record<string, string> = {
    breakfast: '☀️',
    snack:     '☁️',
    lunch:     '🍽️',
    dinner:    '🌙',
  }

  // ── Render ─────────────────────────────────────────────────────────────────

  return (
    <div className="space-y-4">

      {/* ── Hero quota card ── */}
      <div
        className="rounded-card border border-border shadow-card overflow-hidden"
        style={{ background: 'linear-gradient(180deg, #eddcc4 0%, #f6ece0 100%)' }}
      >
        <div className="p-4">
          {/* Date navigator */}
          <div className="relative flex items-center justify-center mb-4">
            <div className="flex items-center gap-1" dir="ltr">
              <button
                onClick={() => shiftDate(-1)}
                disabled={addDays(selectedDate, -1) < createdAt}
                className="w-9 h-9 flex items-center justify-center rounded-pill bg-card border border-border hover:bg-muted disabled:opacity-25 text-xl transition-colors text-foreground shadow-soft"
              >‹</button>

              <div className="text-center min-w-[150px]">
                <div className="font-semibold text-foreground text-sm">{formatDateLong(selectedDate)}</div>
                {!isToday && (
                  <button onClick={() => selectDate(today)} className="text-xs text-mustard hover:underline mt-0.5 font-medium">
                    חזור להיום
                  </button>
                )}
                {isToday && <div className="text-xs text-mustard mt-0.5 font-semibold">היום</div>}
              </div>

              <button
                onClick={() => shiftDate(1)}
                className="w-9 h-9 flex items-center justify-center rounded-pill bg-card border border-border hover:bg-muted text-xl transition-colors text-foreground shadow-soft"
              >›</button>
            </div>

            <div className="absolute right-0 flex gap-1">
              {(['day', 'week', 'month'] as const).map(mode => (
                <button
                  key={mode}
                  onClick={() => setViewMode(mode)}
                  className={`px-2.5 py-1 rounded-pill text-xs font-semibold transition-colors ${
                    viewMode === mode
                      ? 'bg-primary text-primary-fg'
                      : 'bg-card/80 text-muted-fg hover:text-foreground border border-border'
                  }`}
                >
                  {mode === 'day' ? 'יום' : mode === 'week' ? 'שבוע' : 'חודש'}
                </button>
              ))}
            </div>
          </div>

          {/* Week strip */}
          {viewMode === 'week' && (
            <div className="grid grid-cols-7 gap-1 mb-4">
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
                    className={`flex flex-col items-center py-2 rounded-card transition-colors text-xs ${
                      isSelected ? 'bg-primary text-primary-fg' :
                      isTodayDay ? 'bg-mustard-bg border border-mustard text-foreground' :
                      isDisabled ? 'opacity-25 cursor-not-allowed text-muted-fg' :
                      'hover:bg-muted text-muted-fg'
                    }`}
                  >
                    <span>{DAY_SHORT_HE[d.getDay()]}</span>
                    <span className="font-bold text-sm mt-0.5">{d.getDate()}</span>
                  </button>
                )
              })}
            </div>
          )}

          {/* Month calendar */}
          {viewMode === 'month' && (
            <div className="mb-4">
              <div className="flex items-center justify-between mb-2">
                <button
                  onClick={() => setCalMonth(m => addMonths(m + '-01', -1).slice(0, 7))}
                  className="w-8 h-8 flex items-center justify-center rounded-pill bg-card border border-border hover:bg-muted text-lg text-foreground"
                >›</button>
                <span className="text-sm font-bold text-foreground">
                  {MONTH_NAMES_HE[parseInt(calMonth.split('-')[1]) - 1]} {calMonth.split('-')[0]}
                </span>
                <button
                  onClick={() => setCalMonth(m => addMonths(m + '-01', 1).slice(0, 7))}
                  className="w-8 h-8 flex items-center justify-center rounded-pill bg-card border border-border hover:bg-muted text-lg text-foreground"
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
                        isTodayDay ? 'bg-mustard-bg border border-mustard text-foreground font-semibold' :
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

          {/* Hero ring + breakdown */}
          <div className="bg-card rounded-card border border-border p-4">
            <div className="flex flex-col items-center">
              <HeroRing
                yellowUsed={totalYellow}
                redUsed={totalRed}
                totalQuota={totalQuota}
                redQuota={redQuota}
                size={200}
              />

              {/* Breakdown chips */}
              <div className="grid grid-cols-3 gap-2 w-full mt-4">
                {/* Yellow / protein+fat */}
                <div className="bg-mustard-bg rounded-chip p-2.5 text-center">
                  <div className="text-[10px] font-bold text-foreground/80 leading-tight">חלבון·שומן</div>
                  <div className="mt-1 text-lg font-bold text-mustard leading-none">
                    {Math.round(totalYellow * 10) / 10}
                    <span className="text-[10px] text-muted-fg font-semibold">/{Math.max(0, totalQuota - redQuota)}</span>
                  </div>
                </div>
                {/* Red / carbs */}
                <div className="bg-brick-bg rounded-chip p-2.5 text-center">
                  <div className="text-[10px] font-bold text-foreground/80 leading-tight">פחמימות</div>
                  <div className="mt-1 text-lg font-bold text-brick leading-none">
                    {Math.round(totalRed * 10) / 10}
                    <span className="text-[10px] text-muted-fg font-semibold">/{redQuota}</span>
                  </div>
                </div>
                {/* Free / veggies */}
                <div className="bg-leaf-bg rounded-chip p-2.5 text-center">
                  <div className="text-[10px] font-bold text-foreground/80 leading-tight">ירקות חופשי</div>
                  <div className="mt-1 text-lg font-bold text-leaf leading-none">{freeCount}</div>
                </div>
              </div>
            </div>
          </div>

          {/* Red stars remaining strip */}
          {redQuota - totalRed > 0 && (
            <div className="mt-3 flex items-center gap-3 px-3 py-2.5 bg-mustard-bg rounded-chip border border-border-dk">
              <div className="w-7 h-7 rounded-pill bg-mustard flex-shrink-0 flex items-center justify-center text-white text-sm">
                🔴
              </div>
              <p className="text-sm text-foreground">
                <span className="font-bold">{Math.round((redQuota - totalRed) * 10) / 10}</span> כוכבים אדומים נשארו לך להיום
              </p>
            </div>
          )}
        </div>
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
            <div key={mealType} className="bg-card rounded-card border border-border shadow-card overflow-hidden">

              {/* Meal header */}
              <div className={`px-4 py-3 ${MEAL_TINT[mealType]} border-b border-border flex items-center justify-between`}>
                <div className="flex items-center gap-2.5">
                  <div className={`w-9 h-9 rounded-xl ${MEAL_TINT[mealType]} border border-border-dk flex items-center justify-center text-base`}>
                    {MEAL_ICON[mealType]}
                  </div>
                  <h3 className="font-bold text-base text-foreground">{MEAL_LABELS[mealType]}</h3>
                </div>
                <div className="flex items-center gap-2">
                  {/* Meal star chips */}
                  {(mealYellow > 0 || mealRed > 0) && (
                    <div className="flex gap-1.5">
                      {mealYellow > 0 && (
                        <span className="px-2 py-0.5 rounded-pill bg-mustard-bg text-mustard text-xs font-bold">
                          ★ {Math.round(mealYellow * 10) / 10}
                        </span>
                      )}
                      {mealRed > 0 && (
                        <span className="px-2 py-0.5 rounded-pill bg-brick-bg text-brick text-xs font-bold">
                          ★ {Math.round(mealRed * 10) / 10}
                        </span>
                      )}
                      {mealYellow === 0 && mealRed === 0 && entries.length > 0 && (
                        <span className="px-2 py-0.5 rounded-pill bg-leaf-bg text-leaf text-xs font-bold">חופשי</span>
                      )}
                    </div>
                  )}
                  <button
                    onClick={() => isOpen ? closeAdder() : openAdder(mealType)}
                    className={`text-sm px-3 py-1.5 rounded-pill font-semibold transition-colors ${
                      isOpen
                        ? 'bg-muted text-muted-fg'
                        : 'bg-primary text-primary-fg hover:bg-primary/90'
                    }`}
                  >
                    {isOpen ? '✕ סגור' : '+ הוסף'}
                  </button>
                </div>
              </div>

              {/* Log entries */}
              {entries.length > 0 && (
                <div className="divide-y divide-border">
                  {entries.map(entry => {
                    const yE = parseFloat(entry.yellow_stars_consumed as any) || 0
                    const rE = parseFloat(entry.red_stars_consumed as any) || 0
                    return (
                      <div key={entry.id} className="px-4 py-3 flex items-center justify-between">
                        <div className="min-w-0">
                          <div className="font-semibold text-sm text-foreground">{entry.food?.name_he}</div>
                          <div className="text-xs text-muted-fg mt-0.5">
                            {entry.portion?.label_he}
                            {entry.quantity !== 1 && ` × ${entry.quantity}`}
                          </div>
                        </div>
                        <div className="flex items-center gap-2 flex-shrink-0">
                          <div className="flex gap-1">
                            {yE > 0 && (
                              <span className="px-1.5 py-0.5 rounded-pill bg-mustard-bg text-mustard text-xs font-bold">★ {yE}</span>
                            )}
                            {rE > 0 && (
                              <span className="px-1.5 py-0.5 rounded-pill bg-brick-bg text-brick text-xs font-bold">★ {rE}</span>
                            )}
                            {yE === 0 && rE === 0 && (
                              <span className="px-1.5 py-0.5 rounded-pill bg-leaf-bg text-leaf text-xs font-bold">✓</span>
                            )}
                          </div>
                          <button
                            onClick={() => deleteEntry(entry.id)}
                            className="w-6 h-6 rounded-pill text-muted-lo hover:text-brick transition-colors flex items-center justify-center text-xs"
                          >✕</button>
                        </div>
                      </div>
                    )
                  })}
                </div>
              )}

              {entries.length === 0 && !isOpen && (
                <button
                  onClick={() => openAdder(mealType)}
                  className="w-full px-4 py-4 text-center text-muted-fg text-sm border-none bg-transparent hover:bg-muted transition-colors cursor-pointer"
                >
                  + הוסף פריט לארוחה
                </button>
              )}

              {/* ── Inline food adder ── */}
              {isOpen && (
                <div className="border-t border-border bg-background/60 p-4 space-y-3">

                  {/* ── Voice panel (primary) ── */}
                  <div className="bg-card border border-border rounded-card p-4 space-y-3">
                    <p className="text-xs font-semibold text-muted-fg text-center tracking-wide">דבר — מה אכלת?</p>

                    {/* Mic button */}
                    <div className="flex justify-center">
                      <button
                        onClick={() => voice.state === 'listening' ? voice.stop() : voice.start()}
                        disabled={mealParsing}
                        className={`w-16 h-16 rounded-pill flex items-center justify-center text-2xl shadow-elevated transition-all ${
                          voice.state === 'listening'
                            ? 'bg-brick text-white scale-110 animate-pulse'
                            : voice.state === 'processing' || mealParsing
                            ? 'bg-muted text-muted-fg'
                            : 'bg-primary text-white hover:scale-105'
                        }`}
                      >
                        {voice.state === 'listening' ? '⏹' : mealParsing ? '⏳' : '🎙️'}
                      </button>
                    </div>

                    {/* Live transcript */}
                    {(voice.transcript || voice.interimTranscript) && (
                      <div className="bg-muted rounded-xl px-3 py-2 text-sm text-foreground text-right min-h-[40px] leading-relaxed">
                        <span>{voice.transcript}</span>
                        {voice.interimTranscript && (
                          <span className="text-muted-fg"> {voice.interimTranscript}</span>
                        )}
                      </div>
                    )}

                    {voice.state === 'idle' && !voice.transcript && (
                      <p className="text-xs text-muted-fg text-center">
                        {voice.supported
                          ? 'לחץ על המיקרופון ותאר מה אכלת'
                          : 'זיהוי קול לא נתמך — השתמש בחיפוש טקסט למטה'}
                      </p>
                    )}

                    {voice.error && (
                      <p className="text-xs text-brick text-center">{voice.error}</p>
                    )}

                    {/* Parsing indicator */}
                    {mealParsing && (
                      <p className="text-xs text-muted-fg text-center animate-pulse">מנתח ארוחה...</p>
                    )}

                    {mealError && (
                      <p className="text-xs text-brick text-center">{mealError}</p>
                    )}

                    {/* Meal items review */}
                    {mealItems.length > 0 && !mealParsing && (
                      <div className="space-y-2">
                        <p className="text-xs font-semibold text-muted-fg">זוהו {mealItems.length} פריטים:</p>
                        <div className="bg-background rounded-card border border-border divide-y divide-border overflow-hidden">
                          {mealItems.map((item, i) => (
                            <div key={i} className="flex items-center justify-between px-3 py-2.5">
                              <div className="min-w-0">
                                <div className="text-sm font-semibold text-foreground">{item.name_he}</div>
                                <div className="text-xs text-muted-fg">{item.portion_label_he}</div>
                              </div>
                              <div className="flex items-center gap-1.5 flex-shrink-0">
                                {item.yellow_stars > 0 && (
                                  <span className="px-1.5 py-0.5 rounded-pill bg-mustard-bg text-mustard text-xs font-bold">★ {item.yellow_stars}</span>
                                )}
                                {item.red_stars > 0 && (
                                  <span className="px-1.5 py-0.5 rounded-pill bg-brick-bg text-brick text-xs font-bold">★ {item.red_stars}</span>
                                )}
                                {item.yellow_stars === 0 && item.red_stars === 0 && (
                                  <span className="px-1.5 py-0.5 rounded-pill bg-leaf-bg text-leaf text-xs font-bold">✓</span>
                                )}
                                <button
                                  onClick={() => setMealItems(prev => prev.filter((_, j) => j !== i))}
                                  className="w-5 h-5 rounded-pill text-muted-lo hover:text-brick transition-colors text-xs flex items-center justify-center"
                                >✕</button>
                              </div>
                            </div>
                          ))}
                        </div>
                        {saveError && <p className="text-xs text-brick text-center">{saveError}</p>}
                        <div className="flex gap-2">
                          <button
                            onClick={voice.reset}
                            className="flex-1 py-2.5 border border-border rounded-pill text-sm font-semibold text-foreground hover:bg-muted transition-colors"
                          >
                            נסה שוב
                          </button>
                          <button
                            onClick={saveMealItems}
                            disabled={saving}
                            className="flex-2 flex-1 py-2.5 bg-primary text-white rounded-pill text-sm font-bold hover:bg-primary/90 disabled:opacity-50 transition-colors"
                          >
                            {saving ? 'שומר...' : `רשום ${mealItems.length} פריטים`}
                          </button>
                        </div>
                      </div>
                    )}
                  </div>

                  {/* Divider */}
                  <div className="flex items-center gap-2">
                    <div className="flex-1 h-px bg-border" />
                    <span className="text-xs text-muted-fg font-medium">או חפש ידנית</span>
                    <div className="flex-1 h-px bg-border" />
                  </div>

                  {/* Search input */}
                  <div className="flex items-center gap-2 bg-card border border-border rounded-pill px-3 py-2 shadow-soft">
                    <span className="text-muted-fg text-sm">🔍</span>
                    <input
                      type="text"
                      value={searchQuery}
                      onChange={e => setSearchQuery(e.target.value)}
                      placeholder="חפש מזון (עברית או אנגלית)..."
                      className="flex-1 text-sm bg-transparent focus:outline-none text-right text-foreground placeholder:text-muted-fg"
                    />
                  </div>

                  {/* Search results */}
                  {searchLoading && (
                    <div className="text-center text-muted-fg text-xs py-1">מחפש...</div>
                  )}
                  {searchResults.length > 0 && (
                    <div className="bg-card border border-border rounded-card shadow-soft overflow-hidden">
                      <div className="max-h-48 overflow-y-auto divide-y divide-border">
                        {searchResults.map(food => {
                          const inCart = cart.some(c => c.food.id === food.id)
                          return (
                            <button
                              key={food.id}
                              onClick={() => inCart ? removeFromCart(food.id) : addToCart(food)}
                              className={`w-full text-right px-3 py-2.5 flex items-center justify-between transition-colors ${
                                inCart ? 'bg-mustard-bg' : 'hover:bg-muted'
                              }`}
                            >
                              <div>
                                <div className="text-sm font-semibold text-foreground">{food.name_he}</div>
                                <div className="text-xs text-muted-fg">{food.name_en}</div>
                              </div>
                              <div className={`w-5 h-5 rounded-pill border-2 flex-shrink-0 flex items-center justify-center transition-colors ${
                                inCart ? 'bg-mustard border-mustard' : 'border-border'
                              }`}>
                                {inCart && <span className="text-white text-xs font-bold">✓</span>}
                              </div>
                            </button>
                          )
                        })}
                      </div>
                      {!aiLoading && !aiResult && (
                        <button
                          onClick={() => runAiLookup('search', searchQuery)}
                          className="w-full text-xs text-muted-fg hover:text-foreground py-2 px-3 text-center hover:bg-muted transition-colors border-t border-border"
                        >
                          לא מצאת את מה שחיפשת? חפש ב-AI ✨
                        </button>
                      )}
                    </div>
                  )}

                  {/* AI lookup result / loading */}
                  {searchQuery.length >= 2 && !searchLoading && (searchResults.length === 0 || aiLoading || aiResult || aiMode === 'describe') && (
                    <div className="space-y-2">
                      {aiLoading && (
                        <div className="flex items-center gap-2 text-xs text-muted-fg bg-card border border-border rounded-card p-3">
                          <span className="animate-spin">⏳</span>
                          <span>מחפש מידע תזונתי ברשת...</span>
                        </div>
                      )}

                      {aiResult && !aiLoading && (
                        <div className="bg-card border border-mustard/30 rounded-card p-3 space-y-2 shadow-soft">
                          <div className="flex items-start justify-between gap-2">
                            <div>
                              <div className="font-bold text-base text-foreground">{aiResult.name_he}</div>
                              <div className="text-xs text-muted-fg">{aiResult.name_en}</div>
                            </div>
                            <span className={`text-xs px-2 py-0.5 rounded-pill font-bold flex-shrink-0 ${
                              aiResult.star_type === 'yellow' ? 'bg-mustard-bg text-mustard' :
                              aiResult.star_type === 'red' ? 'bg-brick-bg text-brick' :
                              'bg-leaf-bg text-leaf'
                            }`}>
                              {aiResult.star_type === 'yellow' ? '★ צהוב' :
                               aiResult.star_type === 'red' ? '★ אדום' : '✓ חינם'}
                            </span>
                          </div>
                          {aiResult.portions[0] && (
                            <div className="text-xs text-muted-fg">
                              {aiResult.portions[0].label_he} —{' '}
                              {aiResult.portions[0].yellow_stars > 0 && <span className="text-mustard font-semibold">★ {aiResult.portions[0].yellow_stars}</span>}
                              {aiResult.portions[0].red_stars > 0 && <span className="text-brick font-semibold"> ★ {aiResult.portions[0].red_stars}</span>}
                              {aiResult.portions[0].yellow_stars === 0 && aiResult.portions[0].red_stars === 0 && <span className="text-leaf">חינם</span>}
                            </div>
                          )}
                          {aiResult.explanation && (
                            <p className="text-xs text-muted-fg leading-relaxed">{aiResult.explanation}</p>
                          )}
                          <button
                            onClick={addAiResultToCart}
                            className="w-full text-sm py-2 bg-primary hover:bg-primary/90 text-primary-fg font-semibold rounded-pill transition-colors"
                          >
                            + הוסף לסל
                          </button>
                        </div>
                      )}

                      {/* Describe with AI option */}
                      <button
                        className="w-full flex items-center gap-3 bg-card border border-dashed border-border-dk rounded-card p-3 text-right hover:bg-muted transition-colors"
                        onClick={() => aiMode !== 'describe' && setAiMode('describe')}
                      >
                        <div className="w-9 h-9 rounded-xl bg-mustard-bg flex-shrink-0 flex items-center justify-center text-mustard">✨</div>
                        <div className="flex-1">
                          <div className="text-sm font-semibold text-foreground">לא מצאת? תאר ל-AI מה אכלת</div>
                          <div className="text-xs text-muted-fg mt-0.5">"אכלתי שקשוקה עם 2 ביצים ופיתה"</div>
                        </div>
                      </button>

                      {aiMode === 'describe' && (
                        <div className="space-y-2">
                          <textarea
                            value={aiDescribe}
                            onChange={e => setAiDescribe(e.target.value)}
                            placeholder='למשל: "אכלתי שקשוקה עם 2 ביצים, רוטב עגבניות ופיתה"'
                            rows={3}
                            autoFocus
                            className="w-full px-3 py-2 border border-border rounded-card text-sm bg-card focus:outline-none focus:ring-2 focus:ring-mustard/40 focus:border-mustard text-right text-foreground placeholder:text-muted-fg resize-none transition-colors"
                          />
                          <button
                            onClick={() => runAiLookup('describe', aiDescribe)}
                            disabled={aiDescribe.trim().length < 3 || aiLoading}
                            className="w-full text-sm py-2.5 bg-primary hover:bg-primary/90 disabled:opacity-40 text-primary-fg font-semibold rounded-pill transition-colors"
                          >
                            {aiLoading ? '⏳ מחשב...' : 'קבל דירוג כוכבים'}
                          </button>
                        </div>
                      )}
                    </div>
                  )}

                  {!searchQuery && cart.length === 0 && (
                    <p className="text-center text-muted-fg text-xs py-1">חפש מזון להוסיף לארוחה</p>
                  )}

                  {/* Cart */}
                  {cart.length > 0 && (
                    <div className="space-y-2">
                      <p className="text-xs font-semibold text-muted-fg">
                        {cart.length} {cart.length === 1 ? 'פריט נבחר' : 'פריטים נבחרו'}:
                      </p>

                      {cart.map(item => {
                        const yStars = parseFloat(item.portion.yellow_stars) * item.quantity
                        const rStars = parseFloat(item.portion.red_stars) * item.quantity
                        return (
                          <div key={item.food.id} className="bg-card rounded-card border border-border p-3 space-y-2 shadow-soft">
                            <div className="flex items-center justify-between">
                              <span className="text-sm font-bold text-foreground">{item.food.name_he}</span>
                              <button
                                onClick={() => removeFromCart(item.food.id)}
                                className="text-muted-lo hover:text-brick transition-colors text-sm w-6 h-6 flex items-center justify-center"
                              >✕</button>
                            </div>
                            <div className="flex items-center gap-2">
                              <select
                                value={item.portion.id}
                                onChange={e => updateCartPortion(item.food.id, e.target.value)}
                                className="flex-1 text-sm border border-border rounded-xl px-2 py-1.5 focus:outline-none focus:ring-1 focus:ring-mustard bg-background text-foreground"
                              >
                                {item.food.portions?.map((p: any) => (
                                  <option key={p.id} value={p.id}>{p.label_he}</option>
                                ))}
                              </select>
                              <div className="flex items-center gap-1.5 flex-shrink-0">
                                <button
                                  onClick={() => updateCartQty(item.food.id, -0.5)}
                                  className="w-7 h-7 bg-muted rounded-pill hover:bg-border flex items-center justify-center text-foreground transition-colors font-bold"
                                >−</button>
                                <span className="text-sm font-bold w-5 text-center text-foreground">{item.quantity}</span>
                                <button
                                  onClick={() => updateCartQty(item.food.id, 0.5)}
                                  className="w-7 h-7 bg-primary rounded-pill flex items-center justify-center text-white transition-colors font-bold"
                                >+</button>
                              </div>
                            </div>
                            {getPortionVisualHint(item.food.category, item.portion.grams) && (
                              <p className="text-xs text-muted-fg mt-0.5">
                                {getPortionVisualHint(item.food.category, item.portion.grams)}
                              </p>
                            )}
                            <div className="flex gap-1.5 text-xs mt-1">
                              {yStars > 0 && <span className="px-1.5 py-0.5 rounded-pill bg-mustard-bg text-mustard font-bold">★ {yStars}</span>}
                              {rStars > 0 && <span className="px-1.5 py-0.5 rounded-pill bg-brick-bg text-brick font-bold">★ {rStars}</span>}
                              {yStars === 0 && rStars === 0 && <span className="px-1.5 py-0.5 rounded-pill bg-leaf-bg text-leaf font-bold">✓ חינם</span>}
                            </div>
                          </div>
                        )
                      })}

                      {saveError && (
                        <p className="text-xs text-brick text-center">{saveError}</p>
                      )}
                      <button
                        onClick={saveCart}
                        disabled={saving}
                        className="w-full py-3 bg-primary hover:bg-primary/90 text-primary-fg font-bold rounded-pill transition-colors text-sm disabled:opacity-50"
                      >
                        {saving ? 'שומר...' : `רשום ${cart.length} ${cart.length === 1 ? 'פריט' : 'פריטים'}`}
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
