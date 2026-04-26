import { useState, useEffect, useRef } from 'react'
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
import { getPortionVisualHint } from '@/src/lib/portionHint'

type MealType = 'breakfast' | 'lunch' | 'dinner' | 'snack'

const MEAL_LABELS: Record<MealType, string> = {
  breakfast: 'ארוחת בוקר',
  lunch: 'ארוחת צהריים',
  dinner: 'ארוחת ערב',
  snack: 'חטיף',
}

export default function LogScreen() {
  const [query, setQuery] = useState('')
  const [results, setResults] = useState<any[]>([])
  const [selectedFood, setSelectedFood] = useState<any>(null)
  const [selectedPortion, setSelectedPortion] = useState<any>(null)
  const [mealType, setMealType] = useState<MealType>('breakfast')
  const [quantity, setQuantity] = useState(1)
  const [loading, setLoading] = useState(false)
  const [saving, setSaving] = useState(false)
  const searchTimeout = useRef<NodeJS.Timeout>()
  const router = useRouter()

  useEffect(() => {
    if (!query.trim()) {
      setResults([])
      return
    }

    clearTimeout(searchTimeout.current)
    searchTimeout.current = setTimeout(async () => {
      setLoading(true)
      const { data } = await supabase
        .from('foods')
        .select('*, portions:food_portions(*)')
        .or(`name_he.ilike.%${query}%,name_en.ilike.%${query}%`)
        .eq('is_active', true)
        .order('name_he')
        .limit(20)
      setResults(data || [])
      setLoading(false)
    }, 300)

    return () => clearTimeout(searchTimeout.current)
  }, [query])

  function selectFood(food: any) {
    setSelectedFood(food)
    setResults([])
    setQuery('')
    const defaultPortion = food.portions?.find((p: any) => p.is_default) || food.portions?.[0]
    setSelectedPortion(defaultPortion)
  }

  async function handleAdd() {
    if (!selectedFood || !selectedPortion) return
    setSaving(true)

    const { data: { user } } = await supabase.auth.getUser()
    if (!user) return

    const today = new Date().toISOString().split('T')[0]

    const { error } = await supabase.from('daily_logs').insert({
      user_id: user.id,
      log_date: today,
      meal_type: mealType,
      food_id: selectedFood.id,
      portion_id: selectedPortion.id,
      quantity,
      yellow_stars_consumed: selectedPortion.yellow_stars * quantity,
      red_stars_consumed: selectedPortion.red_stars * quantity,
    })

    setSaving(false)

    if (error) {
      Alert.alert('שגיאה', error.message)
    } else {
      setSelectedFood(null)
      setSelectedPortion(null)
      setQuantity(1)
      router.push('/(tabs)/dashboard')
    }
  }

  const yellowStars = selectedPortion ? selectedPortion.yellow_stars * quantity : 0
  const redStars = selectedPortion ? selectedPortion.red_stars * quantity : 0

  return (
    <SafeAreaView style={styles.container}>
      <ScrollView keyboardShouldPersistTaps="handled">
        <Text style={styles.title}>הוספת אוכל</Text>

        <View style={styles.card}>
          <Text style={styles.label}>סוג ארוחה</Text>
          <View style={styles.mealGrid}>
            {(Object.keys(MEAL_LABELS) as MealType[]).map((type) => (
              <TouchableOpacity
                key={type}
                onPress={() => setMealType(type)}
                style={[styles.mealChip, mealType === type && styles.mealChipActive]}
              >
                <Text style={[styles.mealChipText, mealType === type && styles.mealChipTextActive]}>
                  {MEAL_LABELS[type]}
                </Text>
              </TouchableOpacity>
            ))}
          </View>

          <Text style={[styles.label, { marginTop: 16 }]}>חיפוש מזון</Text>
          <TextInput
            style={styles.input}
            value={query}
            onChangeText={setQuery}
            placeholder="חפש לפי שם..."
            textAlign="right"
          />

          {loading && <Text style={styles.hint}>מחפש...</Text>}

          {results.length > 0 && !selectedFood && (
            <View style={styles.resultsList}>
              {results.map((food) => (
                <TouchableOpacity
                  key={food.id}
                  onPress={() => selectFood(food)}
                  style={styles.resultItem}
                >
                  <Text style={styles.resultName}>{food.name_he}</Text>
                  {food.name_en && (
                    <Text style={styles.resultSub}>{food.name_en}</Text>
                  )}
                </TouchableOpacity>
              ))}
            </View>
          )}

          {selectedFood && (
            <View style={{ marginTop: 16 }}>
              <View style={styles.selectedFood}>
                <View style={{ flex: 1 }}>
                  <Text style={styles.selectedName}>{selectedFood.name_he}</Text>
                  {selectedFood.name_en && (
                    <Text style={styles.resultSub}>{selectedFood.name_en}</Text>
                  )}
                </View>
                <TouchableOpacity onPress={() => { setSelectedFood(null); setSelectedPortion(null) }}>
                  <Text style={styles.clearBtn}>✕</Text>
                </TouchableOpacity>
              </View>

              <Text style={[styles.label, { marginTop: 12 }]}>כמות</Text>
              <ScrollView horizontal showsHorizontalScrollIndicator={false}>
                {selectedFood.portions?.map((p: any) => (
                  <TouchableOpacity
                    key={p.id}
                    onPress={() => setSelectedPortion(p)}
                    style={[styles.portionChip, selectedPortion?.id === p.id && styles.portionChipActive]}
                  >
                    <Text style={[styles.portionText, selectedPortion?.id === p.id && styles.portionTextActive]}>
                      {p.label_he}
                    </Text>
                    {(() => {
                      const hint = getPortionVisualHint(selectedFood.category, p.grams)
                      return hint ? (
                        <Text style={[styles.portionHint, selectedPortion?.id === p.id && styles.portionHintActive]}>
                          {hint}
                        </Text>
                      ) : null
                    })()}
                  </TouchableOpacity>
                ))}
              </ScrollView>

              <Text style={[styles.label, { marginTop: 12 }]}>מספר מנות</Text>
              <View style={styles.quantityRow}>
                <TouchableOpacity
                  onPress={() => setQuantity(Math.max(0.5, quantity - 0.5))}
                  style={styles.qtyBtn}
                >
                  <Text style={styles.qtyBtnText}>−</Text>
                </TouchableOpacity>
                <Text style={styles.qtyValue}>{quantity}</Text>
                <TouchableOpacity
                  onPress={() => setQuantity(quantity + 0.5)}
                  style={styles.qtyBtn}
                >
                  <Text style={styles.qtyBtnText}>+</Text>
                </TouchableOpacity>
              </View>

              <View style={styles.starPreview}>
                {yellowStars > 0 && (
                  <Text style={styles.yellowText}>⭐ {yellowStars} כוכבים צהובים</Text>
                )}
                {redStars > 0 && (
                  <Text style={styles.redText}>🔴 {redStars} כוכבים אדומים</Text>
                )}
                {yellowStars === 0 && redStars === 0 && (
                  <Text style={styles.freeText}>✓ ללא כוכבים (חינם)</Text>
                )}
              </View>

              <TouchableOpacity
                style={[styles.addButton, saving && styles.addButtonDisabled]}
                onPress={handleAdd}
                disabled={saving}
              >
                <Text style={styles.addButtonText}>
                  {saving ? 'שומר...' : 'הוסף לרשומות היום'}
                </Text>
              </TouchableOpacity>
            </View>
          )}
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
  label: { fontSize: 14, fontWeight: '500', color: '#374151', marginBottom: 8 },
  mealGrid: { flexDirection: 'row', flexWrap: 'wrap', gap: 8 },
  mealChip: {
    paddingHorizontal: 14,
    paddingVertical: 8,
    borderRadius: 8,
    backgroundColor: '#F3F4F6',
  },
  mealChipActive: { backgroundColor: '#F59E0B' },
  mealChipText: { color: '#374151', fontSize: 14, fontWeight: '500' },
  mealChipTextActive: { color: '#fff' },
  input: {
    borderWidth: 1,
    borderColor: '#D1D5DB',
    borderRadius: 10,
    padding: 12,
    fontSize: 16,
    color: '#111827',
    backgroundColor: '#fff',
  },
  hint: { color: '#9CA3AF', marginTop: 8, fontSize: 14, textAlign: 'center' },
  resultsList: {
    borderWidth: 1,
    borderColor: '#E5E7EB',
    borderRadius: 10,
    marginTop: 8,
    maxHeight: 200,
    overflow: 'hidden',
  },
  resultItem: {
    padding: 12,
    borderBottomWidth: 1,
    borderBottomColor: '#F3F4F6',
  },
  resultName: { fontWeight: '500', color: '#111827' },
  resultSub: { color: '#6B7280', fontSize: 13, marginTop: 2 },
  selectedFood: {
    flexDirection: 'row',
    alignItems: 'center',
    backgroundColor: '#F9FAFB',
    padding: 12,
    borderRadius: 10,
  },
  selectedName: { fontWeight: '600', color: '#111827' },
  clearBtn: { color: '#9CA3AF', fontSize: 18 },
  portionChip: {
    paddingHorizontal: 14,
    paddingVertical: 8,
    borderRadius: 8,
    backgroundColor: '#F3F4F6',
    marginLeft: 8,
  },
  portionChipActive: { backgroundColor: '#FEF3C7', borderWidth: 1, borderColor: '#F59E0B' },
  portionText: { color: '#374151', fontSize: 14 },
  portionTextActive: { color: '#D97706', fontWeight: '600' },
  portionHint: { color: '#9CA3AF', fontSize: 11, marginTop: 2 },
  portionHintActive: { color: '#B45309' },
  quantityRow: { flexDirection: 'row', alignItems: 'center', gap: 16, marginTop: 4 },
  qtyBtn: {
    width: 36,
    height: 36,
    borderRadius: 18,
    backgroundColor: '#E5E7EB',
    justifyContent: 'center',
    alignItems: 'center',
  },
  qtyBtnText: { fontSize: 20, fontWeight: 'bold', color: '#374151' },
  qtyValue: { fontSize: 20, fontWeight: '700', minWidth: 32, textAlign: 'center' },
  starPreview: {
    backgroundColor: '#F9FAFB',
    padding: 12,
    borderRadius: 10,
    marginTop: 12,
    gap: 4,
  },
  yellowText: { color: '#D97706', fontWeight: '600' },
  redText: { color: '#DC2626', fontWeight: '600' },
  freeText: { color: '#16A34A', fontWeight: '600' },
  addButton: {
    backgroundColor: '#F59E0B',
    borderRadius: 12,
    padding: 16,
    alignItems: 'center',
    marginTop: 16,
  },
  addButtonDisabled: { opacity: 0.5 },
  addButtonText: { color: '#fff', fontWeight: '700', fontSize: 16 },
})
