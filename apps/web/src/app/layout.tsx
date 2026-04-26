import type { Metadata } from 'next'
import { Assistant } from 'next/font/google'
import './globals.css'

const assistant = Assistant({
  subsets: ['hebrew', 'latin'],
  weight: ['400', '500', '600', '700'],
  variable: '--font-body',
  display: 'swap',
})

export const metadata: Metadata = {
  title: 'מלאך הדיאטה',
  description: 'Track your Diet Angel stars',
}

export default function RootLayout({
  children,
}: {
  children: React.ReactNode
}) {
  return (
    <html lang="he" dir="rtl" className={`${assistant.variable}`}>
      <body className="bg-background text-foreground font-body antialiased">
        {children}
      </body>
    </html>
  )
}
