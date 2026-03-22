-- Seed file for Diet Angel food database
-- Source: "דיאט אנג'ל המדריך למשתמש 2023"
--
-- STAR SYSTEM:
--   Red stars    = carbohydrates & sweets (bread, grains, rice, pasta, potato, etc.)
--                  1 red star ≈ 80-100 calories from carbs
--   Yellow stars = proteins (meat/fish/eggs/dairy/legumes), fruits, healthy fats
--                  1 yellow star ≈ 100 calories; meat/fish group = 2 yellow stars per 150g serving
--   Free (0)     = almost all non-starchy vegetables, water, black coffee, herbs
--
-- DAILY QUOTA (per PDF table):
--   Women + lose weight:  total=12, red sub-quota=2-3
--   Women + maintain:     total=15, red sub-quota=4-5
--   Men   + lose weight:  total=15, red sub-quota=4-5
--   Men   + maintain:     total=18, red sub-quota=6-7

-- =============================================
-- CARBOHYDRATES (red stars) - bread & grains
-- 1 red star = 80-100 calories
-- =============================================
INSERT INTO public.foods (id, name_he, name_en, category, star_type, source) VALUES
  -- Breads
  ('11111111-1111-1111-1111-111111111001', 'לחם רגיל', 'White Bread', 'carb', 'red', 'manual'),
  ('11111111-1111-1111-1111-111111111002', 'לחם מלא', 'Whole Wheat Bread', 'carb', 'red', 'manual'),
  ('11111111-1111-1111-1111-111111111003', 'פיתה לבנה', 'White Pita', 'carb', 'red', 'manual'),
  ('11111111-1111-1111-1111-111111111004', 'פיתה מלאה', 'Whole Wheat Pita', 'carb', 'red', 'manual'),
  ('11111111-1111-1111-1111-111111111013', 'לחמנייה', 'Bread Roll', 'carb', 'red', 'manual'),
  ('11111111-1111-1111-1111-111111111014', 'בגט', 'Baguette', 'carb', 'red', 'manual'),
  ('11111111-1111-1111-1111-111111111019', 'לחם קל מלא', 'Light Whole Wheat Bread', 'carb', 'red', 'manual'),
  ('11111111-1111-1111-1111-111111111020', 'פרוסות לחם קל מלא', 'Light Whole Bread Slices', 'carb', 'red', 'manual'),
  -- Crackers & cakes
  ('11111111-1111-1111-1111-111111111011', 'קרקר מחיטה מלאה', 'Whole Wheat Cracker', 'carb', 'red', 'manual'),
  ('11111111-1111-1111-1111-111111111021', 'פריכיות אורז', 'Rice Cakes', 'carb', 'red', 'manual'),
  ('11111111-1111-1111-1111-111111111022', 'טוסטון (מארז אישי)', 'Personal Toast', 'carb', 'red', 'manual'),
  ('11111111-1111-1111-1111-111111111023', 'מצה קלה', 'Light Matza', 'carb', 'red', 'manual'),
  ('11111111-1111-1111-1111-111111111024', 'מצה', 'Matza', 'carb', 'red', 'manual'),
  -- Grains & cereals
  ('11111111-1111-1111-1111-111111111015', 'שיבולת שועל (קוואקר)', 'Oats / Quaker', 'carb', 'red', 'manual'),
  ('11111111-1111-1111-1111-111111111016', 'גרנולה', 'Granola', 'carb', 'red', 'manual'),
  ('11111111-1111-1111-1111-111111111025', 'דגני בוקר (בסיבים)', 'Whole Grain Cereal', 'carb', 'red', 'manual'),
  -- Cooked grains
  ('11111111-1111-1111-1111-111111111005', 'אורז לבן מבושל', 'White Rice (cooked)', 'carb', 'red', 'manual'),
  ('11111111-1111-1111-1111-111111111006', 'אורז מלא מבושל', 'Brown Rice (cooked)', 'carb', 'red', 'manual'),
  ('11111111-1111-1111-1111-111111111007', 'פסטה מבושלת', 'Pasta (cooked)', 'carb', 'red', 'manual'),
  ('11111111-1111-1111-1111-111111111009', 'קוסקוס מבושל', 'Couscous (cooked)', 'carb', 'red', 'manual'),
  ('11111111-1111-1111-1111-111111111010', 'בולגור מבושל', 'Bulgur (cooked)', 'carb', 'red', 'manual'),
  ('11111111-1111-1111-1111-111111111026', 'קינואה מבושלת', 'Quinoa (cooked)', 'carb', 'red', 'manual'),
  ('11111111-1111-1111-1111-111111111027', 'גריסי פנינה מבושלים', 'Pearl Barley (cooked)', 'carb', 'red', 'manual'),
  -- Starchy vegetables (these are in the carb group)
  ('11111111-1111-1111-1111-111111111008', 'תפוח אדמה', 'Potato', 'carb', 'red', 'manual'),
  ('11111111-1111-1111-1111-111111111017', 'בטטה', 'Sweet Potato', 'carb', 'red', 'manual'),
  ('11111111-1111-1111-1111-111111111018', 'תירס גרגרים', 'Corn Kernels', 'carb', 'red', 'manual'),
  ('11111111-1111-1111-1111-111111111028', 'תירס קלח', 'Corn on Cob', 'carb', 'red', 'manual'),
  -- Flour & thickeners
  ('11111111-1111-1111-1111-111111111029', 'קמח לבן/מלא', 'White/Whole Flour', 'carb', 'red', 'manual'),
  ('11111111-1111-1111-1111-111111111030', 'קורנפלור', 'Cornflour', 'carb', 'red', 'manual');

-- =============================================
-- PROTEINS / MEAT group (yellow stars)
-- 2 yellow stars per 150g serving (~200 cal)
-- =============================================
INSERT INTO public.foods (id, name_he, name_en, category, star_type, source) VALUES
  ('22222222-2222-2222-2222-222222222001', 'חזה עוף', 'Chicken Breast', 'protein', 'yellow', 'manual'),
  ('22222222-2222-2222-2222-222222222002', 'שוק/ירך עוף', 'Chicken Thigh', 'protein', 'yellow', 'manual'),
  ('22222222-2222-2222-2222-222222222013', 'הודו חזה', 'Turkey Breast', 'protein', 'yellow', 'manual'),
  ('22222222-2222-2222-2222-222222222016', 'בשר בקר רזה', 'Lean Beef', 'protein', 'yellow', 'manual'),
  ('22222222-2222-2222-2222-222222222004', 'בשר בקר טחון', 'Ground Beef', 'protein', 'yellow', 'manual'),
  ('22222222-2222-2222-2222-222222222005', 'סלמון', 'Salmon', 'protein', 'yellow', 'manual'),
  ('22222222-2222-2222-2222-222222222014', 'פילה דג', 'Fish Fillet', 'protein', 'yellow', 'manual'),
  ('22222222-2222-2222-2222-222222222017', 'כבד עוף', 'Chicken Liver', 'protein', 'yellow', 'manual'),
  ('22222222-2222-2222-2222-222222222018', 'כדורי בשר', 'Meatballs', 'protein', 'yellow', 'manual');

-- =============================================
-- EGGS & SUBSTITUTES (yellow stars)
-- 1 yellow star = 100 calories
-- =============================================
INSERT INTO public.foods (id, name_he, name_en, category, star_type, source) VALUES
  ('22222222-2222-2222-2222-222222222003', 'ביצה', 'Egg', 'protein', 'yellow', 'manual'),
  ('22222222-2222-2222-2222-222222222006', 'טונה במים', 'Tuna in Water', 'protein', 'yellow', 'manual'),
  ('22222222-2222-2222-2222-222222222019', 'טונה בשמן', 'Tuna in Oil', 'protein', 'yellow', 'manual'),
  ('22222222-2222-2222-2222-222222222020', 'סרדינים', 'Sardines', 'protein', 'yellow', 'manual'),
  ('22222222-2222-2222-2222-222222222021', 'סלמון מעושן', 'Smoked Salmon', 'protein', 'yellow', 'manual'),
  ('22222222-2222-2222-2222-222222222007', 'טופו', 'Tofu', 'protein', 'yellow', 'manual');

-- =============================================
-- LEGUMES - protein substitutes (yellow stars)
-- Listed in the protein group; also contain some carbs
-- =============================================
INSERT INTO public.foods (id, name_he, name_en, category, star_type, source) VALUES
  ('22222222-2222-2222-2222-222222222010', 'עדשים', 'Lentils', 'protein', 'yellow', 'manual'),
  ('22222222-2222-2222-2222-222222222011', 'שעועית מבושלת', 'Cooked Beans', 'protein', 'yellow', 'manual'),
  ('22222222-2222-2222-2222-222222222012', 'גרגרי חומוס', 'Chickpeas', 'protein', 'yellow', 'manual'),
  ('22222222-2222-2222-2222-222222222009', 'חומוס (ממרח)', 'Hummus Spread', 'protein', 'yellow', 'manual'),
  ('22222222-2222-2222-2222-222222222008', 'פלאפל', 'Falafel', 'protein', 'yellow', 'manual');

-- =============================================
-- DAIRY (yellow stars)
-- 1 yellow star = 100 calories
-- Items in bold in PDF are preferred choices
-- =============================================
INSERT INTO public.foods (id, name_he, name_en, category, star_type, source) VALUES
  -- Milk
  ('33333333-3333-3333-3333-333333333001', 'חלב 3%', 'Milk 3%', 'dairy', 'yellow', 'manual'),
  ('33333333-3333-3333-3333-333333333002', 'חלב 1%', 'Milk 1%', 'dairy', 'yellow', 'manual'),
  ('33333333-3333-3333-3333-333333333022', 'משקה סויה', 'Soy Milk', 'dairy', 'yellow', 'manual'),
  -- White cheese (gvina levana)
  ('33333333-3333-3333-3333-333333333006', 'גבינה לבנה 5%', 'White Cheese 5%', 'dairy', 'yellow', 'manual'),
  ('33333333-3333-3333-3333-333333333023', 'גבינה לבנה 3%', 'White Cheese 3%', 'dairy', 'yellow', 'manual'),
  -- Cottage & fresh cheeses
  ('33333333-3333-3333-3333-333333333008', 'קוטג'' 5%', 'Cottage Cheese 5%', 'dairy', 'yellow', 'manual'),
  ('33333333-3333-3333-3333-333333333009', 'גבינת ריקוטה 5%', 'Ricotta 5%', 'dairy', 'yellow', 'manual'),
  -- Hard/semi-hard cheeses
  ('33333333-3333-3333-3333-333333333007', 'גבינה בולגרית/צפתית 5%', 'Bulgarian/Tzfatit Cheese 5%', 'dairy', 'yellow', 'manual'),
  ('33333333-3333-3333-3333-333333333005', 'גבינה צהובה 9%', 'Yellow Cheese 9%', 'dairy', 'yellow', 'manual'),
  ('33333333-3333-3333-3333-333333333024', 'גבינת עיזים 5%', 'Goat Cheese 5%', 'dairy', 'yellow', 'manual'),
  -- Yogurt
  ('33333333-3333-3333-3333-333333333003', 'יוגורט טבעי עד 3%', 'Natural Yogurt ≤3%', 'dairy', 'yellow', 'manual'),
  ('33333333-3333-3333-3333-333333333004', 'יוגורט 0% (מעדן)', 'Yogurt 0%', 'dairy', 'yellow', 'manual'),
  ('33333333-3333-3333-3333-333333333025', 'יוגורט טבעי PRO', 'Pro Natural Yogurt', 'dairy', 'yellow', 'manual'),
  -- Drinking products
  ('33333333-3333-3333-3333-333333333026', 'לבן 3%', 'Labane 3%', 'dairy', 'yellow', 'manual'),
  ('33333333-3333-3333-3333-333333333027', 'רוויון', 'Rivon Buttermilk', 'dairy', 'yellow', 'manual');

-- =============================================
-- FRUITS (yellow stars)
-- 1 yellow star per portion (listed in PDF)
-- =============================================
INSERT INTO public.foods (id, name_he, name_en, category, star_type, source) VALUES
  ('44444444-4444-4444-4444-444444444001', 'תפוח עץ', 'Apple', 'fruit', 'yellow', 'manual'),
  ('44444444-4444-4444-4444-444444444003', 'תפוז', 'Orange', 'fruit', 'yellow', 'manual'),
  ('44444444-4444-4444-4444-444444444016', 'פירות הדר', 'Citrus Fruits', 'fruit', 'yellow', 'manual'),
  ('44444444-4444-4444-4444-444444444002', 'בננה', 'Banana', 'fruit', 'yellow', 'manual'),
  ('44444444-4444-4444-4444-444444444008', 'אפרסק', 'Peach', 'fruit', 'yellow', 'manual'),
  ('44444444-4444-4444-4444-444444444012', 'שזיף טרי', 'Fresh Plum', 'fruit', 'yellow', 'manual'),
  ('44444444-4444-4444-4444-444444444017', 'משמש טרי', 'Fresh Apricot', 'fruit', 'yellow', 'manual'),
  ('44444444-4444-4444-4444-444444444014', 'אננס טרי', 'Fresh Pineapple', 'fruit', 'yellow', 'manual'),
  ('44444444-4444-4444-4444-444444444018', 'קיווי', 'Kiwi', 'fruit', 'yellow', 'manual'),
  ('44444444-4444-4444-4444-444444444006', 'תות שדה', 'Strawberry', 'fruit', 'yellow', 'manual'),
  ('44444444-4444-4444-4444-444444444019', 'אסאי', 'Acai', 'fruit', 'yellow', 'manual'),
  ('44444444-4444-4444-4444-444444444005', 'אבטיח', 'Watermelon', 'fruit', 'yellow', 'manual'),
  ('44444444-4444-4444-4444-444444444009', 'מלון', 'Melon', 'fruit', 'yellow', 'manual'),
  ('44444444-4444-4444-4444-444444444011', 'קלמנטינה', 'Clementine', 'fruit', 'yellow', 'manual'),
  ('44444444-4444-4444-4444-444444444004', 'ענבים', 'Grapes', 'fruit', 'yellow', 'manual'),
  ('44444444-4444-4444-4444-444444444007', 'מנגו', 'Mango', 'fruit', 'yellow', 'manual'),
  ('44444444-4444-4444-4444-444444444015', 'תמרים', 'Dates', 'fruit', 'yellow', 'manual');

-- =============================================
-- FATS (yellow stars) - from the "שומן, רטבים וממרחים" section
-- Counted as yellow stars; portions are small
-- =============================================
INSERT INTO public.foods (id, name_he, name_en, category, star_type, source) VALUES
  ('77777777-7777-7777-7777-777777777001', 'אבוקדו', 'Avocado', 'fat', 'yellow', 'manual'),
  ('77777777-7777-7777-7777-777777777002', 'טחינה גולמית', 'Raw Tahini', 'fat', 'yellow', 'manual'),
  ('77777777-7777-7777-7777-777777777003', 'חמאת בוטנים טבעית', 'Natural Peanut Butter', 'fat', 'yellow', 'manual'),
  ('77777777-7777-7777-7777-777777777004', 'שקדיה (חמאת שקדים)', 'Almond Butter', 'fat', 'yellow', 'manual'),
  ('77777777-7777-7777-7777-777777777005', 'אגוזי מלך', 'Walnuts', 'fat', 'yellow', 'manual'),
  ('77777777-7777-7777-7777-777777777006', 'שקדים טריים', 'Raw Almonds', 'fat', 'yellow', 'manual');

-- =============================================
-- FREE VEGETABLES (0 stars) - "נשנושי חינם"
-- Per PDF: all non-starchy vegetables are free
-- =============================================
INSERT INTO public.foods (id, name_he, name_en, category, star_type, source) VALUES
  ('55555555-5555-5555-5555-555555555001', 'עגבנייה', 'Tomato', 'vegetable', 'free', 'manual'),
  ('55555555-5555-5555-5555-555555555002', 'מלפפון', 'Cucumber', 'vegetable', 'free', 'manual'),
  ('55555555-5555-5555-5555-555555555003', 'פלפל', 'Bell Pepper', 'vegetable', 'free', 'manual'),
  ('55555555-5555-5555-5555-555555555004', 'גזר', 'Carrot', 'vegetable', 'free', 'manual'),
  ('55555555-5555-5555-5555-555555555005', 'קישוא', 'Zucchini', 'vegetable', 'free', 'manual'),
  ('55555555-5555-5555-5555-555555555006', 'ברוקולי', 'Broccoli', 'vegetable', 'free', 'manual'),
  ('55555555-5555-5555-5555-555555555008', 'בצל', 'Onion', 'vegetable', 'free', 'manual'),
  ('55555555-5555-5555-5555-555555555009', 'שום', 'Garlic', 'vegetable', 'free', 'manual'),
  ('55555555-5555-5555-5555-555555555010', 'חצילים', 'Eggplant', 'vegetable', 'free', 'manual'),
  ('55555555-5555-5555-5555-555555555011', 'כרובית', 'Cauliflower', 'vegetable', 'free', 'manual'),
  ('55555555-5555-5555-5555-555555555012', 'כרוב', 'Cabbage', 'vegetable', 'free', 'manual'),
  ('55555555-5555-5555-5555-555555555013', 'פטריות', 'Mushrooms', 'vegetable', 'free', 'manual'),
  ('55555555-5555-5555-5555-555555555014', 'תרד', 'Spinach', 'vegetable', 'free', 'manual'),
  ('55555555-5555-5555-5555-555555555015', 'אספרגוס', 'Asparagus', 'vegetable', 'free', 'manual'),
  ('55555555-5555-5555-5555-555555555016', 'עגבניות שרי', 'Cherry Tomatoes', 'vegetable', 'free', 'manual'),
  ('55555555-5555-5555-5555-555555555017', 'מקלות סלרי', 'Celery Sticks', 'vegetable', 'free', 'manual'),
  ('55555555-5555-5555-5555-555555555018', 'שעועית ירוקה', 'Green Beans', 'vegetable', 'free', 'manual'),
  ('55555555-5555-5555-5555-555555555019', 'אפונה סינית', 'Snap Peas', 'vegetable', 'free', 'manual'),
  ('55555555-5555-5555-5555-555555555020', 'חסה', 'Lettuce', 'vegetable', 'free', 'manual'),
  ('55555555-5555-5555-5555-555555555021', 'רוקט', 'Rocket/Arugula', 'vegetable', 'free', 'manual'),
  ('55555555-5555-5555-5555-555555555022', 'לפת', 'Turnip', 'vegetable', 'free', 'manual'),
  ('55555555-5555-5555-5555-555555555023', 'כרפס', 'Celery', 'vegetable', 'free', 'manual'),
  ('55555555-5555-5555-5555-555555555024', 'במיה', 'Okra', 'vegetable', 'free', 'manual'),
  ('55555555-5555-5555-5555-555555555025', 'תרד שוויצרי', 'Swiss Chard', 'vegetable', 'free', 'manual');

-- =============================================
-- FREE BEVERAGES & CONDIMENTS
-- =============================================
INSERT INTO public.foods (id, name_he, name_en, category, star_type, source) VALUES
  ('66666666-6666-6666-6666-666666666001', 'מים', 'Water', 'beverage', 'free', 'manual'),
  ('66666666-6666-6666-6666-666666666002', 'קפה שחור', 'Black Coffee', 'beverage', 'free', 'manual'),
  ('66666666-6666-6666-6666-666666666003', 'תה ללא סוכר', 'Unsweetened Tea', 'beverage', 'free', 'manual'),
  ('66666666-6666-6666-6666-666666666008', 'חומץ', 'Vinegar', 'beverage', 'free', 'manual'),
  ('66666666-6666-6666-6666-666666666011', 'חומץ בלסמי', 'Balsamic Vinegar', 'beverage', 'free', 'manual'),
  ('66666666-6666-6666-6666-666666666005', 'פטרוזיליה', 'Parsley', 'vegetable', 'free', 'manual'),
  ('66666666-6666-6666-6666-666666666006', 'נענע', 'Mint', 'vegetable', 'free', 'manual'),
  ('66666666-6666-6666-6666-666666666007', 'בזיליקום', 'Basil', 'vegetable', 'free', 'manual'),
  ('66666666-6666-6666-6666-666666666009', 'לימון', 'Lemon', 'vegetable', 'free', 'manual'),
  ('66666666-6666-6666-6666-666666666010', 'מלפפון חמוץ', 'Pickle', 'vegetable', 'free', 'manual'),
  ('66666666-6666-6666-6666-666666666012', 'חרדל', 'Mustard', 'beverage', 'free', 'manual'),
  ('66666666-6666-6666-6666-666666666013', 'סילאן', 'Date Honey/Silan', 'beverage', 'free', 'manual');

-- =============================================
-- FOOD PORTIONS
-- =============================================

-- ---- BREAD GROUP ----
-- 1 red star per listed portion (80-100 cal each)

-- לחם רגיל (white bread) - 1 slice = 1 star
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order) VALUES
  ('11111111-1111-1111-1111-111111111001', 'פרוסה אחת', '1 slice', 30, 0, 1.0, true, 1),
  ('11111111-1111-1111-1111-111111111001', '2 פרוסות', '2 slices', 60, 0, 2.0, false, 2);

-- לחם מלא (whole wheat) - 1 slice = 1 star
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order) VALUES
  ('11111111-1111-1111-1111-111111111002', 'פרוסה אחת', '1 slice', 30, 0, 1.0, true, 1),
  ('11111111-1111-1111-1111-111111111002', '2 פרוסות', '2 slices', 60, 0, 2.0, false, 2);

-- פיתה לבנה - per PDF: 1/3 unit = 1 star → whole = 3 stars
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order) VALUES
  ('11111111-1111-1111-1111-111111111003', 'שליש פיתה', '1/3 pita', 22, 0, 1.0, true, 1),
  ('11111111-1111-1111-1111-111111111003', 'חצי פיתה', 'Half pita', 33, 0, 1.5, false, 2),
  ('11111111-1111-1111-1111-111111111003', 'פיתה שלמה', 'Whole pita', 65, 0, 3.0, false, 3);

-- פיתה מלאה - same portions as white pita
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order) VALUES
  ('11111111-1111-1111-1111-111111111004', 'שליש פיתה', '1/3 pita', 22, 0, 1.0, true, 1),
  ('11111111-1111-1111-1111-111111111004', 'חצי פיתה', 'Half pita', 33, 0, 1.5, false, 2),
  ('11111111-1111-1111-1111-111111111004', 'פיתה שלמה', 'Whole pita', 65, 0, 3.0, false, 3);

-- לחמנייה - 1 unit = 1/2 star (per PDF: small roll = 1/2 star; regular = 1 star)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order) VALUES
  ('11111111-1111-1111-1111-111111111013', 'לחמנייה אחת', '1 roll', 45, 0, 1.0, true, 1);

-- בגט - 1/4 small = 1 star per PDF
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order) VALUES
  ('11111111-1111-1111-1111-111111111014', 'רבע בגט קטן', '1/4 small baguette', 30, 0, 1.0, true, 1),
  ('11111111-1111-1111-1111-111111111014', 'חצי בגט קטן', 'Half small baguette', 60, 0, 2.0, false, 2);

-- לחם קל מלא - 1 unit = 1 star (bold in PDF = preferred)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order) VALUES
  ('11111111-1111-1111-1111-111111111019', 'יחידה אחת', '1 unit', 25, 0, 1.0, true, 1);

-- פרוסות לחם קל מלא - 2 slices = 1 star (bold = preferred)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order) VALUES
  ('11111111-1111-1111-1111-111111111020', '2 פרוסות', '2 slices', 40, 0, 1.0, true, 1),
  ('11111111-1111-1111-1111-111111111020', '4 פרוסות', '4 slices', 80, 0, 2.0, false, 2);

-- קרקר מחיטה מלאה - 2-3 units = 1 star (bold = preferred)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order) VALUES
  ('11111111-1111-1111-1111-111111111011', '2 קרקרים', '2 crackers', 16, 0, 1.0, true, 1),
  ('11111111-1111-1111-1111-111111111011', '3 קרקרים', '3 crackers', 24, 0, 1.0, false, 2);

-- פריכיות אורז - small: 10 units = 1 star; regular: 2-3 units = 1 star
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order) VALUES
  ('11111111-1111-1111-1111-111111111021', '2-3 פריכיות', '2-3 rice cakes', 20, 0, 1.0, true, 1),
  ('11111111-1111-1111-1111-111111111021', '10 פריכיות קטנות', '10 small rice cakes', 20, 0, 1.0, false, 2);

-- טוסטון מארז אישי - 1 unit = 1 star
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order) VALUES
  ('11111111-1111-1111-1111-111111111022', 'יחידה אחת', '1 unit', 20, 0, 1.0, true, 1);

-- מצה קלה - 1 unit = 1 star
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order) VALUES
  ('11111111-1111-1111-1111-111111111023', 'מצה אחת', '1 matza', 30, 0, 1.0, true, 1);

-- מצה - 1/2 unit = 1 star
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order) VALUES
  ('11111111-1111-1111-1111-111111111024', 'חצי מצה', 'Half matza', 15, 0, 1.0, true, 1),
  ('11111111-1111-1111-1111-111111111024', 'מצה שלמה', 'Whole matza', 30, 0, 2.0, false, 2);

-- ---- CEREALS/OATS ----
-- שיבולת שועל / קוואקר - 3 tablespoons dry = 1 star (bold = preferred)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order) VALUES
  ('11111111-1111-1111-1111-111111111015', '3 כפות יבש', '3 tbsp dry', 25, 0, 1.0, true, 1),
  ('11111111-1111-1111-1111-111111111015', 'חצי כוס יבש', 'Half cup dry', 45, 0, 2.0, false, 2);

-- גרנולה - 1 tablespoon = 1 star (marked as red/limited in PDF)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order) VALUES
  ('11111111-1111-1111-1111-111111111016', 'כף אחת', '1 tbsp', 15, 0, 1.0, true, 1),
  ('11111111-1111-1111-1111-111111111016', '3 כפות', '3 tbsp', 45, 0, 3.0, false, 2);

-- דגני בוקר עשירים בסיבים - 3/4 cup = 1 star
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order) VALUES
  ('11111111-1111-1111-1111-111111111025', '4 כפות / חצי כוס', '4 tbsp / half cup', 30, 0, 1.0, true, 1),
  ('11111111-1111-1111-1111-111111111025', '3/4 כוס', '3/4 cup', 45, 0, 1.5, false, 2);

-- ---- COOKED GRAINS ----
-- אורז לבן/מלא מבושל - 3 tablespoons (half cup) = 1 star
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order) VALUES
  ('11111111-1111-1111-1111-111111111005', 'חצי כוס מבושל', 'Half cup cooked', 90, 0, 1.0, true, 1),
  ('11111111-1111-1111-1111-111111111005', 'כוס מבושל', '1 cup cooked', 180, 0, 2.0, false, 2);

INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order) VALUES
  ('11111111-1111-1111-1111-111111111006', 'חצי כוס מבושל', 'Half cup cooked', 90, 0, 1.0, true, 1),
  ('11111111-1111-1111-1111-111111111006', 'כוס מבושל', '1 cup cooked', 180, 0, 2.0, false, 2);

-- פסטה מבושלת - half cup = 1 star
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order) VALUES
  ('11111111-1111-1111-1111-111111111007', 'חצי כוס מבושל', 'Half cup cooked', 70, 0, 1.0, true, 1),
  ('11111111-1111-1111-1111-111111111007', 'כוס מבושל', '1 cup cooked', 140, 0, 2.0, false, 2);

-- קוסקוס/בולגור מבושל - half cup = 1 star
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order) VALUES
  ('11111111-1111-1111-1111-111111111009', 'חצי כוס מבושל', 'Half cup cooked', 80, 0, 1.0, true, 1),
  ('11111111-1111-1111-1111-111111111009', 'כוס מבושל', '1 cup cooked', 160, 0, 2.0, false, 2);

INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order) VALUES
  ('11111111-1111-1111-1111-111111111010', 'חצי כוס מבושל', 'Half cup cooked', 80, 0, 1.0, true, 1),
  ('11111111-1111-1111-1111-111111111010', 'כוס מבושל', '1 cup cooked', 160, 0, 2.0, false, 2);

-- קינואה מבושלת - 4 tablespoons = 1 star (bold = preferred)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order) VALUES
  ('11111111-1111-1111-1111-111111111026', '4 כפות', '4 tbsp cooked', 60, 0, 1.0, true, 1),
  ('11111111-1111-1111-1111-111111111026', 'חצי כוס', 'Half cup cooked', 90, 0, 1.5, false, 2);

-- גריסי פנינה מבושלים - 4 tablespoons = 1 star (bold = preferred)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order) VALUES
  ('11111111-1111-1111-1111-111111111027', '4 כפות', '4 tbsp cooked', 60, 0, 1.0, true, 1),
  ('11111111-1111-1111-1111-111111111027', 'חצי כוס', 'Half cup cooked', 90, 0, 1.5, false, 2);

-- ---- STARCHY VEGETABLES ----
-- תפוח אדמה - half small baked = 1 star
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order) VALUES
  ('11111111-1111-1111-1111-111111111008', 'חצי קטן (אפוי)', 'Half small (baked)', 75, 0, 1.0, true, 1),
  ('11111111-1111-1111-1111-111111111008', 'בינוני (אפוי)', 'Medium (baked)', 150, 0, 2.0, false, 2),
  ('11111111-1111-1111-1111-111111111008', '5 כפות פירה', '5 tbsp mashed', 100, 0, 1.0, false, 3);

-- בטטה - similar to potato
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order) VALUES
  ('11111111-1111-1111-1111-111111111017', 'חצי בינונית', 'Half medium', 75, 0, 1.0, true, 1),
  ('11111111-1111-1111-1111-111111111017', 'בטטה בינונית', 'Medium sweet potato', 150, 0, 2.0, false, 2);

-- תירס גרגרים - 3 tablespoons = 1 star
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order) VALUES
  ('11111111-1111-1111-1111-111111111018', '3 כפות', '3 tbsp', 45, 0, 1.0, true, 1),
  ('11111111-1111-1111-1111-111111111018', 'חצי כוס', 'Half cup', 80, 0, 1.5, false, 2);

-- תירס קלח - 1/2 cob = 1 star
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order) VALUES
  ('11111111-1111-1111-1111-111111111028', 'חצי קלח', 'Half cob', 80, 0, 1.0, true, 1),
  ('11111111-1111-1111-1111-111111111028', 'קלח שלם', 'Whole cob', 160, 0, 2.0, false, 2);

-- קמח לבן/מלא - 2 tablespoons = 1 star
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order) VALUES
  ('11111111-1111-1111-1111-111111111029', '2 כפות', '2 tbsp', 20, 0, 1.0, true, 1);

-- קורנפלור - 3 tablespoons = 1 star
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order) VALUES
  ('11111111-1111-1111-1111-111111111030', '3 כפות', '3 tbsp', 24, 0, 1.0, true, 1);

-- ---- MEAT / FISH GROUP ----
-- 2 yellow stars per standard serving (150g = ~200 cal per PDF)

-- חזה עוף - 150g raw = 2 stars; smaller portions scaled
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order) VALUES
  ('22222222-2222-2222-2222-222222222001', '150 גרם (מנה)', '150g serving', 150, 2.0, 0, true, 1),
  ('22222222-2222-2222-2222-222222222001', '100 גרם', '100g', 100, 1.5, 0, false, 2),
  ('22222222-2222-2222-2222-222222222001', '200 גרם', '200g', 200, 2.5, 0, false, 3);

-- שוק/ירך עוף
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order) VALUES
  ('22222222-2222-2222-2222-222222222002', '2 שוקיים', '2 thighs', 150, 2.0, 0, true, 1),
  ('22222222-2222-2222-2222-222222222002', 'שוק אחת', '1 thigh', 75, 1.0, 0, false, 2);

-- הודו חזה
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order) VALUES
  ('22222222-2222-2222-2222-222222222013', '150 גרם', '150g', 150, 2.0, 0, true, 1),
  ('22222222-2222-2222-2222-222222222013', '2 פרוסות', '2 slices', 60, 1.0, 0, false, 2);

-- בשר בקר רזה
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order) VALUES
  ('22222222-2222-2222-2222-222222222016', '150 גרם', '150g', 150, 2.0, 0, true, 1),
  ('22222222-2222-2222-2222-222222222016', '100 גרם', '100g', 100, 1.5, 0, false, 2);

-- בשר בקר טחון
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order) VALUES
  ('22222222-2222-2222-2222-222222222004', '150 גרם', '150g', 150, 2.0, 0, true, 1),
  ('22222222-2222-2222-2222-222222222004', '100 גרם', '100g', 100, 1.5, 0, false, 2);

-- סלמון - 150g = 2 stars
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order) VALUES
  ('22222222-2222-2222-2222-222222222005', '150 גרם (מנה)', '150g serving', 150, 2.0, 0, true, 1),
  ('22222222-2222-2222-2222-222222222005', '100 גרם', '100g', 100, 1.5, 0, false, 2);

-- פילה דג - 150g = 2 stars
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order) VALUES
  ('22222222-2222-2222-2222-222222222014', '150 גרם', '150g', 150, 2.0, 0, true, 1),
  ('22222222-2222-2222-2222-222222222014', '100 גרם', '100g', 100, 1.5, 0, false, 2);

-- כבד עוף - 4 small units = 2 stars
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order) VALUES
  ('22222222-2222-2222-2222-222222222017', '4 יחידות קטנות', '4 small units', 120, 2.0, 0, true, 1),
  ('22222222-2222-2222-2222-222222222017', '2 יחידות', '2 units', 60, 1.0, 0, false, 2);

-- כדורי בשר - 3 small units = 2 stars (bold = preferred)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order) VALUES
  ('22222222-2222-2222-2222-222222222018', '3 כדורים קטנים', '3 small meatballs', 100, 2.0, 0, true, 1),
  ('22222222-2222-2222-2222-222222222018', '5 כדורים קטנים', '5 small meatballs', 160, 3.0, 0, false, 2);

-- ---- EGGS & SUBSTITUTES ----
-- ביצה - 1 egg = 1 yellow star (per PDF: 1 unit = 1 star at 100 cal)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order) VALUES
  ('22222222-2222-2222-2222-222222222003', 'ביצה אחת', '1 egg', 55, 1.0, 0, true, 1),
  ('22222222-2222-2222-2222-222222222003', '2 ביצים', '2 eggs', 110, 2.0, 0, false, 2),
  ('22222222-2222-2222-2222-222222222003', '3 ביצים', '3 eggs', 165, 3.0, 0, false, 3);

-- טונה במים - 1 can (after draining) = 1 star
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order) VALUES
  ('22222222-2222-2222-2222-222222222006', 'קופסה (אחרי סינון)', '1 can (drained)', 80, 1.0, 0, true, 1),
  ('22222222-2222-2222-2222-222222222006', '2 קופסאות', '2 cans', 160, 2.0, 0, false, 2);

-- טונה בשמן - 3/4 can = 1 star
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order) VALUES
  ('22222222-2222-2222-2222-222222222019', '3/4 קופסה', '3/4 can', 60, 1.0, 0, true, 1),
  ('22222222-2222-2222-2222-222222222019', 'קופסה שלמה', '1 can', 80, 1.5, 0, false, 2);

-- סרדינים - 1/2 can = 1 star
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order) VALUES
  ('22222222-2222-2222-2222-222222222020', 'חצי קופסה', 'Half can', 55, 1.0, 0, true, 1),
  ('22222222-2222-2222-2222-222222222020', 'קופסה שלמה', 'Whole can', 110, 2.0, 0, false, 2);

-- סלמון מעושן - 3 slices = 1 star
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order) VALUES
  ('22222222-2222-2222-2222-222222222021', '3 פרוסות', '3 slices', 60, 1.0, 0, true, 1),
  ('22222222-2222-2222-2222-222222222021', '5 פרוסות', '5 slices', 100, 1.5, 0, false, 2);

-- טופו - 150g = 2 stars (protein substitute)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order) VALUES
  ('22222222-2222-2222-2222-222222222007', '150 גרם', '150g', 150, 2.0, 0, true, 1),
  ('22222222-2222-2222-2222-222222222007', '100 גרם', '100g', 100, 1.5, 0, false, 2);

-- ---- LEGUMES ----
-- עדשים מבושלות - protein substitute
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order) VALUES
  ('22222222-2222-2222-2222-222222222010', 'חצי כוס מבושל', 'Half cup cooked', 100, 1.0, 0.5, true, 1),
  ('22222222-2222-2222-2222-222222222010', 'כוס מבושל', '1 cup cooked', 200, 2.0, 1.0, false, 2);

-- שעועית מבושלת
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order) VALUES
  ('22222222-2222-2222-2222-222222222011', 'חצי כוס', 'Half cup', 90, 1.0, 0.5, true, 1),
  ('22222222-2222-2222-2222-222222222011', 'כוס', '1 cup', 180, 2.0, 1.0, false, 2);

-- גרגרי חומוס מבושלים
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order) VALUES
  ('22222222-2222-2222-2222-222222222012', 'חצי כוס', 'Half cup', 80, 1.0, 0.5, true, 1),
  ('22222222-2222-2222-2222-222222222012', 'כוס', '1 cup', 160, 2.0, 1.0, false, 2);

-- חומוס ממרח
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order) VALUES
  ('22222222-2222-2222-2222-222222222009', '2 כפות', '2 tbsp', 30, 0.5, 0, true, 1),
  ('22222222-2222-2222-2222-222222222009', '4 כפות', '4 tbsp', 60, 1.0, 0, false, 2);

-- פלאפל (has both protein and some carbs)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order) VALUES
  ('22222222-2222-2222-2222-222222222008', '3 כדורים', '3 balls', 60, 1.0, 0.5, true, 1),
  ('22222222-2222-2222-2222-222222222008', '5 כדורים', '5 balls', 100, 1.5, 1.0, false, 2);

-- ---- DAIRY GROUP ----
-- 1 yellow star = 100 calories per serving

-- חלב 3% - 3/4 cup = 1 star (per PDF: 3/4 כוס = 1 כוכב)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order) VALUES
  ('33333333-3333-3333-3333-333333333001', '3/4 כוס (185 מ"ל)', '3/4 cup (185ml)', 185, 1.0, 0, true, 1),
  ('33333333-3333-3333-3333-333333333001', 'כוס שלמה', '1 cup', 250, 1.5, 0, false, 2);

-- חלב 1% - 1 cup = 1 star
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order) VALUES
  ('33333333-3333-3333-3333-333333333002', 'כוס (250 מ"ל)', '1 cup (250ml)', 250, 1.0, 0, true, 1),
  ('33333333-3333-3333-3333-333333333002', 'חצי כוס', 'Half cup', 125, 0.5, 0, false, 2);

-- משקה סויה - 1 cup = 1 star
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order) VALUES
  ('33333333-3333-3333-3333-333333333022', 'כוס (250 מ"ל)', '1 cup (250ml)', 250, 1.0, 0, true, 1);

-- גבינה לבנה 5% - 2 tablespoons (1/3 package) = 1 star
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order) VALUES
  ('33333333-3333-3333-3333-333333333006', '2 כפות (שליש קופסה)', '2 tbsp (1/3 package)', 60, 1.0, 0, true, 1),
  ('33333333-3333-3333-3333-333333333006', '3 כפות (חצי קופסה)', '3 tbsp (half package)', 90, 1.5, 0, false, 2),
  ('33333333-3333-3333-3333-333333333006', 'קופסה שלמה (150ג)', 'Full package (150g)', 150, 2.5, 0, false, 3);

-- גבינה לבנה 3% - 3 tablespoons (half package) = 1 star
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order) VALUES
  ('33333333-3333-3333-3333-333333333023', '3 כפות (חצי קופסה)', '3 tbsp (half package)', 90, 1.0, 0, true, 1);

-- קוטג' 5% - 2 tablespoons (1/3 package) = 1 star
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order) VALUES
  ('33333333-3333-3333-3333-333333333008', '2 כפות שטוחות (שליש קופסה)', '2 flat tbsp (1/3 pkg)', 60, 1.0, 0, true, 1),
  ('33333333-3333-3333-3333-333333333008', 'חצי קופסה (100ג)', 'Half package (100g)', 100, 1.5, 0, false, 2),
  ('33333333-3333-3333-3333-333333333008', 'קופסה שלמה (200ג)', 'Full package (200g)', 200, 3.0, 0, false, 3);

-- גבינת ריקוטה 5% - 3 tablespoons = 1 star (bold = preferred)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order) VALUES
  ('33333333-3333-3333-3333-333333333009', '3 כפות', '3 tbsp', 60, 1.0, 0, true, 1),
  ('33333333-3333-3333-3333-333333333009', 'חצי כוס', 'Half cup', 100, 1.5, 0, false, 2);

-- גבינה בולגרית/צפתית 5% - 85g (1/3 package) = 1 star (bold = preferred)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order) VALUES
  ('33333333-3333-3333-3333-333333333007', '85 גרם (שליש קופסה)', '85g (1/3 package)', 85, 1.0, 0, true, 1),
  ('33333333-3333-3333-3333-333333333007', '2 פרוסות', '2 slices', 40, 0.5, 0, false, 2);

-- גבינה צהובה 9% - 1 palm (3 flat tablespoons = half cup) = 1 star (bold = preferred)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order) VALUES
  ('33333333-3333-3333-3333-333333333005', '3 כפות שטוחות (חצי כוס)', '3 flat tbsp (half cup)', 40, 1.0, 0, true, 1),
  ('33333333-3333-3333-3333-333333333005', 'פרוסה אחת', '1 slice', 20, 0.5, 0, false, 2),
  ('33333333-3333-3333-3333-333333333005', '2 פרוסות', '2 slices', 40, 1.0, 0, false, 3);

-- גבינת עיזים 5%
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order) VALUES
  ('33333333-3333-3333-3333-333333333024', '3 כפות שטוחות', '3 flat tbsp', 45, 1.0, 0, true, 1);

-- יוגורט טבעי עד 3% - 1 glass (150g) = 1 star
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order) VALUES
  ('33333333-3333-3333-3333-333333333003', 'גביע (150 גרם)', '1 container (150g)', 150, 1.0, 0, true, 1),
  ('33333333-3333-3333-3333-333333333003', 'גביע גדול (200 גרם)', 'Large container (200g)', 200, 1.5, 0, false, 2);

-- יוגורט 0% מעדן - 1 glass = 1 star
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order) VALUES
  ('33333333-3333-3333-3333-333333333004', 'גביע', '1 container', 150, 1.0, 0, true, 1);

-- יוגורט PRO
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order) VALUES
  ('33333333-3333-3333-3333-333333333025', 'גביע', '1 container', 150, 1.0, 0, true, 1);

-- לבן 3% - 1 glass = 1 star
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order) VALUES
  ('33333333-3333-3333-3333-333333333026', 'כוס', '1 cup', 250, 1.0, 0, true, 1);

-- רוויון - 1 cup = 1 star
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order) VALUES
  ('33333333-3333-3333-3333-333333333027', 'כוס', '1 cup', 250, 1.0, 0, true, 1);

-- ---- FRUITS ----
-- תפוח עץ - 1 medium = 1 star
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order) VALUES
  ('44444444-4444-4444-4444-444444444001', 'תפוח בינוני', 'Medium apple', 150, 1.0, 0, true, 1),
  ('44444444-4444-4444-4444-444444444001', 'תפוח קטן', 'Small apple', 100, 0.5, 0, false, 2);

-- תפוז
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order) VALUES
  ('44444444-4444-4444-4444-444444444003', 'תפוז בינוני', 'Medium orange', 150, 1.0, 0, true, 1);

-- פירות הדר (general citrus)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order) VALUES
  ('44444444-4444-4444-4444-444444444016', 'מנה בינונית', 'Medium portion', 150, 1.0, 0, true, 1);

-- בננה
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order) VALUES
  ('44444444-4444-4444-4444-444444444002', 'בננה קטנה', 'Small banana', 80, 1.0, 0, true, 1),
  ('44444444-4444-4444-4444-444444444002', 'בננה בינונית', 'Medium banana', 120, 1.5, 0, false, 2);

-- אפרסק, שזיף, משמש - 1 unit = 1 star
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order) VALUES
  ('44444444-4444-4444-4444-444444444008', 'אפרסק אחד', '1 peach', 130, 1.0, 0, true, 1);
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order) VALUES
  ('44444444-4444-4444-4444-444444444012', 'שזיף אחד', '1 plum', 100, 1.0, 0, true, 1);
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order) VALUES
  ('44444444-4444-4444-4444-444444444017', 'משמש אחד', '1 apricot', 70, 1.0, 0, true, 1);

-- אננס טרי
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order) VALUES
  ('44444444-4444-4444-4444-444444444014', 'פרוסה', '1 slice', 100, 1.0, 0, true, 1),
  ('44444444-4444-4444-4444-444444444014', 'כוס קוביות', '1 cup cubed', 150, 1.5, 0, false, 2);

-- קיווי
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order) VALUES
  ('44444444-4444-4444-4444-444444444018', 'קיווי אחד', '1 kiwi', 80, 1.0, 0, true, 1),
  ('44444444-4444-4444-4444-444444444018', '2 קיוויים', '2 kiwis', 160, 2.0, 0, false, 2);

-- תות שדה
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order) VALUES
  ('44444444-4444-4444-4444-444444444006', 'כוס', '1 cup', 150, 1.0, 0, true, 1),
  ('44444444-4444-4444-4444-444444444006', 'חצי כוס', 'Half cup', 75, 0.5, 0, false, 2);

-- אסאי
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order) VALUES
  ('44444444-4444-4444-4444-444444444019', 'כוס', '1 cup', 100, 1.0, 0, true, 1);

-- אבטיח, מלון
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order) VALUES
  ('44444444-4444-4444-4444-444444444005', 'פרוסה גדולה', 'Large slice', 300, 1.0, 0, true, 1),
  ('44444444-4444-4444-4444-444444444005', 'כוס קוביות', '1 cup cubed', 150, 0.5, 0, false, 2);
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order) VALUES
  ('44444444-4444-4444-4444-444444444009', 'פרוסה', '1 slice', 200, 1.0, 0, true, 1);

-- קלמנטינה
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order) VALUES
  ('44444444-4444-4444-4444-444444444011', '2 קלמנטינות', '2 clementines', 120, 1.0, 0, true, 1);

-- ענבים
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order) VALUES
  ('44444444-4444-4444-4444-444444444004', 'חצי כוס', 'Half cup', 75, 1.0, 0, true, 1),
  ('44444444-4444-4444-4444-444444444004', 'כוס', '1 cup', 150, 2.0, 0, false, 2);

-- מנגו
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order) VALUES
  ('44444444-4444-4444-4444-444444444007', 'חצי מנגו', 'Half mango', 150, 1.5, 0, true, 1);

-- תמרים - eaten in small amounts as free snack per PDF ("חטיף תמרים וקשיו/בוטנים/אגוזי לוז FREE")
-- But as a regular fruit it counts as yellow
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order) VALUES
  ('44444444-4444-4444-4444-444444444015', '2 תמרים', '2 dates', 30, 1.0, 0, true, 1),
  ('44444444-4444-4444-4444-444444444015', '4 תמרים', '4 dates', 60, 2.0, 0, false, 2);

-- ---- FATS ----
-- אבוקדו - half avocado = 1 yellow star
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order) VALUES
  ('77777777-7777-7777-7777-777777777001', 'חצי אבוקדו', 'Half avocado', 70, 1.0, 0, true, 1),
  ('77777777-7777-7777-7777-777777777001', 'אבוקדו שלם', 'Whole avocado', 140, 2.0, 0, false, 2);

-- טחינה גולמית - 1 tablespoon = 1 yellow star
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order) VALUES
  ('77777777-7777-7777-7777-777777777002', 'כף אחת', '1 tbsp', 15, 1.0, 0, true, 1),
  ('77777777-7777-7777-7777-777777777002', '2 כפות', '2 tbsp', 30, 2.0, 0, false, 2);

-- חמאת בוטנים טבעית
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order) VALUES
  ('77777777-7777-7777-7777-777777777003', 'כף אחת', '1 tbsp', 16, 1.0, 0, true, 1);

-- שקדיה / חמאת שקדים
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order) VALUES
  ('77777777-7777-7777-7777-777777777004', 'כף אחת', '1 tbsp', 16, 1.0, 0, true, 1);

-- אגוזי מלך / שקדים - measured handfuls
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order) VALUES
  ('77777777-7777-7777-7777-777777777005', 'חופן קטן (10-12 אגוזים)', 'Small handful', 20, 1.0, 0, true, 1);
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order) VALUES
  ('77777777-7777-7777-7777-777777777006', 'חופן קטן (15-18 שקדים)', 'Small handful', 20, 1.0, 0, true, 1);

-- ---- FREE VEGETABLES (all 0 stars) ----
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order) VALUES
  ('55555555-5555-5555-5555-555555555001', 'כמות חופשית', 'Free amount', NULL, 0, 0, true, 1),
  ('55555555-5555-5555-5555-555555555002', 'כמות חופשית', 'Free amount', NULL, 0, 0, true, 1),
  ('55555555-5555-5555-5555-555555555003', 'כמות חופשית', 'Free amount', NULL, 0, 0, true, 1),
  ('55555555-5555-5555-5555-555555555004', 'כמות חופשית', 'Free amount', NULL, 0, 0, true, 1),
  ('55555555-5555-5555-5555-555555555005', 'כמות חופשית', 'Free amount', NULL, 0, 0, true, 1),
  ('55555555-5555-5555-5555-555555555006', 'כמות חופשית', 'Free amount', NULL, 0, 0, true, 1),
  ('55555555-5555-5555-5555-555555555008', 'כמות חופשית', 'Free amount', NULL, 0, 0, true, 1),
  ('55555555-5555-5555-5555-555555555009', 'כמות חופשית', 'Free amount', NULL, 0, 0, true, 1),
  ('55555555-5555-5555-5555-555555555010', 'כמות חופשית', 'Free amount', NULL, 0, 0, true, 1),
  ('55555555-5555-5555-5555-555555555011', 'כמות חופשית', 'Free amount', NULL, 0, 0, true, 1),
  ('55555555-5555-5555-5555-555555555012', 'כמות חופשית', 'Free amount', NULL, 0, 0, true, 1),
  ('55555555-5555-5555-5555-555555555013', 'כמות חופשית', 'Free amount', NULL, 0, 0, true, 1),
  ('55555555-5555-5555-5555-555555555014', 'כמות חופשית', 'Free amount', NULL, 0, 0, true, 1),
  ('55555555-5555-5555-5555-555555555015', 'כמות חופשית', 'Free amount', NULL, 0, 0, true, 1),
  ('55555555-5555-5555-5555-555555555016', 'כמות חופשית', 'Free amount', NULL, 0, 0, true, 1),
  ('55555555-5555-5555-5555-555555555017', 'כמות חופשית', 'Free amount', NULL, 0, 0, true, 1),
  ('55555555-5555-5555-5555-555555555018', 'כמות חופשית', 'Free amount', NULL, 0, 0, true, 1),
  ('55555555-5555-5555-5555-555555555019', 'כמות חופשית', 'Free amount', NULL, 0, 0, true, 1),
  ('55555555-5555-5555-5555-555555555020', 'כמות חופשית', 'Free amount', NULL, 0, 0, true, 1),
  ('55555555-5555-5555-5555-555555555021', 'כמות חופשית', 'Free amount', NULL, 0, 0, true, 1),
  ('55555555-5555-5555-5555-555555555022', 'כמות חופשית', 'Free amount', NULL, 0, 0, true, 1),
  ('55555555-5555-5555-5555-555555555023', 'כמות חופשית', 'Free amount', NULL, 0, 0, true, 1),
  ('55555555-5555-5555-5555-555555555024', 'כמות חופשית', 'Free amount', NULL, 0, 0, true, 1),
  ('55555555-5555-5555-5555-555555555025', 'כמות חופשית', 'Free amount', NULL, 0, 0, true, 1);

-- ---- FREE BEVERAGES & CONDIMENTS ----
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order) VALUES
  ('66666666-6666-6666-6666-666666666001', 'כוס', '1 cup', 240, 0, 0, true, 1),
  ('66666666-6666-6666-6666-666666666001', 'בקבוק (500 מ"ל)', 'Bottle (500ml)', 500, 0, 0, false, 2),
  ('66666666-6666-6666-6666-666666666002', 'כוס', '1 cup', 240, 0, 0, true, 1),
  ('66666666-6666-6666-6666-666666666003', 'כוס', '1 cup', 240, 0, 0, true, 1),
  ('66666666-6666-6666-6666-666666666005', 'אגודה', '1 bunch', 30, 0, 0, true, 1),
  ('66666666-6666-6666-6666-666666666006', 'אגודה', '1 bunch', 10, 0, 0, true, 1),
  ('66666666-6666-6666-6666-666666666007', 'אגודה', '1 bunch', 10, 0, 0, true, 1),
  ('66666666-6666-6666-6666-666666666008', 'כף', '1 tbsp', 15, 0, 0, true, 1),
  ('66666666-6666-6666-6666-666666666009', 'פרי שלם', 'Whole lemon', 60, 0, 0, true, 1),
  ('66666666-6666-6666-6666-666666666010', 'מלפפון חמוץ', '1 pickle', 40, 0, 0, true, 1),
  ('66666666-6666-6666-6666-666666666011', 'כפית', '1 tsp', 5, 0, 0, true, 1),
  ('66666666-6666-6666-6666-666666666012', 'כפית', '1 tsp', 5, 0, 0, true, 1),
  ('66666666-6666-6666-6666-666666666013', 'כפית', '1 tsp', 7, 0, 0, true, 1);
