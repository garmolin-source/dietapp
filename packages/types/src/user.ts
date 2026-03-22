export type UserGoal = 'lose' | 'maintain' | 'gain'

export interface UserProfile {
  id: string
  displayName: string
  weightKg: number
  goal: UserGoal
  /** Total daily stars (yellow + red combined). Per PDF: women/lose=12, women/maintain=15, men/lose=15, men/maintain=18 */
  totalQuota: number
  /** Carb (red) sub-quota. Per PDF: lose=3, maintain=5, men/maintain=7 */
  redQuota: number
}
