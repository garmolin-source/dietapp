'use client'

import { useState, useRef, useEffect } from 'react'
import Link from 'next/link'
import { usePathname, useRouter } from 'next/navigation'
import { createClient } from '@/lib/supabase/client'

const NAV_ITEMS = [
  { href: '/dashboard', label: 'בית', icon: '🏠' },
  { href: '/foods',     label: 'מזונות', icon: '🍽️' },
  { href: '/profile',   label: 'פרופיל', icon: '👤' },
]

export default function FloatingMenu() {
  const [open, setOpen] = useState(false)
  const ref = useRef<HTMLDivElement>(null)
  const pathname = usePathname()
  const router = useRouter()
  const supabase = createClient()

  useEffect(() => {
    function handleClick(e: MouseEvent) {
      if (ref.current && !ref.current.contains(e.target as Node)) setOpen(false)
    }
    document.addEventListener('mousedown', handleClick)
    return () => document.removeEventListener('mousedown', handleClick)
  }, [])

  async function handleSignOut() {
    setOpen(false)
    await supabase.auth.signOut()
    router.push('/login')
    router.refresh()
  }

  return (
    <div ref={ref} className="relative" style={{ zIndex: 50 }}>
      <button
        onClick={() => setOpen(o => !o)}
        className="w-9 h-9 rounded-pill bg-card border border-border shadow-soft flex items-center justify-center text-foreground hover:bg-muted transition-colors"
        aria-label="תפריט"
      >
        <svg width="16" height="16" viewBox="0 0 16 16" fill="none">
          <rect y="2"  width="16" height="1.8" rx="0.9" fill="currentColor"/>
          <rect y="7"  width="16" height="1.8" rx="0.9" fill="currentColor"/>
          <rect y="12" width="16" height="1.8" rx="0.9" fill="currentColor"/>
        </svg>
      </button>

      {open && (
        <div className="absolute top-11 left-0 w-44 bg-card border border-border rounded-card shadow-elevated overflow-hidden">
          {NAV_ITEMS.map(({ href, label, icon }) => (
            <Link
              key={href}
              href={href}
              onClick={() => setOpen(false)}
              className={`flex items-center gap-3 px-4 py-3 text-sm font-semibold transition-colors ${
                pathname === href
                  ? 'bg-mustard-bg text-foreground'
                  : 'text-foreground hover:bg-muted'
              }`}
            >
              <span>{icon}</span>
              <span>{label}</span>
            </Link>
          ))}
          <div className="border-t border-border">
            <button
              onClick={handleSignOut}
              className="w-full flex items-center gap-3 px-4 py-3 text-sm font-semibold text-brick hover:bg-brick-bg transition-colors"
            >
              <span>🚪</span>
              <span>יציאה</span>
            </button>
          </div>
        </div>
      )}
    </div>
  )
}
