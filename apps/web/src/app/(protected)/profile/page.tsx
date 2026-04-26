'use client'

import { useState, useEffect } from 'react'
import { createClient } from '@/lib/supabase/client'

type Gender = 'female' | 'male'
type Goal = 'lose' | 'maintain'

const GOAL_LABELS: Record<Goal, string> = {
  lose: 'ירידה במשקל',
  maintain: 'שמירה על משקל',
}

const QUOTAS: Record<Gender, Record<Goal, { total: number; red: number }>> = {
  female: { lose: { total: 12, red: 3 }, maintain: { total: 15, red: 5 } },
  male:   { lose: { total: 15, red: 5 }, maintain: { total: 18, red: 7 } },
}

export default function ProfilePage() {
  const [displayName, setDisplayName] = useState('')
  const [weightKg, setWeightKg] = useState('')
  const [gender, setGender] = useState<Gender>('female')
  const [goal, setGoal] = useState<Goal>('lose')
  const [totalQuota, setTotalQuota] = useState('12')
  const [redQuota, setRedQuota] = useState('3')
  const [saving, setSaving] = useState(false)
  const [saved, setSaved] = useState(false)
  const [saveError, setSaveError] = useState<string | null>(null)
  const [email, setEmail] = useState('')
  const supabase = createClient()

  useEffect(() => {
    async function loadProfile() {
      const { data: { user } } = await supabase.auth.getUser()
      if (!user) return
      setEmail(user.email ?? '')

      const { data } = await supabase
        .from('user_profiles')
        .select('*')
        .eq('id', user.id)
        .single()

      if (data) {
        setDisplayName(data.display_name || '')
        setWeightKg(data.weight_kg?.toString() || '')
        setGender(data.gender || 'female')
        setGoal(data.goal || 'lose')
        setTotalQuota(data.total_quota?.toString() || '12')
        setRedQuota(data.red_quota?.toString() || '3')
      }
    }
    loadProfile()
  }, [])

  function handleGenderChange(g: Gender) {
    setGender(g)
    const q = QUOTAS[g][goal]
    setTotalQuota(q.total.toString())
    setRedQuota(q.red.toString())
  }

  function handleGoalChange(g: Goal) {
    setGoal(g)
    const q = QUOTAS[gender][g]
    setTotalQuota(q.total.toString())
    setRedQuota(q.red.toString())
  }

  async function handleSave(e: React.FormEvent) {
    e.preventDefault()
    setSaving(true)
    setSaveError(null)

    const { data: { user } } = await supabase.auth.getUser()
    if (!user) { setSaving(false); return }

    const { error } = await supabase.from('user_profiles').upsert({
      id: user.id,
      display_name: displayName,
      weight_kg: parseFloat(weightKg) || null,
      gender,
      goal,
      total_quota: parseFloat(totalQuota),
      red_quota: parseFloat(redQuota),
    })

    setSaving(false)
    if (error) {
      setSaveError(error.message)
      return
    }
    setSaved(true)
    setTimeout(() => setSaved(false), 3000)
  }

  return (
    <div className="space-y-6">
      <h1 className="font-display font-normal text-3xl text-foreground">הגדרות פרופיל</h1>

      <form onSubmit={handleSave} className="bg-card rounded-2xl border-2 border-border shadow-card overflow-hidden">
        {/* Card header */}
        <div className="bg-party-header border-b-2 border-border px-6 py-4">
          <h2 className="font-display font-normal text-xl text-foreground">פרטים אישיים</h2>
        </div>

        <div className="p-6 space-y-5">
          {saved && (
            <div className="bg-green-50 text-success p-3 rounded-xl text-sm border border-green-200">
              ✓ הפרופיל נשמר בהצלחה
            </div>
          )}
          {saveError && (
            <div className="bg-red-50 text-destructive p-3 rounded-xl text-sm border border-red-200" dir="ltr">
              שגיאה: {saveError}
            </div>
          )}

          <div>
            <label className="block text-sm font-medium text-foreground mb-1">שם</label>
            <input
              type="text"
              value={displayName}
              onChange={e => setDisplayName(e.target.value)}
              className="w-full px-3 py-2.5 border-2 border-border rounded-xl focus:outline-none focus:ring-2 focus:ring-primary/40 focus:border-primary bg-background text-foreground transition-colors"
            />
          </div>

          {email && (
            <div>
              <label className="block text-sm font-medium text-foreground mb-1">אימייל</label>
              <div className="px-3 py-2.5 bg-muted border-2 border-border rounded-xl text-sm text-muted-fg text-left" dir="ltr">
                {email}
              </div>
            </div>
          )}

          <div>
            <label className="block text-sm font-medium text-foreground mb-1">משקל (ק"ג)</label>
            <input
              type="number"
              step="0.1"
              value={weightKg}
              onChange={e => setWeightKg(e.target.value)}
              className="w-full px-3 py-2.5 border-2 border-border rounded-xl focus:outline-none focus:ring-2 focus:ring-primary/40 focus:border-primary bg-background text-foreground transition-colors"
              placeholder="70.5"
            />
          </div>

          <div>
            <label className="block text-sm font-medium text-foreground mb-2">מין</label>
            <div className="grid grid-cols-2 gap-3">
              {(['female', 'male'] as Gender[]).map(g => (
                <button
                  key={g}
                  type="button"
                  onClick={() => handleGenderChange(g)}
                  className={`py-2.5 rounded-2xl border-2 text-sm font-semibold transition-colors ${
                    gender === g
                      ? 'border-primary bg-primary/10 text-primary'
                      : 'border-border text-muted-fg hover:border-muted-fg hover:bg-muted'
                  }`}
                >
                  {g === 'female' ? '👩 אישה' : '👨 גבר'}
                </button>
              ))}
            </div>
          </div>

          <div>
            <label className="block text-sm font-medium text-foreground mb-2">מטרה</label>
            <div className="grid grid-cols-2 gap-3">
              {(Object.keys(GOAL_LABELS) as Goal[]).map(g => (
                <button
                  key={g}
                  type="button"
                  onClick={() => handleGoalChange(g)}
                  className={`py-2.5 rounded-2xl border-2 text-sm font-semibold transition-colors ${
                    goal === g
                      ? 'border-primary bg-primary/10 text-primary'
                      : 'border-border text-muted-fg hover:border-muted-fg hover:bg-muted'
                  }`}
                >
                  {GOAL_LABELS[g]}
                </button>
              ))}
            </div>
          </div>

          <div className="border-t-2 border-border pt-5">
            <h3 className="font-display font-normal text-lg text-foreground mb-1">מכסת כוכבים יומית</h3>
            <p className="text-xs text-muted-fg mb-4">
              בחירת המין והמטרה מעדכנת את המכסה המומלצת. ניתן לשנות ידנית.
            </p>
            <div className="grid grid-cols-2 gap-4">
              <div>
                <label className="block text-sm text-muted-fg mb-1">⭐ סה"כ כוכבים יומיים</label>
                <input
                  type="number"
                  step="1"
                  min="1"
                  value={totalQuota}
                  onChange={e => setTotalQuota(e.target.value)}
                  className="w-full px-3 py-2.5 border-2 border-border rounded-xl focus:outline-none focus:ring-2 focus:ring-primary/40 focus:border-primary bg-background text-foreground transition-colors"
                />
              </div>
              <div>
                <label className="block text-sm text-muted-fg mb-1">🔴 מתוכם כוכבי פחמימה</label>
                <input
                  type="number"
                  step="1"
                  min="0"
                  value={redQuota}
                  onChange={e => setRedQuota(e.target.value)}
                  className="w-full px-3 py-2.5 border-2 border-border rounded-xl focus:outline-none focus:ring-2 focus:ring-primary/40 focus:border-primary bg-background text-foreground transition-colors"
                />
              </div>
            </div>
          </div>

          <button
            type="submit"
            disabled={saving}
            className="w-full py-3 bg-primary hover:bg-primary/90 text-primary-fg font-semibold rounded-2xl transition-colors disabled:opacity-50"
          >
            {saving ? 'שומר...' : 'שמור'}
          </button>
        </div>
      </form>
    </div>
  )
}
