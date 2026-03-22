'use client'

import Link from 'next/link'
import { usePathname, useRouter } from 'next/navigation'
import { createClient } from '@/lib/supabase/client'

const NAV_ITEMS = [
  { href: '/dashboard', label: 'בית' },
  { href: '/foods', label: 'מזונות' },
  { href: '/profile', label: 'פרופיל' },
]

export default function NavBar() {
  const pathname = usePathname()
  const router = useRouter()
  const supabase = createClient()

  async function handleSignOut() {
    await supabase.auth.signOut()
    router.push('/login')
    router.refresh()
  }

  return (
    <nav className="bg-card border-b-2 border-border sticky top-0 z-10 shadow-soft">
      <div className="max-w-2xl mx-auto px-4 h-14 flex items-center justify-between">
        <Link href="/dashboard" className="font-display font-normal text-xl text-foreground tracking-wide">
          ⭐ DietApp
        </Link>

        <div className="flex items-center gap-1">
          {NAV_ITEMS.map(({ href, label }) => (
            <Link
              key={href}
              href={href}
              className={`px-3 py-1.5 rounded-xl text-sm font-medium transition-colors ${
                pathname === href
                  ? 'bg-primary text-primary-fg'
                  : 'text-muted-fg hover:text-foreground hover:bg-muted'
              }`}
            >
              {label}
            </Link>
          ))}
          <button
            onClick={handleSignOut}
            className="px-3 py-1.5 rounded-xl text-sm font-medium text-muted-fg hover:text-foreground hover:bg-muted transition-colors"
          >
            יציאה
          </button>
        </div>
      </div>
    </nav>
  )
}
