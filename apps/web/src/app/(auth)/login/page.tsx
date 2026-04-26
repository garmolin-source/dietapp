'use client'

import { useState } from 'react'
import { useRouter } from 'next/navigation'
import Link from 'next/link'
import { createClient } from '@/lib/supabase/client'

export default function LoginPage() {
  const [email, setEmail] = useState('')
  const [password, setPassword] = useState('')
  const [error, setError] = useState<string | null>(null)
  const [loading, setLoading] = useState(false)
  const router = useRouter()
  const supabase = createClient()

  async function handleSubmit(e: React.FormEvent) {
    e.preventDefault()
    setLoading(true)
    setError(null)

    const { error } = await supabase.auth.signInWithPassword({ email, password })

    if (error) {
      setError(error.message)
      setLoading(false)
      return
    }

    router.push('/dashboard')
    router.refresh()
  }

  return (
    <div className="min-h-screen flex items-center justify-center bg-background px-4">
      <div className="max-w-md w-full space-y-8 p-8 bg-card rounded-2xl border-2 border-border shadow-elevated">
        <div className="text-center">
          <h1 className="font-bold text-3xl text-foreground">מלאך הדיאטה</h1>
          <h2 className="mt-2 text-base text-muted-fg">כניסה לחשבון</h2>
        </div>

        <form onSubmit={handleSubmit} className="space-y-5">
          {error && (
            <div className="bg-red-50 text-destructive p-3 rounded-xl text-sm border border-red-200">
              {error}
            </div>
          )}

          <div className="space-y-4">
            <div>
              <label htmlFor="email" className="block text-sm font-medium text-foreground mb-1">
                אימייל
              </label>
              <input
                id="email"
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
              <label htmlFor="password" className="block text-sm font-medium text-foreground mb-1">
                סיסמה
              </label>
              <input
                id="password"
                type="password"
                required
                value={password}
                onChange={e => setPassword(e.target.value)}
                dir="ltr"
                className="w-full px-3 py-2.5 border-2 border-border rounded-xl focus:outline-none focus:ring-2 focus:ring-primary/40 focus:border-primary bg-background text-foreground text-left transition-colors"
                placeholder="••••••••"
              />
            </div>
          </div>

          <button
            type="submit"
            disabled={loading}
            className="w-full py-3 px-4 bg-primary hover:bg-primary/90 text-primary-fg font-semibold rounded-2xl transition-colors disabled:opacity-50"
          >
            {loading ? 'מתחבר...' : 'כניסה'}
          </button>

          <p className="text-center text-sm text-muted-fg">
            אין לך חשבון?{' '}
            <Link href="/signup" className="text-primary hover:underline font-medium">
              הרשמה
            </Link>
          </p>
        </form>
      </div>
    </div>
  )
}
