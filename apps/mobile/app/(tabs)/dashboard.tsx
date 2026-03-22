import { useEffect, useState } from 'react'
import {
  View,
  Text,
  ScrollView,
  TouchableOpacity,
  StyleSheet,
  RefreshControl,
} from 'react-native'
import { SafeAreaView } from 'react-native-safe-area-context'
import { useRouter } from 'expo-router'
import { supabase } from '@/lib/supabase'

const MEAL_LABELS: Record<string, string> = {
  breakfast: 'ארוחת בוקר',
  lunch: 'ארוחת צהריים',
  dinner: 'ארוחת ערב',
  snack: 'חטיף',
}

const MEAL_TYPES = ['breakfast', 'lunch', 'dinner', 'snack']

export default function DashboardScreen() {
  const [profile, setProfile] = useState<any>(null)
  const [logs, setLogs] = useState<any[]>([])
  const [refreshing, setRefreshing] = useState(false)
  const [userId, setUserId] = useState<string | null>(null)
  const router = useRouter()

  const today = new Date().toISOString().split('T')[0]

  async function loadData() {
    const { data: { user } } = await supabase.auth.getUser()
    if (!user) return
    setUserId(user.id)

    const [profileResult, logsResult] = await Promise.all([
      supabase.from('user_profiles').select('*').eq('id', user.id).single(),
      supabase
        .from('daily_logs')
        .select('*, food:foods(*), portion:food_portions(*)')
        .eq('user_id', user.id)
        .eq('log_date', today)
        .order('created_at', { ascending: true }),
    ])

    setProfile(profileResult.data)
    setLogs(logsResult.data || [])
  }

  useEffect(() => {
    loadData()
  }, [])

  // Realtime subscription
  useEffect(() => {
    if (!userId) return

    const channel = supabase
      .channel(`mobile_daily_logs:${userId}:${today}`)
      .on(
        'postgres_changes',
        {
          event: '*',
          schema: 'public',
          table: 'daily_logs',
          filter: `user_id=eq.${userId}`,
        },
        () => {
          supabase
            .from('daily_logs')
            .select('*, food:foods(*), portion:food_portions(*)')
            .eq('user_id', userId)
            .eq('log_date', today)
            .order('created_at', { ascending: true })
            .then(({ data }) => {
              if (data) setLogs(data)
            })
        }
      )
      .subscribe()

    return () => {
      supabase.removeChannel(channel)
    }
  }, [userId, today])

  async function onRefresh() {
    setRefreshing(true)
    await loadData()
    setRefreshing(false)
  }

  async function handleDelete(id: string) {
    await supabase.from('daily_logs').delete().eq('id', id)
    setLogs(logs.filter((l) => l.id !== id))
  }

  // Per PDF: total_quota = all stars combined; red_quota = carb sub-quota
  const totalQuota = profile?.total_quota ?? 12
  const redQuota = profile?.red_quota ?? 3
  const totalYellow = logs.reduce((sum, e) => sum + (e.yellow_stars_consumed || 0), 0)
  const totalRed = logs.reduce((sum, e) => sum + (e.red_stars_consumed || 0), 0)
  const totalUsed = totalYellow + totalRed

  return (
    <SafeAreaView style={styles.container}>
      <ScrollView
        refreshControl={<RefreshControl refreshing={refreshing} onRefresh={onRefresh} />}
      >
        <View style={styles.header}>
          <Text style={styles.title}>היום שלי</Text>
          <TouchableOpacity
            style={styles.addButton}
            onPress={() => router.push('/(tabs)/log')}
          >
            <Text style={styles.addButtonText}>+ הוסף</Text>
          </TouchableOpacity>
        </View>

        <View style={styles.quotaCard}>
          <Text style={styles.sectionTitle}>מאזן כוכבים</Text>
          <StarBar
            label="סה״כ כוכבים ⭐"
            used={totalUsed}
            quota={totalQuota}
            color="#F59E0B"
          />
          <View style={{ height: 12 }} />
          <StarBar
            label="כוכבי פחמימה 🔴"
            used={totalRed}
            quota={redQuota}
            color="#EF4444"
          />
        </View>

        {MEAL_TYPES.map((mealType) => {
          const mealLogs = logs.filter((l) => l.meal_type === mealType)
          const mealYellow = mealLogs.reduce((s, e) => s + (e.yellow_stars_consumed || 0), 0)
          const mealRed = mealLogs.reduce((s, e) => s + (e.red_stars_consumed || 0), 0)

          return (
            <View key={mealType} style={styles.mealCard}>
              <View style={styles.mealHeader}>
                <Text style={styles.mealTitle}>{MEAL_LABELS[mealType]}</Text>
                <View style={styles.mealStars}>
                  {mealYellow > 0 && (
                    <Text style={styles.yellowText}>⭐ {mealYellow}</Text>
                  )}
                  {mealRed > 0 && (
                    <Text style={styles.redText}>🔴 {mealRed}</Text>
                  )}
                </View>
              </View>

              {mealLogs.length === 0 ? (
                <Text style={styles.emptyText}>לא נוספו מזונות</Text>
              ) : (
                mealLogs.map((entry) => (
                  <View key={entry.id} style={styles.entryRow}>
                    <View style={styles.entryInfo}>
                      <Text style={styles.entryName}>{entry.food?.name_he}</Text>
                      <Text style={styles.entryPortion}>
                        {entry.portion?.label_he}
                        {entry.quantity !== 1 ? ` × ${entry.quantity}` : ''}
                      </Text>
                    </View>
                    <View style={styles.entryStars}>
                      {entry.yellow_stars_consumed > 0 && (
                        <Text style={styles.yellowText}>⭐{entry.yellow_stars_consumed}</Text>
                      )}
                      {entry.red_stars_consumed > 0 && (
                        <Text style={styles.redText}>🔴{entry.red_stars_consumed}</Text>
                      )}
                      {entry.yellow_stars_consumed === 0 && entry.red_stars_consumed === 0 && (
                        <Text style={styles.freeText}>✓</Text>
                      )}
                      <TouchableOpacity onPress={() => handleDelete(entry.id)}>
                        <Text style={styles.deleteBtn}>✕</Text>
                      </TouchableOpacity>
                    </View>
                  </View>
                ))
              )}
            </View>
          )
        })}
      </ScrollView>
    </SafeAreaView>
  )
}

function StarBar({ label, used, quota, color }: { label: string; used: number; quota: number; color: string }) {
  const pct = quota > 0 ? Math.min((used / quota) * 100, 100) : 0
  const isOver = used > quota

  return (
    <View>
      <View style={{ flexDirection: 'row', justifyContent: 'space-between', marginBottom: 4 }}>
        <Text style={{ fontSize: 14, color: '#374151' }}>{label}</Text>
        <Text style={{ fontSize: 14, fontWeight: '600', color: isOver ? '#EF4444' : color }}>
          {used} / {quota}
        </Text>
      </View>
      <View style={{ height: 10, backgroundColor: '#E5E7EB', borderRadius: 5, overflow: 'hidden' }}>
        <View
          style={{
            height: '100%',
            width: `${pct}%`,
            backgroundColor: isOver ? '#EF4444' : color,
            borderRadius: 5,
          }}
        />
      </View>
    </View>
  )
}

const styles = StyleSheet.create({
  container: { flex: 1, backgroundColor: '#F9FAFB' },
  header: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'center',
    padding: 16,
    paddingTop: 8,
  },
  title: { fontSize: 24, fontWeight: 'bold', color: '#111827' },
  addButton: {
    backgroundColor: '#F59E0B',
    paddingHorizontal: 16,
    paddingVertical: 8,
    borderRadius: 10,
  },
  addButtonText: { color: '#fff', fontWeight: '700' },
  quotaCard: {
    backgroundColor: '#fff',
    margin: 16,
    marginTop: 0,
    padding: 16,
    borderRadius: 16,
    shadowColor: '#000',
    shadowOpacity: 0.05,
    shadowRadius: 8,
    elevation: 2,
  },
  sectionTitle: { fontSize: 16, fontWeight: '600', color: '#374151', marginBottom: 12 },
  mealCard: {
    backgroundColor: '#fff',
    marginHorizontal: 16,
    marginBottom: 12,
    borderRadius: 16,
    overflow: 'hidden',
    shadowColor: '#000',
    shadowOpacity: 0.05,
    shadowRadius: 8,
    elevation: 2,
  },
  mealHeader: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    padding: 12,
    backgroundColor: '#F9FAFB',
    borderBottomWidth: 1,
    borderBottomColor: '#E5E7EB',
  },
  mealTitle: { fontWeight: '600', fontSize: 15, color: '#1F2937' },
  mealStars: { flexDirection: 'row', gap: 8 },
  emptyText: { padding: 16, textAlign: 'center', color: '#9CA3AF', fontSize: 14 },
  entryRow: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'center',
    padding: 12,
    borderBottomWidth: 1,
    borderBottomColor: '#F3F4F6',
  },
  entryInfo: { flex: 1 },
  entryName: { fontWeight: '500', color: '#111827' },
  entryPortion: { fontSize: 13, color: '#6B7280', marginTop: 2 },
  entryStars: { flexDirection: 'row', alignItems: 'center', gap: 6 },
  yellowText: { color: '#D97706', fontWeight: '600', fontSize: 13 },
  redText: { color: '#DC2626', fontWeight: '600', fontSize: 13 },
  freeText: { color: '#16A34A', fontWeight: '600', fontSize: 13 },
  deleteBtn: { color: '#D1D5DB', fontSize: 16, marginStart: 4 },
})
