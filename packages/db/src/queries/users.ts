import { supabase } from '../client'
import type { UserProfile } from '@dietapp/types'

export async function getUserProfile(userId: string): Promise<UserProfile | null> {
  const { data, error } = await supabase
    .from('user_profiles')
    .select('*')
    .eq('id', userId)
    .single()

  if (error) return null

  return {
    id: data.id,
    displayName: data.display_name,
    weightKg: data.weight_kg,
    goal: data.goal,
    totalQuota: data.total_quota,
    redQuota: data.red_quota,
  }
}

export async function upsertUserProfile(profile: Partial<UserProfile> & { id: string }): Promise<void> {
  const { error } = await supabase
    .from('user_profiles')
    .upsert({
      id: profile.id,
      display_name: profile.displayName,
      weight_kg: profile.weightKg,
      goal: profile.goal,
      total_quota: profile.totalQuota,
      red_quota: profile.redQuota,
    })

  if (error) throw error
}
