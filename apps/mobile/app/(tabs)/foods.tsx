import { useEffect, useState } from 'react'
import {
  View,
  Text,
  FlatList,
  StyleSheet,
  TextInput,
  TouchableOpacity,
} from 'react-native'
import { SafeAreaView } from 'react-native-safe-area-context'
import { supabase } from '@/lib/supabase'

const CATEGORY_LABELS: Record<string, string> = {
  vegetable: 'ירקות',
  fruit: 'פירות',
  dairy: 'מוצרי חלב',
  protein: 'חלבונים',
  carb: 'פחמימות',
  fat: 'שומנים',
  beverage: 'משקאות',
  snack: 'חטיפים',
}

export default function FoodsScreen() {
  const [foods, setFoods] = useState<any[]>([])
  const [query, setQuery] = useState('')
  const [activeCategory, setActiveCategory] = useState<string | null>(null)

  useEffect(() => {
    loadFoods()
  }, [])

  async function loadFoods() {
    const { data } = await supabase
      .from('foods')
      .select('*, portions:food_portions(*)')
      .eq('is_active', true)
      .order('name_he')
    setFoods(data || [])
  }

  const filtered = foods.filter((f) => {
    const matchesQuery = !query || f.name_he.includes(query) ||
      (f.name_en && f.name_en.toLowerCase().includes(query.toLowerCase()))
    const matchesCategory = !activeCategory || f.category === activeCategory
    return matchesQuery && matchesCategory
  })

  const categories = [...new Set(foods.map((f) => f.category).filter(Boolean))]

  return (
    <SafeAreaView style={styles.container}>
      <Text style={styles.title}>מאגר מזון</Text>

      <TextInput
        style={styles.input}
        value={query}
        onChangeText={setQuery}
        placeholder="חיפוש..."
        textAlign="right"
      />

      <FlatList
        horizontal
        data={[null, ...categories]}
        keyExtractor={(item) => item || 'all'}
        style={styles.categoryScroll}
        showsHorizontalScrollIndicator={false}
        renderItem={({ item }) => (
          <TouchableOpacity
            onPress={() => setActiveCategory(item)}
            style={[styles.categoryChip, activeCategory === item && styles.categoryChipActive]}
          >
            <Text style={[styles.categoryText, activeCategory === item && styles.categoryTextActive]}>
              {item ? CATEGORY_LABELS[item] || item : 'הכל'}
            </Text>
          </TouchableOpacity>
        )}
      />

      <FlatList
        data={filtered}
        keyExtractor={(item) => item.id}
        renderItem={({ item }) => (
          <View style={styles.foodItem}>
            <View style={styles.foodInfo}>
              <Text style={styles.foodName}>{item.name_he}</Text>
              {item.name_en && <Text style={styles.foodSub}>{item.name_en}</Text>}
            </View>
            <View style={[styles.badge, item.star_type === 'yellow' ? styles.badgeYellow : item.star_type === 'red' ? styles.badgeRed : styles.badgeFree]}>
              <Text style={[styles.badgeText, item.star_type === 'yellow' ? styles.badgeTextYellow : item.star_type === 'red' ? styles.badgeTextRed : styles.badgeTextFree]}>
                {item.star_type === 'yellow' ? '⭐' : item.star_type === 'red' ? '🔴' : '✓'}
              </Text>
            </View>
          </View>
        )}
        contentContainerStyle={{ paddingBottom: 16 }}
      />
    </SafeAreaView>
  )
}

const styles = StyleSheet.create({
  container: { flex: 1, backgroundColor: '#F9FAFB' },
  title: { fontSize: 24, fontWeight: 'bold', color: '#111827', padding: 16, paddingBottom: 8 },
  input: {
    marginHorizontal: 16,
    borderWidth: 1,
    borderColor: '#D1D5DB',
    borderRadius: 10,
    padding: 12,
    fontSize: 16,
    backgroundColor: '#fff',
    marginBottom: 8,
  },
  categoryScroll: { paddingHorizontal: 16, marginBottom: 8, flexGrow: 0 },
  categoryChip: {
    paddingHorizontal: 14,
    paddingVertical: 6,
    borderRadius: 20,
    backgroundColor: '#E5E7EB',
    marginLeft: 8,
    marginBottom: 8,
  },
  categoryChipActive: { backgroundColor: '#F59E0B' },
  categoryText: { color: '#374151', fontSize: 13 },
  categoryTextActive: { color: '#fff', fontWeight: '600' },
  foodItem: {
    flexDirection: 'row',
    alignItems: 'center',
    justifyContent: 'space-between',
    backgroundColor: '#fff',
    marginHorizontal: 16,
    marginBottom: 8,
    padding: 14,
    borderRadius: 12,
    shadowColor: '#000',
    shadowOpacity: 0.03,
    shadowRadius: 4,
    elevation: 1,
  },
  foodInfo: { flex: 1 },
  foodName: { fontWeight: '500', color: '#111827', fontSize: 15 },
  foodSub: { color: '#6B7280', fontSize: 13, marginTop: 2 },
  badge: { width: 32, height: 32, borderRadius: 16, justifyContent: 'center', alignItems: 'center' },
  badgeYellow: { backgroundColor: '#FEF3C7' },
  badgeRed: { backgroundColor: '#FEE2E2' },
  badgeFree: { backgroundColor: '#D1FAE5' },
  badgeText: { fontSize: 14 },
  badgeTextYellow: { color: '#D97706' },
  badgeTextRed: { color: '#DC2626' },
  badgeTextFree: { color: '#16A34A' },
})
