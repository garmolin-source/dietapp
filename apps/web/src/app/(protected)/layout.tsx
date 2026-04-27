import { redirect } from 'next/navigation'
import { createClient } from '@/lib/supabase/server'
import FloatingMenu from '@/components/FloatingMenu'

export default async function ProtectedLayout({
  children,
}: {
  children: React.ReactNode
}) {
  const supabase = createClient()
  const { data: { user } } = await supabase.auth.getUser()

  if (!user) {
    redirect('/login')
  }

  return (
    <div className="min-h-screen bg-background">
      <main className="max-w-2xl mx-auto px-4 pt-4 pb-8">
        {/* Tiny menu button in top-left corner */}
        <div className="flex justify-end mb-3">
          <FloatingMenu />
        </div>
        {children}
      </main>
    </div>
  )
}
