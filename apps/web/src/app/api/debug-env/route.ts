import { NextResponse } from 'next/server'

export async function GET() {
  const anthropic = process.env.MY_ANTHROPIC_KEY
  const supabase = process.env.NEXT_PUBLIC_SUPABASE_URL

  return NextResponse.json({
    anthropic_set: !!anthropic,
    anthropic_length: anthropic?.length ?? 0,
    anthropic_prefix: anthropic?.slice(0, 10) ?? '(empty)',
    supabase_set: !!supabase,
    supabase_prefix: supabase?.slice(0, 15) ?? '(empty)',
    node_env: process.env.NODE_ENV,
  })
}
