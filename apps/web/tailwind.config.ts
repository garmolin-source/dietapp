import type { Config } from 'tailwindcss'

const config: Config = {
  content: [
    './src/pages/**/*.{js,ts,jsx,tsx,mdx}',
    './src/components/**/*.{js,ts,jsx,tsx,mdx}',
    './src/app/**/*.{js,ts,jsx,tsx,mdx}',
  ],
  theme: {
    extend: {
      colors: {
        primary: 'hsl(160 50% 22% / <alpha-value>)',
        'primary-fg': 'hsl(38 40% 95% / <alpha-value>)',
        background: 'hsl(38 40% 95% / <alpha-value>)',
        foreground: 'hsl(160 30% 10% / <alpha-value>)',
        card: 'hsl(38 35% 97% / <alpha-value>)',
        secondary: 'hsl(270 40% 88% / <alpha-value>)',
        accent: 'hsl(270 40% 82% / <alpha-value>)',
        muted: 'hsl(38 25% 90% / <alpha-value>)',
        'muted-fg': 'hsl(160 15% 42% / <alpha-value>)',
        destructive: 'hsl(0 65% 50% / <alpha-value>)',
        success: 'hsl(160 50% 38% / <alpha-value>)',
        border: 'hsl(38 20% 85% / <alpha-value>)',
        'party-header': '#F0D7FF',
        'star-yellow': '#F59E0B',
        'star-red': '#EF4444',
      },
      fontFamily: {
        display: ['var(--font-display)', 'EB Garamond', 'Georgia', 'serif'],
        body: ['var(--font-body)', 'Figtree', 'system-ui', 'sans-serif'],
        sans: ['var(--font-body)', 'Figtree', 'system-ui', 'sans-serif'],
      },
      boxShadow: {
        soft: '0 2px 8px -2px hsl(160 30% 10% / 0.08)',
        card: '0 4px 12px -4px hsl(160 30% 10% / 0.12)',
        elevated: '0 8px 24px -8px hsl(160 30% 10% / 0.18)',
      },
    },
  },
  plugins: [],
}

export default config
