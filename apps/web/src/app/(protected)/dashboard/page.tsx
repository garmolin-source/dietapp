import { Suspense } from 'react'
import Link from 'next/link'
import { createClient } from '@/lib/supabase/server'
import DashboardClient from '@/components/DashboardClient'
import DashboardSkeleton from '@/components/DashboardSkeleton'

async function DashboardData() {
  const supabase = createClient()
  const { data: { user } } = await supabase.auth.getUser()

  if (!user) return null

  const today = new Date().toISOString().split('T')[0]
  const createdAt = user.created_at.split('T')[0]

  const [profileResult, logsResult] = await Promise.all([
    supabase.from('user_profiles').select('*').eq('id', user.id).single(),
    supabase
      .from('daily_logs')
      .select('*, food:foods(*), portion:food_portions(*)')
      .eq('user_id', user.id)
      .eq('log_date', today)
      .order('created_at', { ascending: true }),
  ])

  const profile = profileResult.data

  // New user — prompt to complete profile
  if (!profile?.goal) {
    return (
      <div className="bg-card rounded-2xl border-2 border-border shadow-card overflow-hidden">
        <div className="bg-party-header border-b-2 border-border px-6 py-4">
          <h2 className="font-display font-normal text-2xl text-foreground">
            שלום{profile?.display_name ? `, ${profile.display_name}` : ''}! 👋
          </h2>
        </div>
        <div className="p-8 text-center space-y-4">
          <p className="text-muted-fg">
            לפני שמתחילים, נגדיר את מכסת הכוכבים שלך לפי המטרה שלך.
          </p>
          <Link
            href="/profile"
            className="inline-block px-6 py-3 bg-primary hover:bg-primary/90 text-primary-fg font-semibold rounded-2xl transition-colors"
          >
            השלם הגדרות פרופיל ←
          </Link>
        </div>
      </div>
    )
  }

  return (
    <DashboardClient
      userId={user.id}
      initialProfile={profile}
      initialLogs={logsResult.data || []}
      today={today}
      createdAt={createdAt}
    />
  )
}

export default function DashboardPage() {
  return (
    <Suspense fallback={<DashboardSkeleton />}>
      <DashboardData />
    </Suspense>
  )
}
