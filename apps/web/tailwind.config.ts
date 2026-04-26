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
        // Brand / nav
        primary:    '#2b1f16',
        'primary-fg': '#ffffff',

        // Page surfaces
        background: '#f6ece0',
        'bg-deep':  '#eddcc4',
        foreground: '#2b1f16',
        card:       '#ffffff',

        // Muted
        muted:      '#ecdcc8',
        'muted-fg': '#8a7463',
        'muted-lo': '#b9a891',

        // Lines
        border:     '#ecdcc8',
        'border-dk': '#e2cfb4',

        // Star types
        mustard:      '#c89029',
        'mustard-bg': '#f7e4b6',
        brick:        '#b14a33',
        'brick-bg':   '#f7d9cf',
        leaf:         '#6b8a4d',
        'leaf-bg':    '#e3ecd2',

        // Semantic
        destructive: 'hsl(0 65% 50% / <alpha-value>)',
        success:     '#6b8a4d',

        // Legacy aliases kept for pages not yet updated
        'star-yellow': '#c89029',
        'star-red':    '#b14a33',
        secondary:   '#e3ecd2',
        accent:      '#d4e8b8',
      },
      fontFamily: {
        display: ['var(--font-display)', 'Assistant', 'system-ui', 'sans-serif'],
        body:    ['var(--font-body)',    'Assistant', 'system-ui', 'sans-serif'],
        sans:    ['var(--font-body)',    'Assistant', 'system-ui', 'sans-serif'],
      },
      borderRadius: {
        card: '22px',
        chip: '14px',
        pill: '999px',
      },
      boxShadow: {
        soft:     '0 2px 8px -2px rgba(43,31,22,0.08)',
        card:     '0 4px 12px -4px rgba(43,31,22,0.10)',
        elevated: '0 8px 24px -8px rgba(43,31,22,0.16)',
        nav:      '0 12px 30px rgba(43,31,22,0.28), 0 2px 6px rgba(43,31,22,0.12)',
      },
    },
  },
  plugins: [],
}

export default config
