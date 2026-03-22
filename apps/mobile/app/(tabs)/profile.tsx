import { useState, useEffect } from 'react'
import {
  View,
  Text,
  TextInput,
  TouchableOpacity,
  ScrollView,
  StyleSheet,
  Alert,
} from 'react-native'
import { SafeAreaView } from 'react-native-safe-area-context'
import { useRouter } from 'expo-router'
import { supabase } from '@/lib/supabase'

type Goal = 'lose' | 'maintain' | 'gain'

const GOAL_LABELS: Record<Goal, string> = {
  lose: 'ירידה במשקל',
  maintain: 'שמירה על משקל',
  gain: 'עלייה במשקל',
}

// Default quotas per PDF recommendations
const GOAL_DEFAULTS: Record<Goal, { total: number; red: number }> = {
  lose:     { total: 12, red: 3 },
  maintain: { total: 15, red: 5 },
  gain:     { total: 18, red: 7 },
}

export default function ProfileScreen() {
  const [displayName, setDisplayName] = useState('')
  const [weightKg, setWeightKg] = useState('')
  const [goal, setGoal] = useState<Goal>('lose')
  const [totalQuota, setTotalQuota] = useState('12')
  const [redQuota, setRedQuota] = useState('3')
  const [saving, setSaving] = useState(false)
  const router = useRouter()

  useEffect(() => {
    loadProfile()
  }, [])

  async function loadProfile() {
    const { data: { user } } = await supabase.auth.getUser()
    if (!user) return

    const { data } = await supabase
      .from('user_profiles')
      .select('*')
      .eq('id', user.id)
      .single()

    if (data) {
      setDisplayName(data.display_name || '')
      setWeightKg(data.weight_kg?.toString() || '')
      setGoal(data.goal || 'lose')
      setTotalQuota(data.total_quota?.toString() || '12')
      setRedQuota(data.red_quota?.toString() || '3')
    }
  }

  function handleGoalChange(g: Goal) {
    setGoal(g)
    setTotalQuota(GOAL_DEFAULTS[g].total.toString())
    setRedQuota(GOAL_DEFAULTS[g].red.toString())
  }

  async function handleSave() {
    setSaving(true)
    const { data: { user } } = await supabase.auth.getUser()
    if (!user) return

    const { error } = await supabase.from('user_profiles').upsert({
      id: user.id,
      display_name: displayName,
      weight_kg: parseFloat(weightKg) || null,
      goal,
      total_quota: parseFloat(totalQuota),
      red_quota: parseFloat(redQuota),
    })

    setSaving(false)
    if (error) {
      Alert.alert('שגיאה', error.message)
    } else {
      Alert.alert('✓', 'הפרופיל נשמר בהצלחה')
    }
  }

  async function handleSignOut() {
    await supabase.auth.signOut()
    router.replace('/(auth)/login')
  }

  return (
    <SafeAreaView style={styles.container}>
      <ScrollView>
        <Text style={styles.title}>הגדרות פרופיל</Text>

        <View style={styles.card}>
          <Text style={styles.label}>שם</Text>
          <TextInput
            style={styles.input}
            value={displayName}
            onChangeText={setDisplayName}
            textAlign="right"
            placeholder="השם שלך"
          />

          <Text style={[styles.label, { marginTop: 12 }]}>משקל (ק"ג)</Text>
          <TextInput
            style={styles.input}
            value={weightKg}
            onChangeText={setWeightKg}
            keyboardType="decimal-pad"
            textAlign="right"
            placeholder="70.5"
          />

          <Text style={[styles.label, { marginTop: 12 }]}>מטרה</Text>
          <Text style={styles.hint}>הבחירה תעדכן את המכסה המומלצת</Text>
          {(Object.keys(GOAL_LABELS) as Goal[]).map((g) => (
            <TouchableOpacity
              key={g}
              onPress={() => handleGoalChange(g)}
              style={styles.radioRow}
            >
              <View style={[styles.radio, goal === g && styles.radioActive]}>
                {goal === g && <View style={styles.radioDot} />}
              </View>
              <Text style={styles.radioLabel}>{GOAL_LABELS[g]}</Text>
              <Text style={styles.radioHint}>
                {GOAL_DEFAULTS[g].total} כוכבים / {GOAL_DEFAULTS[g].red} אדומים
              </Text>
            </TouchableOpacity>
          ))}

          <Text style={[styles.label, { marginTop: 16 }]}>מכסת כוכבים יומית</Text>
          <Text style={styles.hint}>
            סה"כ = כל הכוכבים. אדומים = תת-מכסה לפחמימות.
          </Text>
          <View style={styles.quotaRow}>
            <View style={styles.quotaField}>
              <Text style={styles.quotaLabel}>⭐ סה"כ</Text>
              <TextInput
                style={styles.quotaInput}
                value={totalQuota}
                onChangeText={setTotalQuota}
                keyboardType="number-pad"
                textAlign="center"
              />
            </View>
            <View style={styles.quotaField}>
              <Text style={styles.quotaLabel}>🔴 פחמימות</Text>
              <TextInput
                style={styles.quotaInput}
                value={redQuota}
                onChangeText={setRedQuota}
                keyboardType="number-pad"
                textAlign="center"
              />
            </View>
          </View>

          <TouchableOpacity
            style={[styles.saveButton, saving && styles.saveButtonDisabled]}
            onPress={handleSave}
            disabled={saving}
          >
            <Text style={styles.saveButtonText}>{saving ? 'שומר...' : 'שמור'}</Text>
          </TouchableOpacity>

          <TouchableOpacity style={styles.signOutButton} onPress={handleSignOut}>
            <Text style={styles.signOutText}>יציאה מהחשבון</Text>
          </TouchableOpacity>
        </View>
      </ScrollView>
    </SafeAreaView>
  )
}

const styles = StyleSheet.create({
  container: { flex: 1, backgroundColor: '#F9FAFB' },
  title: { fontSize: 24, fontWeight: 'bold', color: '#111827', padding: 16, paddingBottom: 8 },
  card: {
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
  label: { fontSize: 14, fontWeight: '500', color: '#374151', marginBottom: 4 },
  hint: { fontSize: 12, color: '#9CA3AF', marginBottom: 8 },
  input: {
    borderWidth: 1,
    borderColor: '#D1D5DB',
    borderRadius: 10,
    padding: 12,
    fontSize: 16,
    color: '#111827',
  },
  radioRow: {
    flexDirection: 'row',
    alignItems: 'center',
    paddingVertical: 8,
    gap: 8,
  },
  radio: {
    width: 20,
    height: 20,
    borderRadius: 10,
    borderWidth: 2,
    borderColor: '#D1D5DB',
    justifyContent: 'center',
    alignItems: 'center',
  },
  radioActive: { borderColor: '#F59E0B' },
  radioDot: { width: 10, height: 10, borderRadius: 5, backgroundColor: '#F59E0B' },
  radioLabel: { fontSize: 15, color: '#374151', flex: 1 },
  radioHint: { fontSize: 12, color: '#9CA3AF' },
  quotaRow: { flexDirection: 'row', gap: 12, marginTop: 4 },
  quotaField: { flex: 1 },
  quotaLabel: { fontSize: 13, color: '#6B7280', marginBottom: 4, textAlign: 'center' },
  quotaInput: {
    borderWidth: 1,
    borderColor: '#D1D5DB',
    borderRadius: 10,
    padding: 10,
    fontSize: 18,
    fontWeight: '700',
    color: '#111827',
  },
  saveButton: {
    backgroundColor: '#F59E0B',
    borderRadius: 12,
    padding: 16,
    alignItems: 'center',
    marginTop: 20,
  },
  saveButtonDisabled: { opacity: 0.5 },
  saveButtonText: { color: '#fff', fontWeight: '700', fontSize: 16 },
  signOutButton: {
    borderRadius: 12,
    padding: 14,
    alignItems: 'center',
    marginTop: 10,
    borderWidth: 1,
    borderColor: '#E5E7EB',
  },
  signOutText: { color: '#6B7280', fontWeight: '600', fontSize: 15 },
})
