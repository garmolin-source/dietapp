'use client'

import Link from 'next/link'
import { usePathname, useRouter } from 'next/navigation'
import { createClient } from '@/lib/supabase/client'

const NAV_ITEMS = [
  { href: '/dashboard', label: 'בית' },
  { href: '/foods',     label: 'מזונות' },
  { href: '/profile',   label: 'פרופיל' },
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
    <nav className="bg-primary sticky top-0 z-10 shadow-nav">
      <div className="max-w-2xl mx-auto px-4 h-14 flex items-center justify-between">
        <Link href="/dashboard" className="font-bold text-lg text-white tracking-wide">
          מלאך הדיאטה
        </Link>

        <div className="flex items-center gap-1">
          {NAV_ITEMS.map(({ href, label }) => (
            <Link
              key={href}
              href={href}
              className={`px-3 py-1.5 rounded-pill text-sm font-semibold transition-colors ${
                pathname === href
                  ? 'bg-white text-primary'
                  : 'text-white/70 hover:text-white hover:bg-white/10'
              }`}
            >
              {label}
            </Link>
          ))}
          <button
            onClick={handleSignOut}
            className="px-3 py-1.5 rounded-pill text-sm font-semibold text-white/60 hover:text-white hover:bg-white/10 transition-colors"
          >
            יציאה
          </button>
        </div>
      </div>
    </nav>
  )
}
