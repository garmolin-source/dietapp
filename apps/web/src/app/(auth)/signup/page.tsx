'use client'

import { useState } from 'react'
import { useRouter } from 'next/navigation'
import Link from 'next/link'
import { createClient } from '@/lib/supabase/client'

type Gender = 'female' | 'male'
type Goal = 'lose' | 'maintain'

const QUOTAS: Record<Gender, Record<Goal, { total: number; red: number }>> = {
  female: { lose: { total: 12, red: 3 }, maintain: { total: 15, red: 5 } },
  male:   { lose: { total: 15, red: 5 }, maintain: { total: 18, red: 7 } },
}

export default function SignupPage() {
  const [step, setStep] = useState<1 | 2>(1)
  const [email, setEmail] = useState('')
  const [password, setPassword] = useState('')
  const [displayName, setDisplayName] = useState('')
  const [gender, setGender] = useState<Gender>('female')
  const [goal, setGoal] = useState<Goal>('lose')
  const [error, setError] = useState<string | null>(null)
  const [loading, setLoading] = useState(false)
  const router = useRouter()
  const supabase = createClient()

  const quota = QUOTAS[gender][goal]

  async function handleSubmit(e: React.FormEvent) {
    e.preventDefault()
    if (step === 1) { setStep(2); return }

    setLoading(true)
    setError(null)

    const { data, error: signUpError } = await supabase.auth.signUp({
      email,
      password,
      options: { data: { display_name: displayName } },
    })

    if (signUpError || !data.user) {
      setError(signUpError?.message ?? 'שגיאה בהרשמה')
      setLoading(false)
      return
    }

    await supabase.from('user_profiles').upsert({
      id: data.user.id,
      display_name: displayName,
      gender,
      goal,
      total_quota: quota.total,
      red_quota: quota.red,
    })

    router.push('/dashboard')
    router.refresh()
  }

  return (
    <div className="min-h-screen flex items-center justify-center bg-background px-4">
      <div className="max-w-md w-full space-y-8 p-8 bg-card rounded-2xl border-2 border-border shadow-elevated">
        <div className="text-center">
          <h1 className="font-display font-normal text-4xl text-foreground">⭐ DietApp</h1>
          <h2 className="mt-2 text-lg text-muted-fg">יצירת חשבון חדש</h2>
          <div className="flex items-center justify-center gap-2 mt-4">
            <div className={`h-2 w-10 rounded-full transition-colors ${step >= 1 ? 'bg-primary' : 'bg-muted'}`} />
            <div className={`h-2 w-10 rounded-full transition-colors ${step >= 2 ? 'bg-primary' : 'bg-muted'}`} />
          </div>
        </div>

        <form onSubmit={handleSubmit} className="space-y-5">
          {error && (
            <div className="bg-red-50 text-destructive p-3 rounded-xl text-sm border border-red-200">{error}</div>
          )}

          {/* Step 1: account details */}
          {step === 1 && (
            <>
              <div>
                <label className="block text-sm font-medium text-foreground mb-1">שם</label>
                <input
                  type="text"
                  required
                  value={displayName}
                  onChange={e => setDisplayName(e.target.value)}
                  className="w-full px-3 py-2.5 border-2 border-border rounded-xl focus:outline-none focus:ring-2 focus:ring-primary/40 focus:border-primary bg-background text-foreground transition-colors"
                  placeholder="השם שלך"
                />
              </div>
              <div>
                <label className="block text-sm font-medium text-foreground mb-1">אימייל</label>
                <input
                  type="email"
                  required
                  value={email}
                  onChange={e => setEmail(e.target.value)}
                  dir="ltr"
                  className="w-full px-3 py-2.5 border-2 border-border rounded-xl focus:outline-none focus:ring-2 focus:ring-primary/40 focus:border-primary bg-background text-foreground text-left transition-colors"
                  placeholder="your@email.com"
                />
              </div>
              <div>
                <label className="block text-sm font-medium text-foreground mb-1">סיסמה</label>
                <input
                  type="password"
                  required
                  minLength={6}
                  value={password}
                  onChange={e => setPassword(e.target.value)}
                  dir="ltr"
                  className="w-full px-3 py-2.5 border-2 border-border rounded-xl focus:outline-none focus:ring-2 focus:ring-primary/40 focus:border-primary bg-background text-foreground text-left transition-colors"
                  placeholder="••••••••"
                />
              </div>
              <button
                type="submit"
                className="w-full py-3 bg-primary hover:bg-primary/90 text-primary-fg font-semibold rounded-2xl transition-colors"
              >
                המשך ←
              </button>
            </>
          )}

          {/* Step 2: profile */}
          {step === 2 && (
            <>
              <div>
                <label className="block text-sm font-medium text-foreground mb-2">מין</label>
                <div className="grid grid-cols-2 gap-3">
                  {(['female', 'male'] as Gender[]).map(g => (
                    <button
                      key={g}
                      type="button"
                      onClick={() => setGender(g)}
                      className={`py-3 rounded-2xl border-2 text-sm font-semibold transition-colors ${
                        gender === g
                          ? 'border-primary bg-primary/10 text-primary'
                          : 'border-border text-muted-fg hover:border-muted-fg'
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
                  {([['lose', 'ירידה במשקל', '⬇️'], ['maintain', 'שמירה על משקל', '↔️']] as const).map(([g, label, icon]) => (
                    <button
                      key={g}
                      type="button"
                      onClick={() => setGoal(g)}
                      className={`py-3 px-2 rounded-2xl border-2 text-sm font-semibold transition-colors ${
                        goal === g
                          ? 'border-primary bg-primary/10 text-primary'
                          : 'border-border text-muted-fg hover:border-muted-fg'
                      }`}
                    >
                      <div>{icon}</div>
                      <div className="mt-1">{label}</div>
                    </button>
                  ))}
                </div>
              </div>

              <div className="bg-party-header border-2 border-secondary rounded-2xl p-4 text-center">
                <p className="text-xs text-muted-fg mb-1">מכסת כוכבים יומית שלך</p>
                <p className="text-2xl font-display font-normal text-foreground">
                  ⭐ {quota.total} כוכבים
                </p>
                <p className="text-sm text-muted-fg mt-1">מתוכם עד 🔴 {quota.red} כוכבי פחמימה</p>
                <p className="text-xs text-muted-fg mt-2">ניתן לשנות בהגדרות הפרופיל</p>
              </div>

              <div className="flex gap-3">
                <button
                  type="button"
                  onClick={() => setStep(1)}
                  className="flex-1 py-3 border-2 border-border text-muted-fg font-semibold rounded-2xl hover:bg-muted transition-colors"
                >
                  ← חזור
                </button>
                <button
                  type="submit"
                  disabled={loading}
                  className="flex-1 py-3 bg-primary hover:bg-primary/90 text-primary-fg font-semibold rounded-2xl transition-colors disabled:opacity-50"
                >
                  {loading ? 'נרשם...' : 'התחל!'}
                </button>
              </div>
            </>
          )}

          <p className="text-center text-sm text-muted-fg">
            כבר יש לך חשבון?{' '}
            <Link href="/login" className="text-primary hover:underline font-medium">
              כניסה
            </Link>
          </p>
        </form>
      </div>
    </div>
  )
}
