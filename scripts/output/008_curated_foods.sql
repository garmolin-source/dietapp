-- ============================================================
-- Diet Angel Food Database Expansion — Migration 007
-- Generated: 2026-03-20
-- Source: USDA FoodData Central (SR Legacy + Foundation) + Israeli brands (manual)
-- USDA foods: 252
-- Israeli brands: 95
-- Total: 347
-- Flagged for review (NEEDS_REVIEW): 0
-- 
-- Review flagged items before applying to production.
-- Apply: supabase db push
-- ============================================================

BEGIN;

-- ============================================================
-- VEGETABLE (34 foods)
-- ============================================================

-- [VEGETABLE] Cucumber
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('מלפפון', 'Cucumber', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס פרוס (~80 גרם)'::text, '1 cup sliced (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 2),
  ('1 בינוני (~130 גרם)', '1 medium (~130g)', 130.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [VEGETABLE] Tomato
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('עגבנייה', 'Tomato', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס קצוץ (~80 גרם)'::text, '1 cup chopped (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 2),
  ('1 בינונית (~150 גרם)', '1 medium (~150g)', 150.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [VEGETABLE] Bell Pepper
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('פלפל', 'Bell Pepper', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס פרוס (~80 גרם)'::text, '1 cup sliced (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 2),
  ('1 בינוני (~150 גרם)', '1 medium (~150g)', 150.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [VEGETABLE] Zucchini
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('קישוא', 'Zucchini', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס פרוס (~80 גרם)'::text, '1 cup sliced (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושל (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [VEGETABLE] Eggplant
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('חציל', 'Eggplant', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס קוביות (~80 גרם)'::text, '1 cup diced (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושל (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [VEGETABLE] Lettuce
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('חסה', 'Lettuce', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס קרוע (~50 גרם)'::text, '1 cup torn (~50g)'::text, 50.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 2),
  ('ראש קטן (~200 גרם)', '1 small head (~200g)', 200.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [VEGETABLE] Spinach
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('תרד', 'Spinach', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרי (~30 גרם)'::text, '1 cup raw (~30g)'::text, 30.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושל (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [VEGETABLE] Parsley
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('פטרוזיליה', 'Parsley', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס קצוץ (~30 גרם)'::text, '1 cup chopped (~30g)'::text, 30.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 2),
  ('צרור (~50 גרם)', '1 bunch (~50g)', 50.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [VEGETABLE] Cabbage
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('כרוב', 'Cabbage', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס פרוס (~80 גרם)'::text, '1 cup shredded (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושל (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [VEGETABLE] Mushrooms
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('פטריות', 'Mushrooms', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס פרוס (~70 גרם)'::text, '1 cup sliced (~70g)'::text, 70.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושל (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [VEGETABLE] Carrot
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גזר', 'Carrot', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס פרוס (~80 גרם)'::text, '1 cup sliced (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושל (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [VEGETABLE] Beet
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('סלק', 'Beet', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס פרוס (~80 גרם)'::text, '1 cup sliced (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושל (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [VEGETABLE] Onion
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בצל', 'Onion', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס קצוץ (~80 גרם)'::text, '1 cup chopped (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('1 בינוני (~110 גרם)', '1 medium (~110g)', 110.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [VEGETABLE] Garlic
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שום', 'Garlic', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('שן אחת (~3 גרם)'::text, '1 clove (~3g)'::text, 3.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כף קצוץ (~10 גרם)', '1 tbsp minced (~10g)', 10.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [VEGETABLE] Broccoli
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('ברוקולי', 'Broccoli', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס פרחים (~80 גרם)'::text, '1 cup florets (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושל (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [VEGETABLE] Cauliflower
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('כרובית', 'Cauliflower', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס פרחים (~80 גרם)'::text, '1 cup florets (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושל (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [VEGETABLE] Green Beans
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שעועית ירוקה', 'Green Beans', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס (~80 גרם)'::text, '1 cup (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושל (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [VEGETABLE] Celery
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('סלרי', 'Celery', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס פרוס (~80 גרם)'::text, '1 cup sliced (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('2 קנים (~100 גרם)', '2 stalks (~100g)', 100.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [VEGETABLE] Radish
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('צנונית', 'Radish', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס פרוס (~80 גרם)'::text, '1 cup sliced (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 2),
  ('5 יחידות (~50 גרם)', '5 pieces (~50g)', 50.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [VEGETABLE] Asparagus
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('אספרגוס', 'Asparagus', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס (~80 גרם)'::text, '1 cup (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושל (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [VEGETABLE] Leek
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('כרישה', 'Leek', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס פרוס (~80 גרם)'::text, '1 cup sliced (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושל (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [VEGETABLE] Cilantro
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('כוסברה', 'Cilantro', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס קצוץ (~20 גרם)'::text, '1 cup chopped (~20g)'::text, 20.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('צרור (~50 גרם)', '1 bunch (~50g)', 50.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [VEGETABLE] Dill
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שמיר', 'Dill', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס קצוץ (~20 גרם)'::text, '1 cup chopped (~20g)'::text, 20.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('צרור (~50 גרם)', '1 bunch (~50g)', 50.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [VEGETABLE] Cherry Tomatoes
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('עגבניות שרי', 'Cherry Tomatoes', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס (~80 גרם)'::text, '1 cup (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 2),
  ('10 יחידות (~150 גרם)', '10 pieces (~150g)', 150.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [VEGETABLE] Red Cabbage
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('כרוב סגול', 'Red Cabbage', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס פרוס (~80 גרם)'::text, '1 cup shredded (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושל (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [VEGETABLE] Pumpkin / Squash
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('דלעת', 'Pumpkin / Squash', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס קוביות (~80 גרם)'::text, '1 cup diced (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושל (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [VEGETABLE] Kohlrabi
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('קולורבי', 'Kohlrabi', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס פרוס (~80 גרם)'::text, '1 cup sliced (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('1 בינוני (~150 גרם)', '1 medium (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [VEGETABLE] Artichoke
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('ארטישוק', 'Artichoke', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~120 גרם)'::text, '1 medium (~120g)'::text, 120.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס לבבות (~150 גרם)', '1 cup hearts (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [VEGETABLE] Fennel
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שומר', 'Fennel', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס פרוס (~80 גרם)'::text, '1 cup sliced (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('1 פקעת (~200 גרם)', '1 bulb (~200g)', 200.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [VEGETABLE] Swiss Chard
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('מנגולד', 'Swiss Chard', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרי (~40 גרם)'::text, '1 cup raw (~40g)'::text, 40.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושל (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [VEGETABLE] Tomato Paste
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('רסק עגבניות', 'Tomato Paste', 'vegetable', 'free', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כף (~15 גרם)'::text, '1 tbsp (~15g)'::text, 15.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [VEGETABLE] Soy Sauce
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('רוטב סויה', 'Soy Sauce', 'vegetable', 'free', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כף (~15 גרם)'::text, '1 tbsp (~15g)'::text, 15.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [VEGETABLE] Mustard
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('חרדל', 'Mustard', 'vegetable', 'free', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כף (~15 גרם)'::text, '1 tbsp (~15g)'::text, 15.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [VEGETABLE] Apple Cider Vinegar
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('חומץ תפוחים', 'Apple Cider Vinegar', 'vegetable', 'free', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כף (~15 גרם)'::text, '1 tbsp (~15g)'::text, 15.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- ============================================================
-- FRUIT (32 foods)
-- ============================================================

-- [FRUIT] Apple
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('תפוח', 'Apple', 'fruit', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~150 גרם)'::text, '1 medium (~150g)'::text, 150.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס קוביות (~150 גרם)', '1 cup diced (~150g)', 150.0, 1.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [FRUIT] Banana
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בננה', 'Banana', 'fruit', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינונית (~120 גרם)'::text, '1 medium (~120g)'::text, 120.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('1 גדולה (~150 גרם)', '1 large (~150g)', 150.0, 1.5, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [FRUIT] Orange
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('תפוז', 'Orange', 'fruit', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~180 גרם)'::text, '1 medium (~180g)'::text, 180.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס פלחים (~150 גרם)', '1 cup segments (~150g)', 150.0, 1.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [FRUIT] Clementine
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('קלמנטינה', 'Clementine', 'fruit', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('2 קלמנטינות (~150 גרם)'::text, '2 clementines (~150g)'::text, 150.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('1 קלמנטינה (~75 גרם)', '1 clementine (~75g)', 75.0, 0.5, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [FRUIT] Mango
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('מנגו', 'Mango', 'fruit', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~200 גרם)'::text, '1 medium (~200g)'::text, 200.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס קוביות (~150 גרם)', '1 cup diced (~150g)', 150.0, 1.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [FRUIT] Watermelon
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('אבטיח', 'Watermelon', 'fruit', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('פרוסה (~250 גרם)'::text, '1 slice (~250g)'::text, 250.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס קוביות (~150 גרם)', '1 cup diced (~150g)', 150.0, 0.5, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [FRUIT] Melon (Cantaloupe)
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('מלון', 'Melon (Cantaloupe)', 'fruit', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('פרוסה (~200 גרם)'::text, '1 slice (~200g)'::text, 200.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס קוביות (~150 גרם)', '1 cup diced (~150g)', 150.0, 0.5, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [FRUIT] Grapes
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('ענבים', 'Grapes', 'fruit', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס (~150 גרם)'::text, '1 cup (~150g)'::text, 150.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('אשכול קטן (~100 גרם)', '1 small bunch (~100g)', 100.0, 1.0, 0.0, false, 2),
  ('אשכול גדול (~200 גרם)', '1 large bunch (~200g)', 200.0, 1.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [FRUIT] Strawberry
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('תות שדה', 'Strawberry', 'fruit', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס (~150 גרם)'::text, '1 cup (~150g)'::text, 150.0::numeric, 0.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('קופסה (~250 גרם)', '1 box (~250g)', 250.0, 1.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [FRUIT] Pomegranate
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('רימון', 'Pomegranate', 'fruit', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~150 גרם גרגרים)'::text, '1 medium (~150g seeds)'::text, 150.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי רימון (~75 גרם גרגרים)', 'Half pomegranate (~75g seeds)', 75.0, 0.5, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [FRUIT] Date (Medjool)
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('תמר (מג''הול)', 'Date (Medjool)', 'fruit', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('2 תמרים (~30 גרם)'::text, '2 dates (~30g)'::text, 30.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('1 תמר (~15 גרם)', '1 date (~15g)', 15.0, 0.5, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 3.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [FRUIT] Fig
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('תאנה', 'Fig', 'fruit', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('2 תאנים (~100 גרם)'::text, '2 figs (~100g)'::text, 100.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('1 תאנה (~50 גרם)', '1 fig (~50g)', 50.0, 0.5, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [FRUIT] Peach
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('אפרסק', 'Peach', 'fruit', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~150 גרם)'::text, '1 medium (~150g)'::text, 150.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס פרוסות (~150 גרם)', '1 cup sliced (~150g)', 150.0, 1.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [FRUIT] Plum
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שזיף', 'Plum', 'fruit', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('2 שזיפים (~130 גרם)'::text, '2 plums (~130g)'::text, 130.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('1 שזיף (~65 גרם)', '1 plum (~65g)', 65.0, 0.5, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [FRUIT] Pear
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('אגס', 'Pear', 'fruit', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~170 גרם)'::text, '1 medium (~170g)'::text, 170.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס פרוסות (~150 גרם)', '1 cup sliced (~150g)', 150.0, 1.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [FRUIT] Kiwi
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('קיווי', 'Kiwi', 'fruit', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('2 קיווי (~150 גרם)'::text, '2 kiwis (~150g)'::text, 150.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('1 קיווי (~75 גרם)', '1 kiwi (~75g)', 75.0, 0.5, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [FRUIT] Pineapple
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('אננס', 'Pineapple', 'fruit', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס קוביות (~150 גרם)'::text, '1 cup diced (~150g)'::text, 150.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('פרוסה עבה (~100 גרם)', '1 thick slice (~100g)', 100.0, 0.5, 0.0, false, 2),
  ('200 גרם', '200g', 200.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [FRUIT] Lemon
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('לימון', 'Lemon', 'fruit', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 לימון (~80 גרם)'::text, '1 lemon (~80g)'::text, 80.0::numeric, 0.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('מיץ לימון כף (~15 מ"ל)', '1 tbsp juice (~15ml)', 15.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [FRUIT] Grapefruit
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('אשכולית', 'Grapefruit', 'fruit', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('חצי אשכולית (~150 גרם)'::text, 'Half grapefruit (~150g)'::text, 150.0::numeric, 0.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('1 שלמה (~300 גרם)', '1 whole (~300g)', 300.0, 1.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [FRUIT] Avocado
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('אבוקדו', 'Avocado', 'fruit', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('חצי אבוקדו (~75 גרם)'::text, 'Half avocado (~75g)'::text, 75.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('1 שלם (~150 גרם)', '1 whole (~150g)', 150.0, 2.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 1.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [FRUIT] Nectarine
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('נקטרינה', 'Nectarine', 'fruit', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינונית (~150 גרם)'::text, '1 medium (~150g)'::text, 150.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס פרוסות (~150 גרם)', '1 cup sliced (~150g)', 150.0, 1.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [FRUIT] Apricot
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('משמש', 'Apricot', 'fruit', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('3 משמשים (~120 גרם)'::text, '3 apricots (~120g)'::text, 120.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('1 משמש (~40 גרם)', '1 apricot (~40g)', 40.0, 0.5, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [FRUIT] Cherry
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('דובדבן', 'Cherry', 'fruit', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס (~150 גרם)'::text, '1 cup (~150g)'::text, 150.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חופן (~75 גרם)', '1 handful (~75g)', 75.0, 0.5, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [FRUIT] Persimmon
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('אפרסמון', 'Persimmon', 'fruit', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~170 גרם)'::text, '1 medium (~170g)'::text, 170.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי (~85 גרם)', 'Half (~85g)', 85.0, 0.5, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [FRUIT] Loquat
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שסק', 'Loquat', 'fruit', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('5 שסקים (~150 גרם)'::text, '5 loquats (~150g)'::text, 150.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('3 שסקים (~90 גרם)', '3 loquats (~90g)', 90.0, 0.5, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [FRUIT] Passion Fruit
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('פסיפלורה', 'Passion Fruit', 'fruit', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('3 פירות (~100 גרם)'::text, '3 fruits (~100g)'::text, 100.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('1 פרי (~35 גרם)', '1 fruit (~35g)', 35.0, 0.5, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [FRUIT] Pomelo
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('פומלה', 'Pomelo', 'fruit', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס פלחים (~150 גרם)'::text, '1 cup segments (~150g)'::text, 150.0::numeric, 0.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי פומלה (~250 גרם)', 'Half pomelo (~250g)', 250.0, 1.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [FRUIT] Papaya
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('פפאיה', 'Papaya', 'fruit', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס קוביות (~150 גרם)'::text, '1 cup diced (~150g)'::text, 150.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי פפאיה (~200 גרם)', 'Half papaya (~200g)', 200.0, 1.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [FRUIT] Dragon Fruit
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('פיטאיה (דרקון)', 'Dragon Fruit', 'fruit', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~150 גרם)'::text, '1 medium (~150g)'::text, 150.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי (~75 גרם)', 'Half (~75g)', 75.0, 0.5, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [FRUIT] Prickly Pear (Sabra)
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('צבר (סברס)', 'Prickly Pear (Sabra)', 'fruit', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('2 פירות (~150 גרם)'::text, '2 fruits (~150g)'::text, 150.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('1 פרי (~75 גרם)', '1 fruit (~75g)', 75.0, 0.5, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [FRUIT] Fresh Squeezed Orange Juice
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('מיץ תפוזים סחוט טרי', 'Fresh Squeezed Orange Juice', 'fruit', 'yellow', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס (~200 מ"ל)'::text, '1 cup (~200ml)'::text, 200.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [FRUIT] Fresh Squeezed Grapefruit Juice
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('מיץ אשכוליות סחוט', 'Fresh Squeezed Grapefruit Juice', 'fruit', 'yellow', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס (~200 מ"ל)'::text, '1 cup (~200ml)'::text, 200.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- ============================================================
-- DAIRY (56 foods)
-- ============================================================

-- [DAIRY] Cottage Cheese 5%
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('קוטג׳ 5%', 'Cottage Cheese 5%', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (120 גרם)', 'Half cup (120g)', 120.0, 1.0, 0.0, false, 2),
  ('גביע (250 גרם)', 'Container (250g)', 250.0, 2.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [DAIRY] Cottage Cheese 3%
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('קוטג׳ 3%', 'Cottage Cheese 3%', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (120 גרם)', 'Half cup (120g)', 120.0, 1.0, 0.0, false, 2),
  ('גביע (250 גרם)', 'Container (250g)', 250.0, 2.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [DAIRY] Bulgarian Cheese 5%
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גבינה בולגרית 5%', 'Bulgarian Cheese 5%', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי כוס מפוררת (120 גרם)', 'Half cup crumbled (120g)', 120.0, 1.0, 0.0, false, 2),
  ('פרוסה (~30 גרם)', 'Slice (~30g)', 30.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [DAIRY] Bulgarian Cheese 16%
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גבינה בולגרית 16%', 'Bulgarian Cheese 16%', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי כוס מפוררת (120 גרם)', 'Half cup crumbled (120g)', 120.0, 2.5, 0.0, false, 2),
  ('פרוסה (~30 גרם)', 'Slice (~30g)', 30.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [DAIRY] Labaneh 5%
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('לבנה 5%', 'Labaneh 5%', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כף (~15 גרם)', 'Tablespoon (~15g)', 15.0, 0.5, 0.0, false, 2),
  ('חצי כוס (120 גרם)', 'Half cup (120g)', 120.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [DAIRY] Labaneh 10%
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('לבנה 10%', 'Labaneh 10%', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כף (~15 גרם)', 'Tablespoon (~15g)', 15.0, 0.5, 0.0, false, 2),
  ('חצי כוס (120 גרם)', 'Half cup (120g)', 120.0, 2.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [DAIRY] Yellow Cheese 28%
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גבינה צהובה 28%', 'Yellow Cheese 28%', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 3.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('פרוסה (~25 גרם)', 'Slice (~25g)', 25.0, 1.0, 0.0, false, 2),
  ('2 פרוסות (~50 גרם)', '2 slices (~50g)', 50.0, 1.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [DAIRY] Yellow Cheese 15% (Light)
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גבינה צהובה 15% (לייט)', 'Yellow Cheese 15% (Light)', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 2.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('פרוסה (~25 גרם)', 'Slice (~25g)', 25.0, 0.5, 0.0, false, 2),
  ('2 פרוסות (~50 גרם)', '2 slices (~50g)', 50.0, 1.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [DAIRY] Mozzarella Cheese
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('מוצרלה', 'Mozzarella Cheese', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 3.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('פרוסה (~25 גרם)', 'Slice (~25g)', 25.0, 0.5, 0.0, false, 2),
  ('חצי כוס מגורדת (60 גרם)', 'Half cup shredded (60g)', 60.0, 2.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [DAIRY] Feta Cheese
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גבינת פטה', 'Feta Cheese', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 2.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('פרוסה (~30 גרם)', 'Slice (~30g)', 30.0, 1.0, 0.0, false, 2),
  ('חצי כוס מפוררת (75 גרם)', 'Half cup crumbled (75g)', 75.0, 2.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [DAIRY] Hard Cheese (Parmesan)
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גבינה קשה (פרמזן)', 'Hard Cheese (Parmesan)', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 4.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כף מגורד (~15 גרם)', 'Tablespoon grated (~15g)', 15.0, 0.5, 0.0, false, 2),
  ('פרוסה (~25 גרם)', 'Slice (~25g)', 25.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [DAIRY] Yogurt 3%
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('יוגורט 3%', 'Yogurt 3%', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('גביע (150 גרם)'::text, 'Cup (150g)'::text, 150.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.5, 0.0, false, 2),
  ('כוס (240 גרם)', 'Full cup (240g)', 240.0, 1.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [DAIRY] Yogurt 1.5%
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('יוגורט 1.5%', 'Yogurt 1.5%', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('גביע (150 גרם)'::text, 'Cup (150g)'::text, 150.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.5, 0.0, false, 2),
  ('כוס (240 גרם)', 'Full cup (240g)', 240.0, 1.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [DAIRY] Yogurt 0% Fat
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('יוגורט 0%', 'Yogurt 0% Fat', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('גביע (150 גרם)'::text, 'Cup (150g)'::text, 150.0::numeric, 0.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.5, 0.0, false, 2),
  ('כוס (240 גרם)', 'Full cup (240g)', 240.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [DAIRY] Greek Yogurt 5%
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('יוגורט יווני 5%', 'Greek Yogurt 5%', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('גביע (150 גרם)'::text, 'Cup (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 2),
  ('כוס (240 גרם)', 'Full cup (240g)', 240.0, 2.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [DAIRY] Milk 3%
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('חלב 3%', 'Milk 3%', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס (240 מ"ל)'::text, 'Cup (240ml)'::text, 240.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 מ"ל', '100ml', 100.0, 0.5, 0.0, false, 2),
  ('3/4 כוס (180 מ"ל)', '3/4 cup (180ml)', 180.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [DAIRY] Milk 1%
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('חלב 1%', 'Milk 1%', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס (240 מ"ל)'::text, 'Cup (240ml)'::text, 240.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 מ"ל', '100ml', 100.0, 0.5, 0.0, false, 2),
  ('חצי כוס (120 מ"ל)', 'Half cup (120ml)', 120.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [DAIRY] Sour Cream 15%
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שמנת חמוצה 15%', 'Sour Cream 15%', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כף (~15 גרם)', 'Tablespoon (~15g)', 15.0, 0.5, 0.0, false, 2),
  ('חצי כוס (120 גרם)', 'Half cup (120g)', 120.0, 2.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [DAIRY] Sour Cream 27%
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שמנת חמוצה 27%', 'Sour Cream 27%', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 2.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כף (~15 גרם)', 'Tablespoon (~15g)', 15.0, 0.5, 0.0, false, 2),
  ('חצי כוס (120 גרם)', 'Half cup (120g)', 120.0, 3.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [DAIRY] Cream Cheese (Philadelphia)
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גבינת שמנת (פילדלפיה)', 'Cream Cheese (Philadelphia)', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 3.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כף (~15 גרם)', 'Tablespoon (~15g)', 15.0, 0.5, 0.0, false, 2),
  ('2 כפות (~30 גרם)', '2 tablespoons (~30g)', 30.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [DAIRY] Light Cream Cheese 5%
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גבינת שמנת לייט 5%', 'Light Cream Cheese 5%', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כף (~15 גרם)', 'Tablespoon (~15g)', 15.0, 0.5, 0.0, false, 2),
  ('2 כפות (~30 גרם)', '2 tablespoons (~30g)', 30.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [DAIRY] Butter
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('חמאה', 'Butter', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כף (~15 גרם)'::text, 'Tablespoon (~15g)'::text, 15.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כפית (~5 גרם)', 'Teaspoon (~5g)', 5.0, 0.5, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 7.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [DAIRY] Ricotta Cheese
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('ריקוטה', 'Ricotta Cheese', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (120 גרם)', 'Half cup (120g)', 120.0, 2.0, 0.0, false, 2),
  ('כף (~15 גרם)', 'Tablespoon (~15g)', 15.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [DAIRY] Soft Goat Cheese 22%
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גבינת עיזים רכה 22%', 'Soft Goat Cheese 22%', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 2.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('פרוסה (~30 גרם)', 'Slice (~30g)', 30.0, 1.0, 0.0, false, 2),
  ('כף (~15 גרם)', 'Tablespoon (~15g)', 15.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [DAIRY] White Cheese 5% (Gvina Levana)
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גבינה לבנה 5%', 'White Cheese 5% (Gvina Levana)', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כף (~15 גרם)', 'Tablespoon (~15g)', 15.0, 0.5, 0.0, false, 2),
  ('חצי כוס (120 גרם)', 'Half cup (120g)', 120.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [DAIRY] White Cheese 9% (Gvina Levana)
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גבינה לבנה 9%', 'White Cheese 9% (Gvina Levana)', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כף (~15 גרם)', 'Tablespoon (~15g)', 15.0, 0.5, 0.0, false, 2),
  ('חצי כוס (120 גרם)', 'Half cup (120g)', 120.0, 1.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [DAIRY] Heavy Cream 38%
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שמנת מתוקה 38%', 'Heavy Cream 38%', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 מ"ל'::text, '100ml'::text, 100.0::numeric, 3.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כף (~15 מ"ל)', 'Tablespoon (~15ml)', 15.0, 0.5, 0.0, false, 2),
  ('חצי כוס (120 מ"ל)', 'Half cup (120ml)', 120.0, 4.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [DAIRY] Cooking Cream 15%
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שמנת לבישול 15%', 'Cooking Cream 15%', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 מ"ל'::text, '100ml'::text, 100.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כף (~15 מ"ל)', 'Tablespoon (~15ml)', 15.0, 0.5, 0.0, false, 2),
  ('חצי כוס (120 מ"ל)', 'Half cup (120ml)', 120.0, 2.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [DAIRY] Tzfatit Cheese 5%
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גבינת צפתית 5%', 'Tzfatit Cheese 5%', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('פרוסה (~30 גרם)', 'Slice (~30g)', 30.0, 0.5, 0.0, false, 2),
  ('חצי כוס מפוררת (75 גרם)', 'Half cup crumbled (75g)', 75.0, 1.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [DAIRY] Soy Milk
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('משקה חלב סויה', 'Soy Milk', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס (240 מ"ל)'::text, 'Cup (240ml)'::text, 240.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 מ"ל', '100ml', 100.0, 0.5, 0.0, false, 2),
  ('חצי כוס (120 מ"ל)', 'Half cup (120ml)', 120.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [DAIRY] Tnuva Cottage Cheese 5%
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('קוטג'' תנובה 5%', 'Tnuva Cottage Cheese 5%', 'dairy', 'yellow', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי מכל (~125 גרם)', 'Half container (~125g)', 125.0, 1.0, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [DAIRY] Tnuva Cottage Cheese 3%
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('קוטג'' תנובה 3%', 'Tnuva Cottage Cheese 3%', 'dairy', 'yellow', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 0.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי מכל (~125 גרם)', 'Half container (~125g)', 125.0, 1.0, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [DAIRY] Tnuva Bulgarian Cheese 5%
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גבינה בולגרית תנובה 5%', 'Tnuva Bulgarian Cheese 5%', 'dairy', 'yellow', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('פרוסה (~30 גרם)'::text, '1 slice (~30g)'::text, 30.0::numeric, 0.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [DAIRY] Tnuva Bulgarian Cheese 3%
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גבינה בולגרית תנובה 3%', 'Tnuva Bulgarian Cheese 3%', 'dairy', 'yellow', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('פרוסה (~30 גרם)'::text, '1 slice (~30g)'::text, 30.0::numeric, 0.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.5, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [DAIRY] Tnuva Labane 5%
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('לבנה תנובה 5%', 'Tnuva Labane 5%', 'dairy', 'yellow', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('2 כפות (~30 גרם)', '2 tbsp (~30g)', 30.0, 0.5, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [DAIRY] Tnuva Labane 9%
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('לבנה תנובה 9%', 'Tnuva Labane 9%', 'dairy', 'yellow', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('2 כפות (~30 גרם)', '2 tbsp (~30g)', 30.0, 0.5, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [DAIRY] Tnuva White Cheese 5%
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גבינה לבנה תנובה 5%', 'Tnuva White Cheese 5%', 'dairy', 'yellow', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('200 גרם', '200g', 200.0, 2.0, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [DAIRY] Tnuva White Cheese 9%
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גבינה לבנה תנובה 9%', 'Tnuva White Cheese 9%', 'dairy', 'yellow', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('200 גרם', '200g', 200.0, 3.0, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [DAIRY] Tnuva Yellow Cheese 9%
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גבינה צהובה תנובה 9%', 'Tnuva Yellow Cheese 9%', 'dairy', 'yellow', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('פרוסה (~30 גרם)'::text, '1 slice (~30g)'::text, 30.0::numeric, 0.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [DAIRY] Tnuva Yellow Cheese 28%
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גבינה צהובה תנובה 28%', 'Tnuva Yellow Cheese 28%', 'dairy', 'yellow', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('פרוסה (~30 גרם)'::text, '1 slice (~30g)'::text, 30.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 3.0, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [DAIRY] Tnuva Milk 3%
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('חלב תנובה 3%', 'Tnuva Milk 3%', 'dairy', 'yellow', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס (~200 מ"ל)'::text, '1 glass (~200ml)'::text, 200.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 מ"ל', '100ml', 100.0, 0.5, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [DAIRY] Tnuva Milk 1%
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('חלב תנובה 1%', 'Tnuva Milk 1%', 'dairy', 'yellow', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס (~200 מ"ל)'::text, '1 glass (~200ml)'::text, 200.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 מ"ל', '100ml', 100.0, 0.5, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [DAIRY] Tnuva Chocolate Milk 1%
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שוקו תנובה 1%', 'Tnuva Chocolate Milk 1%', 'dairy', 'yellow', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('קרטון (~200 מ"ל)'::text, 'Carton (~200ml)'::text, 200.0::numeric, 1.5::numeric, 0.5::numeric, true::boolean, 1::integer)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [DAIRY] Tnuva Yogurt 3%
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('יוגורט תנובה 3%', 'Tnuva Yogurt 3%', 'dairy', 'yellow', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (~125 גרם)'::text, '1 serving (~125g)'::text, 125.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.5, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [DAIRY] Tnuva Yogurt 0%
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('יוגורט תנובה 0%', 'Tnuva Yogurt 0%', 'dairy', 'yellow', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (~125 גרם)'::text, '1 serving (~125g)'::text, 125.0::numeric, 0.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.5, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [DAIRY] Tnuva Sour Cream 15%
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שמנת חמוצה תנובה 15%', 'Tnuva Sour Cream 15%', 'dairy', 'yellow', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('2 כפות (~30 גרם)'::text, '2 tbsp (~30g)'::text, 30.0::numeric, 0.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.5, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [DAIRY] Tnuva Heavy Cream 38%
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שמנת מתוקה תנובה 38%', 'Tnuva Heavy Cream 38%', 'dairy', 'yellow', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('2 כפות (~30 גרם)'::text, '2 tbsp (~30g)'::text, 30.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 3.5, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [DAIRY] Strauss Greek Yogurt 0%
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('יוגורט יווני סטראוס 0%', 'Strauss Greek Yogurt 0%', 'dairy', 'yellow', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (~150 גרם)'::text, '1 serving (~150g)'::text, 150.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.5, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [DAIRY] Strauss Greek Yogurt 2%
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('יוגורט יווני סטראוס 2%', 'Strauss Greek Yogurt 2%', 'dairy', 'yellow', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (~150 גרם)'::text, '1 serving (~150g)'::text, 150.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [DAIRY] Strauss Cream Cheese
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גבינת שמנת סטראוס', 'Strauss Cream Cheese', 'dairy', 'yellow', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('2 כפות (~30 גרם)'::text, '2 tbsp (~30g)'::text, 30.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 3.0, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [DAIRY] Strauss Eshel Sour Cream 8%
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גבינה אשל סטראוס 8%', 'Strauss Eshel Sour Cream 8%', 'dairy', 'yellow', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [DAIRY] Danone Yogurt 0%
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('יוגורט דנונה 0%', 'Danone Yogurt 0%', 'dairy', 'yellow', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (~125 גרם)'::text, '1 serving (~125g)'::text, 125.0::numeric, 0.5::numeric, 0.0::numeric, true::boolean, 1::integer)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [DAIRY] Tnuva Cooking Cream 10%
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שמנת לבישול תנובה 10%', 'Tnuva Cooking Cream 10%', 'dairy', 'yellow', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 מ"ל'::text, '100ml'::text, 100.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('שליש מכל (~85 מ"ל)', '1/3 container (~85ml)', 85.0, 1.0, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [DAIRY] Emek Cheese (Yellow)
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גבינה עמק', 'Emek Cheese (Yellow)', 'dairy', 'yellow', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('פרוסה (~30 גרם)'::text, '1 slice (~30g)'::text, 30.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 3.0, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [DAIRY] Yellow Cheese Cubes
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('קוביות גבינה צהובה', 'Yellow Cheese Cubes', 'dairy', 'yellow', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('5 קוביות (~25 גרם)'::text, '5 cubes (~25g)'::text, 25.0::numeric, 0.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 2.5, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [DAIRY] Ricotta Cheese 5%
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גבינה ריקוטה 5%', 'Ricotta Cheese 5%', 'dairy', 'yellow', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- ============================================================
-- PROTEIN (80 foods)
-- ============================================================

-- [PROTEIN] Chicken Breast
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('חזה עוף', 'Chicken Breast', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, 'Serving (150g)'::text, 150.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.5, 0.0, false, 2),
  ('חצי מנה (50 גרם)', 'Half serving (50g)', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [PROTEIN] Chicken Thigh
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שוק עוף', 'Chicken Thigh', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, 'Serving (150g)'::text, 150.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.5, 0.0, false, 2),
  ('חצי מנה (50 גרם)', 'Half serving (50g)', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [PROTEIN] Turkey Breast
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('חזה הודו', 'Turkey Breast', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, 'Serving (150g)'::text, 150.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.5, 0.0, false, 2),
  ('חצי מנה (50 גרם)', 'Half serving (50g)', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [PROTEIN] Ground Beef
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בשר טחון בקר', 'Ground Beef', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, 'Serving (150g)'::text, 150.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.5, 0.0, false, 2),
  ('חצי מנה (50 גרם)', 'Half serving (50g)', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [PROTEIN] Beef Steak
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('סטייק בקר', 'Beef Steak', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, 'Serving (150g)'::text, 150.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.5, 0.0, false, 2),
  ('חצי מנה (50 גרם)', 'Half serving (50g)', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [PROTEIN] Lamb Chops
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('צלעות כבש', 'Lamb Chops', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, 'Serving (150g)'::text, 150.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.5, 0.0, false, 2),
  ('חצי מנה (50 גרם)', 'Half serving (50g)', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [PROTEIN] Veal
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בשר עגל', 'Veal', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, 'Serving (150g)'::text, 150.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.5, 0.0, false, 2),
  ('חצי מנה (50 גרם)', 'Half serving (50g)', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [PROTEIN] Chicken Liver
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('כבד עוף', 'Chicken Liver', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, 'Serving (150g)'::text, 150.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.5, 0.0, false, 2),
  ('חצי מנה (50 גרם)', 'Half serving (50g)', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [PROTEIN] Chicken Shawarma
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שווארמה עוף', 'Chicken Shawarma', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, 'Serving (150g)'::text, 150.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.5, 0.0, false, 2),
  ('חצי מנה (50 גרם)', 'Half serving (50g)', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [PROTEIN] Prepared Chicken Schnitzel
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שניצל עוף מוכן', 'Prepared Chicken Schnitzel', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, 'Serving (150g)'::text, 150.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.5, 0.0, false, 2),
  ('חצי מנה (50 גרם)', 'Half serving (50g)', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [PROTEIN] Chicken Wings
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('כנפיים עוף', 'Chicken Wings', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, 'Serving (150g)'::text, 150.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.5, 0.0, false, 2),
  ('חצי מנה (50 גרם)', 'Half serving (50g)', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [PROTEIN] Chicken Pargiyot (Boneless Thigh)
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('פרגית עוף', 'Chicken Pargiyot (Boneless Thigh)', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, 'Serving (150g)'::text, 150.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.5, 0.0, false, 2),
  ('חצי מנה (50 גרם)', 'Half serving (50g)', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [PROTEIN] Ground Turkey
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בשר טחון הודו', 'Ground Turkey', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, 'Serving (150g)'::text, 150.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.5, 0.0, false, 2),
  ('חצי מנה (50 גרם)', 'Half serving (50g)', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [PROTEIN] Turkey Drumstick
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שוק הודו', 'Turkey Drumstick', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, 'Serving (150g)'::text, 150.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.5, 0.0, false, 2),
  ('חצי מנה (50 גרם)', 'Half serving (50g)', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [PROTEIN] Beef Entrecôte (Ribeye)
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('אנטריקוט בקר', 'Beef Entrecôte (Ribeye)', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, 'Serving (150g)'::text, 150.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.5, 0.0, false, 2),
  ('חצי מנה (50 גרם)', 'Half serving (50g)', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [PROTEIN] Beef Fillet
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('פילה בקר', 'Beef Fillet', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, 'Serving (150g)'::text, 150.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.5, 0.0, false, 2),
  ('חצי מנה (50 גרם)', 'Half serving (50g)', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [PROTEIN] Beef Kebab
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('קבב בקר', 'Beef Kebab', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, 'Serving (150g)'::text, 150.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.5, 0.0, false, 2),
  ('חצי מנה (50 גרם)', 'Half serving (50g)', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [PROTEIN] Beef Hamburger Patty
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('המבורגר בקר', 'Beef Hamburger Patty', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, 'Serving (150g)'::text, 150.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.5, 0.0, false, 2),
  ('חצי מנה (50 גרם)', 'Half serving (50g)', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [PROTEIN] Chicken Drumsticks
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('כרעיים עוף', 'Chicken Drumsticks', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, 'Serving (150g)'::text, 150.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.5, 0.0, false, 2),
  ('חצי מנה (50 גרם)', 'Half serving (50g)', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [PROTEIN] Lamb Neck
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('צוואר כבש', 'Lamb Neck', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, 'Serving (150g)'::text, 150.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.5, 0.0, false, 2),
  ('חצי מנה (50 גרם)', 'Half serving (50g)', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [PROTEIN] Lamb Shank
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שוק כבש', 'Lamb Shank', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, 'Serving (150g)'::text, 150.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.5, 0.0, false, 2),
  ('חצי מנה (50 גרם)', 'Half serving (50g)', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [PROTEIN] Goose Breast
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('חזה אווז', 'Goose Breast', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, 'Serving (150g)'::text, 150.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.5, 0.0, false, 2),
  ('חצי מנה (50 גרם)', 'Half serving (50g)', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [PROTEIN] Beef Stew Meat
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בשר בקר לתבשיל', 'Beef Stew Meat', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, 'Serving (150g)'::text, 150.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.5, 0.0, false, 2),
  ('חצי מנה (50 גרם)', 'Half serving (50g)', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [PROTEIN] Turkey Pastrami
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('פסטרמה הודו', 'Turkey Pastrami', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, 'Serving (150g)'::text, 150.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.5, 0.0, false, 2),
  ('חצי מנה (50 גרם)', 'Half serving (50g)', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [PROTEIN] Chicken Sausages
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('נקניקיות עוף', 'Chicken Sausages', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, 'Serving (150g)'::text, 150.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.5, 0.0, false, 2),
  ('חצי מנה (50 גרם)', 'Half serving (50g)', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [PROTEIN] Fresh Salmon
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('סלמון טרי', 'Fresh Salmon', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('פילה (150 גרם)'::text, '1 fillet (150g)'::text, 150.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.5, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [PROTEIN] Fresh Tuna
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('טונה טרייה', 'Fresh Tuna', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('פילה (150 גרם)'::text, '1 fillet (150g)'::text, 150.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.5, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [PROTEIN] Tilapia
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('אמנון (טילאפיה)', 'Tilapia', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('פילה (150 גרם)'::text, '1 fillet (150g)'::text, 150.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.5, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [PROTEIN] Sea Bass
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('לברק', 'Sea Bass', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('פילה (150 גרם)'::text, '1 fillet (150g)'::text, 150.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.5, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [PROTEIN] Red Mullet
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בורי', 'Red Mullet', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('פילה (150 גרם)'::text, '1 fillet (150g)'::text, 150.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.5, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [PROTEIN] Fresh Sardines
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('סרדינים טריים', 'Fresh Sardines', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.5, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [PROTEIN] Shrimp
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שרימפס', 'Shrimp', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.5, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [PROTEIN] Cod
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('קוד (בקלה)', 'Cod', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('פילה (150 גרם)'::text, '1 fillet (150g)'::text, 150.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.5, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [PROTEIN] Trout
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('פורל (טראוט)', 'Trout', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('פילה (150 גרם)'::text, '1 fillet (150g)'::text, 150.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.5, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [PROTEIN] Herring
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('הרינג', 'Herring', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.5, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [PROTEIN] Mackerel
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('מקרל', 'Mackerel', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('פילה (150 גרם)'::text, '1 fillet (150g)'::text, 150.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.5, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [PROTEIN] Canned Tuna (in water)
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('טונה בקופסה (במים)', 'Canned Tuna (in water)', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('פילה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.5, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [PROTEIN] Canned Salmon
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('סלמון בקופסה', 'Canned Salmon', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.5, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [PROTEIN] Sea Bream (Denis)
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('דניס', 'Sea Bream (Denis)', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('פילה (150 גרם)'::text, '1 fillet (150g)'::text, 150.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.5, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [PROTEIN] Sole Fish
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('מוסר ים', 'Sole Fish', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('פילה (150 גרם)'::text, '1 fillet (150g)'::text, 150.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.5, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [PROTEIN] Smoked Salmon
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('סלמון מעושן', 'Smoked Salmon', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.5, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [PROTEIN] Canned Sardines (in water)
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('סרדינים בקופסה (במים)', 'Canned Sardines (in water)', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.5, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [PROTEIN] Calamari (Squid)
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('קלמרי (דיונון)', 'Calamari (Squid)', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.5, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [PROTEIN] Nile Perch
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('נסיכת הנילוס', 'Nile Perch', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('פילה (150 גרם)'::text, '1 fillet (150g)'::text, 150.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.5, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [PROTEIN] Grouper
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('לוקוס', 'Grouper', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('פילה (150 גרם)'::text, '1 fillet (150g)'::text, 150.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.5, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [PROTEIN] Whole Egg
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('ביצה שלמה', 'Whole Egg', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('ביצה אחת (50 גרם)'::text, '1 egg (50g)'::text, 50.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('2 ביצים (100 גרם)', '2 eggs (100g)', 100.0, 2.0, 0.0, false, 2),
  ('3 ביצים (150 גרם)', '3 eggs (150g)', 150.0, 3.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [PROTEIN] Egg White
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('חלבון ביצה', 'Egg White', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('חלבון ביצה אחת (33 גרם)'::text, '1 egg white (33g)'::text, 33.0::numeric, 0.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('2 חלבוני ביצה (66 גרם)', '2 egg whites (66g)', 66.0, 1.0, 0.0, false, 2),
  ('3 חלבוני ביצה (100 גרם)', '3 egg whites (100g)', 100.0, 1.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [PROTEIN] Hard Boiled Egg
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('ביצה קשה', 'Hard Boiled Egg', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('ביצה אחת (50 גרם)'::text, '1 egg (50g)'::text, 50.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('2 ביצים (100 גרם)', '2 eggs (100g)', 100.0, 2.0, 0.0, false, 2),
  ('3 ביצים (150 גרם)', '3 eggs (150g)', 150.0, 3.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [PROTEIN] Scrambled Egg
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('ביצה מקושקשת', 'Scrambled Egg', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('ביצה אחת (50 גרם)'::text, '1 egg (50g)'::text, 50.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('2 ביצים (100 גרם)', '2 eggs (100g)', 100.0, 2.0, 0.0, false, 2),
  ('3 ביצים (150 גרם)', '3 eggs (150g)', 150.0, 3.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [PROTEIN] Omelette
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('חביתה', 'Omelette', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('ביצה אחת (50 גרם)'::text, '1 egg omelette (50g)'::text, 50.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('2 ביצים (100 גרם)', '2 egg omelette (100g)', 100.0, 2.0, 0.0, false, 2),
  ('3 ביצים (150 גרם)', '3 egg omelette (150g)', 150.0, 3.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [PROTEIN] Cooked Green Lentils
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('עדשים ירוקות מבושלות', 'Cooked Green Lentils', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושל (180 גרם)'::text, '1 cup cooked (180g)'::text, 180.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם מבושל', '100g cooked', 100.0, 1.0, 0.0, false, 2),
  ('3 כפות יבש (30 גרם)', '3 tbsp dry (30g)', 30.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [PROTEIN] Cooked Red Lentils
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('עדשים אדומות מבושלות', 'Cooked Red Lentils', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושל (180 גרם)'::text, '1 cup cooked (180g)'::text, 180.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם מבושל', '100g cooked', 100.0, 1.0, 0.0, false, 2),
  ('3 כפות יבש (30 גרם)', '3 tbsp dry (30g)', 30.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [PROTEIN] Cooked Chickpeas
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גרגרי חומוס מבושלים', 'Cooked Chickpeas', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושל (180 גרם)'::text, '1 cup cooked (180g)'::text, 180.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם מבושל', '100g cooked', 100.0, 1.0, 0.0, false, 2),
  ('3 כפות יבש (30 גרם)', '3 tbsp dry (30g)', 30.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [PROTEIN] Cooked Black Beans
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שעועית שחורה מבושלת', 'Cooked Black Beans', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושל (180 גרם)'::text, '1 cup cooked (180g)'::text, 180.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם מבושל', '100g cooked', 100.0, 1.0, 0.0, false, 2),
  ('3 כפות יבש (30 גרם)', '3 tbsp dry (30g)', 30.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [PROTEIN] Cooked Kidney Beans
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שעועית אדומה (קידני) מבושלת', 'Cooked Kidney Beans', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושל (180 גרם)'::text, '1 cup cooked (180g)'::text, 180.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם מבושל', '100g cooked', 100.0, 1.0, 0.0, false, 2),
  ('3 כפות יבש (30 גרם)', '3 tbsp dry (30g)', 30.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [PROTEIN] Cooked White Beans
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שעועית לבנה מבושלת', 'Cooked White Beans', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושל (180 גרם)'::text, '1 cup cooked (180g)'::text, 180.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם מבושל', '100g cooked', 100.0, 1.0, 0.0, false, 2),
  ('3 כפות יבש (30 גרם)', '3 tbsp dry (30g)', 30.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [PROTEIN] Cooked Edamame
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('אדממה מבושלת', 'Cooked Edamame', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושל (180 גרם)'::text, '1 cup cooked (180g)'::text, 180.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם מבושל', '100g cooked', 100.0, 1.0, 0.0, false, 2),
  ('חצי כוס (90 גרם)', '½ cup (90g)', 90.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [PROTEIN] Hummus Spread
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('חומוס ממרח', 'Hummus Spread', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כף (15 גרם)'::text, '1 tbsp (15g)'::text, 15.0::numeric, 0.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('2 כפות (30 גרם)', '2 tbsp (30g)', 30.0, 1.0, 0.0, false, 2),
  ('מנה (100 גרם)', '1 serving (100g)', 100.0, 3.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [PROTEIN] Cooked Green Peas
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('אפונה ירוקה מבושלת', 'Cooked Green Peas', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושל (180 גרם)'::text, '1 cup cooked (180g)'::text, 180.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם מבושל', '100g cooked', 100.0, 1.0, 0.0, false, 2),
  ('חצי כוס (90 גרם)', '½ cup (90g)', 90.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [PROTEIN] Cooked Fava Beans
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('פול מבושל', 'Cooked Fava Beans', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושל (180 גרם)'::text, '1 cup cooked (180g)'::text, 180.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם מבושל', '100g cooked', 100.0, 1.0, 0.0, false, 2),
  ('3 כפות יבש (30 גרם)', '3 tbsp dry (30g)', 30.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [PROTEIN] Cooked Black Lentils (Beluga)
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('עדשים שחורות (בלוגה) מבושלות', 'Cooked Black Lentils (Beluga)', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושל (180 גרם)'::text, '1 cup cooked (180g)'::text, 180.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם מבושל', '100g cooked', 100.0, 1.0, 0.0, false, 2),
  ('3 כפות יבש (30 גרם)', '3 tbsp dry (30g)', 30.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [PROTEIN] Egg White Omelette
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('חביתת חלבונים', 'Egg White Omelette', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('3 חלבונים (100 גרם)'::text, '3 egg whites (100g)'::text, 100.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('2 חלבונים (66 גרם)', '2 egg whites (66g)', 66.0, 1.0, 0.0, false, 2),
  ('4 חלבונים (132 גרם)', '4 egg whites (132g)', 132.0, 2.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [PROTEIN] Poached Egg
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('ביצה עלומה (פושה)', 'Poached Egg', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('ביצה אחת (50 גרם)'::text, '1 egg (50g)'::text, 50.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('2 ביצים (100 גרם)', '2 eggs (100g)', 100.0, 2.0, 0.0, false, 2),
  ('3 ביצים (150 גרם)', '3 eggs (150g)', 150.0, 3.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [PROTEIN] Mujaddara (Lentils & Rice)
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('מג''דרה (עדשים ואורז)', 'Mujaddara (Lentils & Rice)', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושל (200 גרם)'::text, '1 cup cooked (200g)'::text, 200.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (100 גרם)', '½ cup (100g)', 100.0, 1.0, 0.0, false, 2),
  ('מנה גדולה (300 גרם)', 'Large serving (300g)', 300.0, 3.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [PROTEIN] Shakshuka (Eggs in Tomato Sauce)
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שקשוקה (ביצים ברוטב עגבניות)', 'Shakshuka (Eggs in Tomato Sauce)', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('ביצה אחת עם רוטב (80 גרם)'::text, '1 egg with sauce (80g)'::text, 80.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('2 ביצים עם רוטב (160 גרם)', '2 eggs with sauce (160g)', 160.0, 2.0, 0.0, false, 2),
  ('3 ביצים עם רוטב (240 גרם)', '3 eggs with sauce (240g)', 240.0, 3.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [PROTEIN] Tnuva Chicken Sausage
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('נקניק עוף תנובה', 'Tnuva Chicken Sausage', 'protein', 'yellow', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('2 נקניקים (~80 גרם)'::text, '2 sausages (~80g)'::text, 80.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.5, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [PROTEIN] Tnuva Chicken Hot Dogs
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('נקניקיות עוף תנובה', 'Tnuva Chicken Hot Dogs', 'protein', 'yellow', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('נקניקייה אחת (~50 גרם)'::text, '1 hot dog (~50g)'::text, 50.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('2 נקניקיות (~100 גרם)', '2 hot dogs (~100g)', 100.0, 2.0, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [PROTEIN] Frozen Ready Chicken Schnitzel
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שניצל עוף קפוא מוכן', 'Frozen Ready Chicken Schnitzel', 'protein', 'yellow', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('שניצל אחד (~130 גרם)'::text, '1 schnitzel (~130g)'::text, 130.0::numeric, 2.0::numeric, 1.0::numeric, true::boolean, 1::integer)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [PROTEIN] Ready Turkey Schnitzel
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שניצל הודו מוכן', 'Ready Turkey Schnitzel', 'protein', 'yellow', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('שניצל אחד (~130 גרם)'::text, '1 schnitzel (~130g)'::text, 130.0::numeric, 2.0::numeric, 1.0::numeric, true::boolean, 1::integer)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [PROTEIN] Frozen Beef Patties
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('קציצות בקר קפואות', 'Frozen Beef Patties', 'protein', 'yellow', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('קציצה (~120 גרם)'::text, '1 patty (~120g)'::text, 120.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 2.0, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [PROTEIN] Fried Falafel Balls
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('פלאפל כדורים מטוגנים', 'Fried Falafel Balls', 'protein', 'yellow', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('3 כדורים (~60 גרם)'::text, '3 balls (~60g)'::text, 60.0::numeric, 1.0::numeric, 0.5::numeric, true::boolean, 1::integer),
  ('5 כדורים (~100 גרם)', '5 balls (~100g)', 100.0, 2.0, 1.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [PROTEIN] Hard White Tofu
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('טופו לבן קשה', 'Hard White Tofu', 'protein', 'yellow', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('150 גרם', '150g', 150.0, 1.5, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [PROTEIN] Tempeh
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('טמפה', 'Tempeh', 'protein', 'yellow', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [PROTEIN] Homemade-Style Hummus Spread
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('חומוס ממרח ביתי', 'Homemade-Style Hummus Spread', 'protein', 'yellow', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('3 כפות (~80 גרם)'::text, '3 tbsp (~80g)'::text, 80.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 2.0, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [PROTEIN] Tuna in Olive Oil
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('טונה בשמן זית', 'Tuna in Olive Oil', 'protein', 'yellow', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('פחית קטנה (~80 גרם)'::text, 'Small can (~80g)'::text, 80.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 2.0, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [PROTEIN] Chicken Shawarma (Spiced)
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('עוף שאורמה', 'Chicken Shawarma (Spiced)', 'protein', 'yellow', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (~150 גרם)'::text, '1 serving (~150g)'::text, 150.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.5, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [PROTEIN] Thin Beef Steak
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('סטייק בקר דק', 'Thin Beef Steak', 'protein', 'yellow', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (~150 גרם)'::text, '1 serving (~150g)'::text, 150.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.5, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [PROTEIN] Ground Chicken
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בשר טחון עוף', 'Ground Chicken', 'protein', 'yellow', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (~150 גרם)'::text, '1 serving (~150g)'::text, 150.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.5, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [PROTEIN] Sea Bream (Denise Fish)
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('דניס (דג ים)', 'Sea Bream (Denise Fish)', 'protein', 'yellow', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (~150 גרם)'::text, '1 serving (~150g)'::text, 150.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.5, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [PROTEIN] Sea Bass (Locus Fish)
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('לוקוס (דג ים)', 'Sea Bass (Locus Fish)', 'protein', 'yellow', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (~150 גרם)'::text, '1 serving (~150g)'::text, 150.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.5, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- ============================================================
-- CARB (63 foods)
-- ============================================================

-- [CARB] White Bread
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('לחם לבן', 'White Bread', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('פרוסה (~30 גרם)'::text, '1 slice (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('2 פרוסות (~60 גרם)', '2 slices (~60g)', 60.0, 0.0, 2.0, false, 2),
  ('חצי פרוסה (~15 גרם)', 'Half slice (~15g)', 15.0, 0.0, 0.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [CARB] Whole Wheat Bread
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('לחם מלא', 'Whole Wheat Bread', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('פרוסה (~30 גרם)'::text, '1 slice (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('2 פרוסות (~60 גרם)', '2 slices (~60g)', 60.0, 0.0, 2.0, false, 2),
  ('חצי פרוסה (~15 גרם)', 'Half slice (~15g)', 15.0, 0.0, 0.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [CARB] White Pita
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('פיתה לבנה', 'White Pita', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('שליש פיתה (~22 גרם)'::text, '1/3 pita (~22g)'::text, 22.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('חצי פיתה (~33 גרם)', '1/2 pita (~33g)', 33.0, 0.0, 1.5, false, 2),
  ('פיתה שלמה (~65 גרם)', '1 whole pita (~65g)', 65.0, 0.0, 3.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [CARB] Whole Wheat Pita
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('פיתה מקמח מלא', 'Whole Wheat Pita', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('שליש פיתה (~22 גרם)'::text, '1/3 pita (~22g)'::text, 22.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('חצי פיתה (~33 גרם)', '1/2 pita (~33g)', 33.0, 0.0, 1.5, false, 2),
  ('פיתה שלמה (~65 גרם)', '1 whole pita (~65g)', 65.0, 0.0, 3.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [CARB] Sourdough Bread
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('לחם מחמצת', 'Sourdough Bread', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('פרוסה (~30 גרם)'::text, '1 slice (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('2 פרוסות (~60 גרם)', '2 slices (~60g)', 60.0, 0.0, 2.0, false, 2),
  ('פרוסה עבה (~45 גרם)', 'Thick slice (~45g)', 45.0, 0.0, 1.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [CARB] Cooked White Rice
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('אורז לבן מבושל', 'Cooked White Rice', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס (~200 גרם)'::text, '1 cup (~200g)'::text, 200.0::numeric, 0.0::numeric, 2.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (~100 גרם)', '1/2 cup (~100g)', 100.0, 0.0, 1.0, false, 2),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.0, 1.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [CARB] Cooked Brown Rice
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('אורז מלא מבושל', 'Cooked Brown Rice', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס (~200 גרם)'::text, '1 cup (~200g)'::text, 200.0::numeric, 0.0::numeric, 2.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (~100 גרם)', '1/2 cup (~100g)', 100.0, 0.0, 1.0, false, 2),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.0, 1.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [CARB] Cooked Pasta
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('פסטה מבושלת', 'Cooked Pasta', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס (~200 גרם)'::text, '1 cup (~200g)'::text, 200.0::numeric, 0.0::numeric, 2.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (~100 גרם)', '1/2 cup (~100g)', 100.0, 0.0, 1.0, false, 2),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.0, 1.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [CARB] Cooked Whole Wheat Pasta
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('פסטה מקמח מלא מבושלת', 'Cooked Whole Wheat Pasta', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס (~200 גרם)'::text, '1 cup (~200g)'::text, 200.0::numeric, 0.0::numeric, 2.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (~100 גרם)', '1/2 cup (~100g)', 100.0, 0.0, 1.0, false, 2),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.0, 1.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [CARB] Cooked Couscous
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('קוסקוס מבושל', 'Cooked Couscous', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס (~200 גרם)'::text, '1 cup (~200g)'::text, 200.0::numeric, 0.0::numeric, 2.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (~100 גרם)', '1/2 cup (~100g)', 100.0, 0.0, 1.0, false, 2),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.0, 1.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [CARB] Cooked Bulgur
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בורגול מבושל', 'Cooked Bulgur', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס (~200 גרם)'::text, '1 cup (~200g)'::text, 200.0::numeric, 0.0::numeric, 2.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (~100 גרם)', '1/2 cup (~100g)', 100.0, 0.0, 1.0, false, 2),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.0, 1.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [CARB] Cooked Quinoa
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('קינואה מבושלת', 'Cooked Quinoa', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס (~200 גרם)'::text, '1 cup (~200g)'::text, 200.0::numeric, 0.0::numeric, 2.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (~100 גרם)', '1/2 cup (~100g)', 100.0, 0.0, 1.0, false, 2),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.0, 1.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [CARB] Rolled Oats
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שיבולת שועל (קוואקר)', 'Rolled Oats', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('3 כפות יבש (~25 גרם)'::text, '3 tbsp dry (~25g)'::text, 25.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('6 כפות יבש (~50 גרם)', '6 tbsp dry (~50g)', 50.0, 0.0, 2.0, false, 2),
  ('כף וחצי יבש (~12 גרם)', '1.5 tbsp dry (~12g)', 12.0, 0.0, 0.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [CARB] Salted Crackers
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('קרקרים מלחים', 'Salted Crackers', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('4 קרקרים (~30 גרם)'::text, '4 crackers (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('2 קרקרים (~15 גרם)', '2 crackers (~15g)', 15.0, 0.0, 0.5, false, 2),
  ('8 קרקרים (~60 גרם)', '8 crackers (~60g)', 60.0, 0.0, 2.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [CARB] Rice Cakes
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('פריכיות אורז', 'Rice Cakes', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('2 פריכיות (~20 גרם)'::text, '2 rice cakes (~20g)'::text, 20.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('פריכית אחת (~10 גרם)', '1 rice cake (~10g)', 10.0, 0.0, 0.5, false, 2),
  ('4 פריכיות (~40 גרם)', '4 rice cakes (~40g)', 40.0, 0.0, 2.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [CARB] Breadsticks (Grissini)
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('מקלות לחם (גריסיני)', 'Breadsticks (Grissini)', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('4 מקלות (~30 גרם)'::text, '4 breadsticks (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('2 מקלות (~15 גרם)', '2 breadsticks (~15g)', 15.0, 0.0, 0.5, false, 2),
  ('8 מקלות (~60 גרם)', '8 breadsticks (~60g)', 60.0, 0.0, 2.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [CARB] Bagel
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בייגל', 'Bagel', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('בייגל שלם (~90 גרם)'::text, '1 whole bagel (~90g)'::text, 90.0::numeric, 0.0::numeric, 3.0::numeric, true::boolean, 1::integer),
  ('חצי בייגל (~45 גרם)', '1/2 bagel (~45g)', 45.0, 0.0, 1.5, false, 2),
  ('בייגל מיני (~60 גרם)', 'Mini bagel (~60g)', 60.0, 0.0, 2.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [CARB] Ciabatta
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('צ''יאבטה', 'Ciabatta', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('פרוסה (~30 גרם)'::text, '1 slice (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('לחמנייה (~90 גרם)', '1 roll (~90g)', 90.0, 0.0, 3.0, false, 2),
  ('חצי פרוסה (~15 גרם)', 'Half slice (~15g)', 15.0, 0.0, 0.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [CARB] Rye Bread
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('לחם שיפון', 'Rye Bread', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('פרוסה (~30 גרם)'::text, '1 slice (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('2 פרוסות (~60 גרם)', '2 slices (~60g)', 60.0, 0.0, 2.0, false, 2),
  ('חצי פרוסה (~15 גרם)', 'Half slice (~15g)', 15.0, 0.0, 0.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [CARB] Spelt Bread
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('לחם כוסמין', 'Spelt Bread', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('פרוסה (~30 גרם)'::text, '1 slice (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('2 פרוסות (~60 גרם)', '2 slices (~60g)', 60.0, 0.0, 2.0, false, 2),
  ('חצי פרוסה (~15 גרם)', 'Half slice (~15g)', 15.0, 0.0, 0.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [CARB] Bread Roll
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('לחמנייה', 'Bread Roll', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('לחמנייה אחת (~60 גרם)'::text, '1 roll (~60g)'::text, 60.0::numeric, 0.0::numeric, 2.0::numeric, true::boolean, 1::integer),
  ('חצי לחמנייה (~30 גרם)', '1/2 roll (~30g)', 30.0, 0.0, 1.0, false, 2),
  ('לחמנייה גדולה (~90 גרם)', 'Large roll (~90g)', 90.0, 0.0, 3.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [CARB] Tortilla Wrap
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('טורטייה', 'Tortilla Wrap', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('טורטייה אחת (~60 גרם)'::text, '1 tortilla (~60g)'::text, 60.0::numeric, 0.0::numeric, 2.0::numeric, true::boolean, 1::integer),
  ('טורטייה קטנה (~30 גרם)', 'Small tortilla (~30g)', 30.0, 0.0, 1.0, false, 2),
  ('טורטייה גדולה (~90 גרם)', 'Large tortilla (~90g)', 90.0, 0.0, 3.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [CARB] Laffa (Iraqi Pita)
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('לאפה', 'Laffa (Iraqi Pita)', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('שליש לאפה (~30 גרם)'::text, '1/3 laffa (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('חצי לאפה (~45 גרם)', '1/2 laffa (~45g)', 45.0, 0.0, 1.5, false, 2),
  ('לאפה שלמה (~90 גרם)', '1 whole laffa (~90g)', 90.0, 0.0, 3.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [CARB] Cooked Ptitim (Israeli Couscous)
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('פתיתים מבושלים', 'Cooked Ptitim (Israeli Couscous)', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס (~200 גרם)'::text, '1 cup (~200g)'::text, 200.0::numeric, 0.0::numeric, 2.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (~100 גרם)', '1/2 cup (~100g)', 100.0, 0.0, 1.0, false, 2),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.0, 1.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [CARB] Cooked Rice Noodles
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('אטריות אורז מבושלות', 'Cooked Rice Noodles', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס (~200 גרם)'::text, '1 cup (~200g)'::text, 200.0::numeric, 0.0::numeric, 2.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (~100 גרם)', '1/2 cup (~100g)', 100.0, 0.0, 1.0, false, 2),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.0, 1.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [CARB] Cornflakes
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('קורנפלקס', 'Cornflakes', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (~40 גרם)'::text, '1 portion (~40g)'::text, 40.0::numeric, 0.0::numeric, 1.5::numeric, true::boolean, 1::integer),
  ('חצי מנה (~20 גרם)', '1/2 portion (~20g)', 20.0, 0.0, 1.0, false, 2),
  ('מנה גדולה (~60 גרם)', 'Large portion (~60g)', 60.0, 0.0, 2.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [CARB] Granola
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גרנולה', 'Granola', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (~40 גרם)'::text, '1 portion (~40g)'::text, 40.0::numeric, 0.0::numeric, 1.5::numeric, true::boolean, 1::integer),
  ('חצי מנה (~20 גרם)', '1/2 portion (~20g)', 20.0, 0.0, 1.0, false, 2),
  ('מנה גדולה (~60 גרם)', 'Large portion (~60g)', 60.0, 0.0, 2.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [CARB] Matzo
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('מצה', 'Matzo', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מצה אחת (~30 גרם)'::text, '1 matzo (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('חצי מצה (~15 גרם)', '1/2 matzo (~15g)', 15.0, 0.0, 0.5, false, 2),
  ('2 מצות (~60 גרם)', '2 matzos (~60g)', 60.0, 0.0, 2.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [CARB] Toast Bread
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('לחם טוסט', 'Toast Bread', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('פרוסה (~25 גרם)'::text, '1 slice (~25g)'::text, 25.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('2 פרוסות (~50 גרם)', '2 slices (~50g)', 50.0, 0.0, 2.0, false, 2),
  ('3 פרוסות (~75 גרם)', '3 slices (~75g)', 75.0, 0.0, 3.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [CARB] Cooked Whole Wheat Couscous
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('קוסקוס מלא מבושל', 'Cooked Whole Wheat Couscous', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס (~200 גרם)'::text, '1 cup (~200g)'::text, 200.0::numeric, 0.0::numeric, 2.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (~100 גרם)', '1/2 cup (~100g)', 100.0, 0.0, 1.0, false, 2),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.0, 1.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [CARB] Potato
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('תפוח אדמה', 'Potato', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~150 גרם)'::text, '1 medium (~150g)'::text, 150.0::numeric, 0.0::numeric, 1.5::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.0, 1.0, false, 2),
  ('1 גדול (~250 גרם)', '1 large (~250g)', 250.0, 0.0, 2.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [CARB] Sweet Potato
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בטטה', 'Sweet Potato', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינונית (~150 גרם)'::text, '1 medium (~150g)'::text, 150.0::numeric, 0.0::numeric, 1.5::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.0, 1.0, false, 2),
  ('1 גדולה (~250 גרם)', '1 large (~250g)', 250.0, 0.0, 2.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [CARB] Corn
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('תירס', 'Corn', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('חצי כוס (~80 גרם)'::text, 'Half cup (~80g)'::text, 80.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('קלח אחד (~160 גרם)', '1 ear (~160g)', 160.0, 0.0, 2.0, false, 2),
  ('כוס (~160 גרם)', '1 cup (~160g)', 160.0, 0.0, 2.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [CARB] Cassava
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('קסווה (מניוק)', 'Cassava', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~150 גרם)'::text, '1 medium piece (~150g)'::text, 150.0::numeric, 0.0::numeric, 2.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.0, 1.5, false, 2),
  ('כוס קוביות (~200 גרם)', '1 cup cubed (~200g)', 200.0, 0.0, 2.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [CARB] Taro
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('טארו (קולקס)', 'Taro', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~150 גרם)'::text, '1 medium (~150g)'::text, 150.0::numeric, 0.0::numeric, 1.5::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.0, 1.0, false, 2),
  ('כוס קוביות (~200 גרם)', '1 cup cubed (~200g)', 200.0, 0.0, 2.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [CARB] Butternut Squash
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('דלעת ערמונים', 'Butternut Squash', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס קוביות (~150 גרם)'::text, '1 cup cubed (~150g)'::text, 150.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.0, 0.5, false, 2),
  ('מנה גדולה (~250 גרם)', 'Large serving (~250g)', 250.0, 0.0, 1.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [CARB] Green Peas
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('אפונה ירוקה', 'Green Peas', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('חצי כוס (~80 גרם)'::text, 'Half cup (~80g)'::text, 80.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('כוס (~160 גרם)', '1 cup (~160g)', 160.0, 0.0, 2.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 1.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [CARB] Beetroot
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('סלק', 'Beetroot', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~150 גרם)'::text, '1 medium (~150g)'::text, 150.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.0, 0.5, false, 2),
  ('כוס קוביות (~200 גרם)', '1 cup cubed (~200g)', 200.0, 0.0, 1.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [CARB] Parsnip
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('דלורית (פרסניפ)', 'Parsnip', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~150 גרם)'::text, '1 medium (~150g)'::text, 150.0::numeric, 0.0::numeric, 1.5::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.0, 1.0, false, 2),
  ('כוס פרוסות (~200 גרם)', '1 cup sliced (~200g)', 200.0, 0.0, 2.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [CARB] Mixed Root Vegetables
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('ירקות שורש מעורבים (מרק)', 'Mixed Root Vegetables', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס קוביות (~150 גרם)'::text, '1 cup cubed (~150g)'::text, 150.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.0, 0.5, false, 2),
  ('מנה גדולה (~250 גרם)', 'Large serving (~250g)', 250.0, 0.0, 1.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [CARB] Japanese Sweet Potato (Purple)
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בטטה יפנית (סגולה)', 'Japanese Sweet Potato (Purple)', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינונית (~150 גרם)'::text, '1 medium (~150g)'::text, 150.0::numeric, 0.0::numeric, 1.5::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.0, 1.0, false, 2),
  ('1 גדולה (~250 גרם)', '1 large (~250g)', 250.0, 0.0, 2.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [CARB] Yam
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('יאם (בטטה אפריקאית)', 'Yam', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~150 גרם)'::text, '1 medium piece (~150g)'::text, 150.0::numeric, 0.0::numeric, 1.5::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.0, 1.0, false, 2),
  ('כוס קוביות (~200 גרם)', '1 cup cubed (~200g)', 200.0, 0.0, 2.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [CARB] Osem 100% Whole Wheat Crackers
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('קרקרים אוסם 100% מחיטה מלאה', 'Osem 100% Whole Wheat Crackers', 'carb', 'red', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('3 קרקרים (~20 גרם)'::text, '3 crackers (~20g)'::text, 20.0::numeric, 0.0::numeric, 0.5::numeric, true::boolean, 1::integer),
  ('6 קרקרים (~40 גרם)', '6 crackers (~40g)', 40.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 3.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [CARB] Osem Regular Crackers
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('קרקרים אוסם רגילים', 'Osem Regular Crackers', 'carb', 'red', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('3 קרקרים (~20 גרם)'::text, '3 crackers (~20g)'::text, 20.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.0, 3.5, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [CARB] Osem Spaghetti
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('פסטה ספגטי אוסם', 'Osem Spaghetti', 'carb', 'red', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~200 גרם)'::text, '1 cup cooked (~200g)'::text, 200.0::numeric, 0.0::numeric, 2.5::numeric, true::boolean, 1::integer),
  ('100 גרם מבושל', '100g cooked', 100.0, 0.0, 1.5, false, 2),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.0, 1.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [CARB] Osem Elbow Pasta
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('פסטה מרפק אוסם', 'Osem Elbow Pasta', 'carb', 'red', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~200 גרם)'::text, '1 cup cooked (~200g)'::text, 200.0::numeric, 0.0::numeric, 2.5::numeric, true::boolean, 1::integer),
  ('100 גרם מבושל', '100g cooked', 100.0, 0.0, 1.5, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [CARB] Osem Fusilli Pasta
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('פסטה פוזילי אוסם', 'Osem Fusilli Pasta', 'carb', 'red', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~200 גרם)'::text, '1 cup cooked (~200g)'::text, 200.0::numeric, 0.0::numeric, 2.5::numeric, true::boolean, 1::integer),
  ('100 גרם מבושל', '100g cooked', 100.0, 0.0, 1.5, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [CARB] Osem Couscous
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('קוסקוס אוסם', 'Osem Couscous', 'carb', 'red', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~200 גרם)'::text, '1 cup cooked (~200g)'::text, 200.0::numeric, 0.0::numeric, 2.0::numeric, true::boolean, 1::integer),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.0, 1.0, false, 2),
  ('100 גרם מבושל', '100g cooked', 100.0, 0.0, 1.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [CARB] Osem Soup Nuts (Mandeln)
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שקדי מרק אוסם', 'Osem Soup Nuts (Mandeln)', 'carb', 'red', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כף (~10 גרם)'::text, '1 tbsp (~10g)'::text, 10.0::numeric, 0.0::numeric, 0.5::numeric, true::boolean, 1::integer),
  ('3 כפות (~30 גרם)', '3 tbsp (~30g)', 30.0, 0.0, 1.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [CARB] Osem Egg Noodles
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('אטריות ביצים אוסם', 'Osem Egg Noodles', 'carb', 'red', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~200 גרם)'::text, '1 cup cooked (~200g)'::text, 200.0::numeric, 0.0::numeric, 2.0::numeric, true::boolean, 1::integer),
  ('100 גרם מבושל', '100g cooked', 100.0, 0.0, 1.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [CARB] Osem White Rice
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('אורז אוסם לבן', 'Osem White Rice', 'carb', 'red', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~200 גרם)'::text, '1 cup cooked (~200g)'::text, 200.0::numeric, 0.0::numeric, 2.5::numeric, true::boolean, 1::integer),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.0, 1.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [CARB] Osem Mini Pita Chips
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('פיתות מיני אוסם', 'Osem Mini Pita Chips', 'carb', 'red', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('חופן (~20 גרם)'::text, '1 handful (~20g)'::text, 20.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.0, 4.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [CARB] Telma Cornflakes
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('קורנפלקס טלמה', 'Telma Cornflakes', 'carb', 'red', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('קערה (~40 גרם)'::text, '1 bowl (~40g)'::text, 40.0::numeric, 0.0::numeric, 1.5::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.0, 4.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [CARB] Telma Quick Oats
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שיבולת שועל מהירה טלמה', 'Telma Quick Oats', 'carb', 'red', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('3 כפות יבש (~25 גרם)'::text, '3 tbsp dry (~25g)'::text, 25.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('6 כפות יבש (~50 גרם)', '6 tbsp dry (~50g)', 50.0, 0.0, 2.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 4.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [CARB] Telma Honey Granola
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גרנולה טלמה דבש', 'Telma Honey Granola', 'carb', 'red', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('קערה (~40 גרם)'::text, '1 bowl (~40g)'::text, 40.0::numeric, 0.0::numeric, 1.5::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.0, 3.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [CARB] Cheese Burekas
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בורקס גבינה', 'Cheese Burekas', 'carb', 'red', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('בורקס אחד (~80 גרם)'::text, '1 burekas (~80g)'::text, 80.0::numeric, 0.5::numeric, 2.0::numeric, true::boolean, 1::integer)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [CARB] Butter Croissant
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('קרואסון חמאה', 'Butter Croissant', 'carb', 'red', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('קרואסון אחד (~60 גרם)'::text, '1 croissant (~60g)'::text, 60.0::numeric, 0.0::numeric, 2.0::numeric, true::boolean, 1::integer)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [CARB] Wheat Tortilla Wrap
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('טורטייה חיטה', 'Wheat Tortilla Wrap', 'carb', 'red', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('עלה אחד (~40 גרם)'::text, '1 wrap (~40g)'::text, 40.0::numeric, 0.0::numeric, 1.5::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.0, 3.5, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [CARB] Gluten-Free Rice Bread
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('לחם אורז ללא גלוטן', 'Gluten-Free Rice Bread', 'carb', 'red', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('פרוסה (~30 גרם)'::text, '1 slice (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.0, 3.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [CARB] Cooked Basmati Rice
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('אורז בסמטי מבושל', 'Cooked Basmati Rice', 'carb', 'red', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~200 גרם)'::text, '1 cup cooked (~200g)'::text, 200.0::numeric, 0.0::numeric, 2.5::numeric, true::boolean, 1::integer),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.0, 1.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [CARB] Cooked Jasmine Rice
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('אורז יסמין מבושל', 'Cooked Jasmine Rice', 'carb', 'red', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~200 גרם)'::text, '1 cup cooked (~200g)'::text, 200.0::numeric, 0.0::numeric, 2.5::numeric, true::boolean, 1::integer),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.0, 1.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [CARB] Cooked Quinoa (Brand)
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('קינואה מבושלת', 'Cooked Quinoa (Brand)', 'carb', 'red', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~200 גרם)'::text, '1 cup cooked (~200g)'::text, 200.0::numeric, 0.5::numeric, 2.0::numeric, true::boolean, 1::integer),
  ('100 גרם מבושל', '100g cooked', 100.0, 0.5, 1.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [CARB] Cooked Whole Wheat Penne
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('פסטה פנה מלאה מבושלת', 'Cooked Whole Wheat Penne', 'carb', 'red', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~200 גרם)'::text, '1 cup cooked (~200g)'::text, 200.0::numeric, 0.0::numeric, 2.5::numeric, true::boolean, 1::integer),
  ('100 גרם מבושל', '100g cooked', 100.0, 0.0, 1.5, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- ============================================================
-- FAT (32 foods)
-- ============================================================

-- [FAT] Olive Oil
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שמן זית', 'Olive Oil', 'fat', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כפית (~5 גרם)'::text, '1 teaspoon (~5g)'::text, 5.0::numeric, 0.5::numeric, 0.0::numeric, false::boolean, 1::integer),
  ('כף (~15 גרם)', '1 tablespoon (~15g)', 15.0, 1.0, 0.0, true, 2),
  ('100 גרם', '100g', 100.0, 6.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [FAT] Tahini
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('טחינה גולמית', 'Tahini', 'fat', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כפית (~5 גרם)'::text, '1 teaspoon (~5g)'::text, 5.0::numeric, 0.5::numeric, 0.0::numeric, false::boolean, 1::integer),
  ('כף (~15 גרם)', '1 tablespoon (~15g)', 15.0, 1.0, 0.0, true, 2),
  ('100 גרם', '100g', 100.0, 6.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [FAT] Almond Butter
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('חמאת שקדים', 'Almond Butter', 'fat', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כפית (~5 גרם)'::text, '1 teaspoon (~5g)'::text, 5.0::numeric, 0.5::numeric, 0.0::numeric, false::boolean, 1::integer),
  ('כף (~15 גרם)', '1 tablespoon (~15g)', 15.0, 1.0, 0.0, true, 2),
  ('100 גרם', '100g', 100.0, 6.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [FAT] Almonds
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שקדים', 'Almonds', 'fat', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כף (~15 גרם)'::text, '1 tablespoon (~15g)'::text, 15.0::numeric, 0.5::numeric, 0.0::numeric, false::boolean, 1::integer),
  ('חופן (~30 גרם)', '1 handful (~30g)', 30.0, 1.0, 0.0, true, 2),
  ('100 גרם', '100g', 100.0, 3.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [FAT] Walnuts
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('אגוזי מלך', 'Walnuts', 'fat', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כף (~15 גרם)'::text, '1 tablespoon (~15g)'::text, 15.0::numeric, 0.5::numeric, 0.0::numeric, false::boolean, 1::integer),
  ('חופן (~30 גרם)', '1 handful (~30g)', 30.0, 1.0, 0.0, true, 2),
  ('100 גרם', '100g', 100.0, 3.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [FAT] Cashews
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('קשיו', 'Cashews', 'fat', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כף (~15 גרם)'::text, '1 tablespoon (~15g)'::text, 15.0::numeric, 0.5::numeric, 0.0::numeric, false::boolean, 1::integer),
  ('חופן (~30 גרם)', '1 handful (~30g)', 30.0, 1.0, 0.0, true, 2),
  ('100 גרם', '100g', 100.0, 3.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [FAT] Pistachios
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('פיסטוקים', 'Pistachios', 'fat', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כף (~15 גרם)'::text, '1 tablespoon (~15g)'::text, 15.0::numeric, 0.5::numeric, 0.0::numeric, false::boolean, 1::integer),
  ('חופן (~30 גרם)', '1 handful (~30g)', 30.0, 1.0, 0.0, true, 2),
  ('100 גרם', '100g', 100.0, 3.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [FAT] Sunflower Seeds
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גרעיני חמנייה', 'Sunflower Seeds', 'fat', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כף (~15 גרם)'::text, '1 tablespoon (~15g)'::text, 15.0::numeric, 0.5::numeric, 0.0::numeric, false::boolean, 1::integer),
  ('חופן (~30 גרם)', '1 handful (~30g)', 30.0, 1.0, 0.0, true, 2),
  ('100 גרם', '100g', 100.0, 3.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [FAT] Pumpkin Seeds
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גרעיני דלעת', 'Pumpkin Seeds', 'fat', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כף (~15 גרם)'::text, '1 tablespoon (~15g)'::text, 15.0::numeric, 0.5::numeric, 0.0::numeric, false::boolean, 1::integer),
  ('חופן (~30 גרם)', '1 handful (~30g)', 30.0, 1.0, 0.0, true, 2),
  ('100 גרם', '100g', 100.0, 3.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [FAT] Sesame Seeds
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שומשום', 'Sesame Seeds', 'fat', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כף (~15 גרם)'::text, '1 tablespoon (~15g)'::text, 15.0::numeric, 0.5::numeric, 0.0::numeric, false::boolean, 1::integer),
  ('חופן (~30 גרם)', '1 handful (~30g)', 30.0, 1.0, 0.0, true, 2),
  ('100 גרם', '100g', 100.0, 3.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [FAT] Chia Seeds
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('זרעי צ׳יה', 'Chia Seeds', 'fat', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כף (~15 גרם)'::text, '1 tablespoon (~15g)'::text, 15.0::numeric, 0.5::numeric, 0.0::numeric, false::boolean, 1::integer),
  ('חופן (~30 גרם)', '1 handful (~30g)', 30.0, 1.0, 0.0, true, 2),
  ('100 גרם', '100g', 100.0, 3.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [FAT] Flaxseeds
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('זרעי פשתן', 'Flaxseeds', 'fat', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כף (~15 גרם)'::text, '1 tablespoon (~15g)'::text, 15.0::numeric, 0.5::numeric, 0.0::numeric, false::boolean, 1::integer),
  ('חופן (~30 גרם)', '1 handful (~30g)', 30.0, 1.0, 0.0, true, 2),
  ('100 גרם', '100g', 100.0, 3.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [FAT] Peanuts
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בוטנים', 'Peanuts', 'fat', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כף (~15 גרם)'::text, '1 tablespoon (~15g)'::text, 15.0::numeric, 0.5::numeric, 0.0::numeric, false::boolean, 1::integer),
  ('חופן (~30 גרם)', '1 handful (~30g)', 30.0, 1.0, 0.0, true, 2),
  ('100 גרם', '100g', 100.0, 3.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [FAT] Peanut Butter
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('חמאת בוטנים', 'Peanut Butter', 'fat', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כפית (~5 גרם)'::text, '1 teaspoon (~5g)'::text, 5.0::numeric, 0.5::numeric, 0.0::numeric, false::boolean, 1::integer),
  ('כף (~15 גרם)', '1 tablespoon (~15g)', 15.0, 1.0, 0.0, true, 2),
  ('100 גרם', '100g', 100.0, 6.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [FAT] Coconut Oil
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שמן קוקוס', 'Coconut Oil', 'fat', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כפית (~5 גרם)'::text, '1 teaspoon (~5g)'::text, 5.0::numeric, 0.5::numeric, 0.0::numeric, false::boolean, 1::integer),
  ('כף (~15 גרם)', '1 tablespoon (~15g)', 15.0, 1.0, 0.0, true, 2),
  ('100 גרם', '100g', 100.0, 6.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [FAT] Pecans
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('אגוזי פקאן', 'Pecans', 'fat', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כף (~15 גרם)'::text, '1 tablespoon (~15g)'::text, 15.0::numeric, 0.5::numeric, 0.0::numeric, false::boolean, 1::integer),
  ('חופן (~30 גרם)', '1 handful (~30g)', 30.0, 1.0, 0.0, true, 2),
  ('100 גרם', '100g', 100.0, 3.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [FAT] Macadamia Nuts
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('אגוזי מקדמיה', 'Macadamia Nuts', 'fat', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כף (~15 גרם)'::text, '1 tablespoon (~15g)'::text, 15.0::numeric, 0.5::numeric, 0.0::numeric, false::boolean, 1::integer),
  ('חופן (~30 גרם)', '1 handful (~30g)', 30.0, 1.0, 0.0, true, 2),
  ('100 גרם', '100g', 100.0, 3.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [FAT] Brazil Nuts
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('אגוזי ברזיל', 'Brazil Nuts', 'fat', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כף (~15 גרם)'::text, '1 tablespoon (~15g)'::text, 15.0::numeric, 0.5::numeric, 0.0::numeric, false::boolean, 1::integer),
  ('חופן (~30 גרם)', '1 handful (~30g)', 30.0, 1.0, 0.0, true, 2),
  ('100 גרם', '100g', 100.0, 3.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [FAT] Avocado Oil
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שמן אבוקדו', 'Avocado Oil', 'fat', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כפית (~5 גרם)'::text, '1 teaspoon (~5g)'::text, 5.0::numeric, 0.5::numeric, 0.0::numeric, false::boolean, 1::integer),
  ('כף (~15 גרם)', '1 tablespoon (~15g)', 15.0, 1.0, 0.0, true, 2),
  ('100 גרם', '100g', 100.0, 6.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [FAT] Hazelnuts
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('אגוזי לוז (לוזים)', 'Hazelnuts', 'fat', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כף (~15 גרם)'::text, '1 tablespoon (~15g)'::text, 15.0::numeric, 0.5::numeric, 0.0::numeric, false::boolean, 1::integer),
  ('חופן (~30 גרם)', '1 handful (~30g)', 30.0, 1.0, 0.0, true, 2),
  ('100 גרם', '100g', 100.0, 3.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [FAT] Raw Tahini - Grains Brand
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('טחינה גולמית גרעינים', 'Raw Tahini - Grains Brand', 'fat', 'yellow', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כף (~15 גרם)'::text, '1 tbsp (~15g)'::text, 15.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('2 כפות (~30 גרם)', '2 tbsp (~30g)', 30.0, 2.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 6.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [FAT] Ready Tahini (Prepared)
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('טחינה מוכנה', 'Ready Tahini (Prepared)', 'fat', 'yellow', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('2 כפות (~30 גרם)'::text, '2 tbsp (~30g)'::text, 30.0::numeric, 0.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 2.0, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [FAT] Natural Peanut Butter - Brand
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('חמאת בוטנים טבעית', 'Natural Peanut Butter - Brand', 'fat', 'yellow', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כף (~15 גרם)'::text, '1 tbsp (~15g)'::text, 15.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 6.0, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [FAT] Extra Virgin Olive Oil
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שמן זית כתית מעולה', 'Extra Virgin Olive Oil', 'fat', 'yellow', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כף (~13 גרם)'::text, '1 tbsp (~13g)'::text, 13.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כפית (~4 גרם)', '1 tsp (~4g)', 4.0, 0.5, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [FAT] Canola Oil
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שמן קנולה', 'Canola Oil', 'fat', 'yellow', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כף (~13 גרם)'::text, '1 tbsp (~13g)'::text, 13.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כפית (~4 גרם)', '1 tsp (~4g)', 4.0, 0.5, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [FAT] Avocado Spread (Guacamole)
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('אבוקדו (ממרח)', 'Avocado Spread (Guacamole)', 'fat', 'yellow', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('2 כפות (~30 גרם)'::text, '2 tbsp (~30g)'::text, 30.0::numeric, 0.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי אבוקדו (~80 גרם)', 'Half avocado (~80g)', 80.0, 1.0, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [FAT] Roasted Almonds
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שקדים קלויים', 'Roasted Almonds', 'fat', 'yellow', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('חופן (~30 גרם)'::text, '1 handful (~30g)'::text, 30.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 5.0, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [FAT] Roasted Peanuts
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בוטנים קלויים', 'Roasted Peanuts', 'fat', 'yellow', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('חופן (~30 גרם)'::text, '1 handful (~30g)'::text, 30.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 5.5, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [FAT] Roasted Sunflower Seeds
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גרעיני חמנייה קלויים', 'Roasted Sunflower Seeds', 'fat', 'yellow', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('3 כפות (~30 גרם)'::text, '3 tbsp (~30g)'::text, 30.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 5.5, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [FAT] Mayonnaise
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('מיונז', 'Mayonnaise', 'fat', 'yellow', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כף (~15 גרם)'::text, '1 tbsp (~15g)'::text, 15.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כפית (~5 גרם)', '1 tsp (~5g)', 5.0, 0.5, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [FAT] Light Mayonnaise
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('מיונז קל', 'Light Mayonnaise', 'fat', 'yellow', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כף (~15 גרם)'::text, '1 tbsp (~15g)'::text, 15.0::numeric, 0.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('2 כפות (~30 גרם)', '2 tbsp (~30g)', 30.0, 1.0, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [FAT] Almond Flour
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('קמח שקדים', 'Almond Flour', 'fat', 'yellow', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס (~100 גרם)'::text, '1 cup (~100g)'::text, 100.0::numeric, 5.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('3 כפות (~30 גרם)', '3 tbsp (~30g)', 30.0, 1.5, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- ============================================================
-- BEVERAGE (20 foods)
-- ============================================================

-- [BEVERAGE] Water
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('מים', 'Water', 'beverage', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס (240 מ"ל)'::text, '1 cup (240ml)'::text, 240.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 מ"ל', '100ml', 100.0, 0.0, 0.0, false, 2),
  ('בקבוק (500 מ"ל)', 'Bottle (500ml)', 500.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [BEVERAGE] Black Coffee
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('קפה שחור', 'Black Coffee', 'beverage', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס (240 מ"ל)'::text, '1 cup (240ml)'::text, 240.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 מ"ל', '100ml', 100.0, 0.0, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [BEVERAGE] Herbal Tea
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('תה צמחים', 'Herbal Tea', 'beverage', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס (240 מ"ל)'::text, '1 cup (240ml)'::text, 240.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 מ"ל', '100ml', 100.0, 0.0, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [BEVERAGE] Black / Green Tea
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('תה שחור / ירוק', 'Black / Green Tea', 'beverage', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס (240 מ"ל)'::text, '1 cup (240ml)'::text, 240.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 מ"ל', '100ml', 100.0, 0.0, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [BEVERAGE] Diet Cola
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('קולה דיאט', 'Diet Cola', 'beverage', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס (240 מ"ל)'::text, '1 cup (240ml)'::text, 240.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 מ"ל', '100ml', 100.0, 0.0, 0.0, false, 2),
  ('פחית (330 מ"ל)', 'Can (330ml)', 330.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [BEVERAGE] Sparkling Water / Soda Water
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('סודה / מים מוגזים', 'Sparkling Water / Soda Water', 'beverage', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס (240 מ"ל)'::text, '1 cup (240ml)'::text, 240.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 מ"ל', '100ml', 100.0, 0.0, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [BEVERAGE] Americano (No Milk)
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('אמריקנו (ללא חלב)', 'Americano (No Milk)', 'beverage', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס (240 מ"ל)'::text, '1 cup (240ml)'::text, 240.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 מ"ל', '100ml', 100.0, 0.0, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [BEVERAGE] Fresh Orange Juice
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('מיץ תפוזים טבעי', 'Fresh Orange Juice', 'beverage', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס (240 מ"ל)'::text, '1 cup (240ml)'::text, 240.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 מ"ל', '100ml', 100.0, 0.5, 0.0, false, 2),
  ('כוס קטנה (150 מ"ל)', 'Small glass (150ml)', 150.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [BEVERAGE] Apple Juice
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('מיץ תפוחים', 'Apple Juice', 'beverage', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס (240 מ"ל)'::text, '1 cup (240ml)'::text, 240.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 מ"ל', '100ml', 100.0, 0.5, 0.0, false, 2),
  ('כוס קטנה (150 מ"ל)', 'Small glass (150ml)', 150.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [BEVERAGE] Pomegranate Juice
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('מיץ רימונים', 'Pomegranate Juice', 'beverage', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס (240 מ"ל)'::text, '1 cup (240ml)'::text, 240.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 מ"ל', '100ml', 100.0, 0.5, 0.0, false, 2),
  ('כוס קטנה (150 מ"ל)', 'Small glass (150ml)', 150.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [BEVERAGE] Oat Milk
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('חלב שיבולת שועל', 'Oat Milk', 'beverage', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס (240 מ"ל)'::text, '1 cup (240ml)'::text, 240.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 מ"ל', '100ml', 100.0, 0.5, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [BEVERAGE] Coconut Water
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('מי קוקוס', 'Coconut Water', 'beverage', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס (240 מ"ל)'::text, '1 cup (240ml)'::text, 240.0::numeric, 0.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 מ"ל', '100ml', 100.0, 0.5, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [BEVERAGE] Homemade Lemonade (with Sugar)
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('לימונדה ביתית (עם סוכר)', 'Homemade Lemonade (with Sugar)', 'beverage', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס (240 מ"ל)'::text, '1 cup (240ml)'::text, 240.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 מ"ל', '100ml', 100.0, 0.0, 0.5, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [BEVERAGE] Fruit Smoothie
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('סמוזי פירות', 'Fruit Smoothie', 'beverage', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס (240 מ"ל)'::text, '1 cup (240ml)'::text, 240.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 מ"ל', '100ml', 100.0, 0.5, 0.0, false, 2),
  ('כוס גדולה (350 מ"ל)', 'Large glass (350ml)', 350.0, 2.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [BEVERAGE] Regular Cola
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('קולה רגילה', 'Regular Cola', 'beverage', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס (240 מ"ל)'::text, '1 cup (240ml)'::text, 240.0::numeric, 0.0::numeric, 1.5::numeric, true::boolean, 1::integer),
  ('100 מ"ל', '100ml', 100.0, 0.0, 0.5, false, 2),
  ('פחית (330 מ"ל)', 'Can (330ml)', 330.0, 0.0, 2.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [BEVERAGE] Grape Juice
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('מיץ ענבים', 'Grape Juice', 'beverage', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס (240 מ"ל)'::text, '1 cup (240ml)'::text, 240.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 מ"ל', '100ml', 100.0, 0.5, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [BEVERAGE] Concentrated Fruit Juice (Diluted)
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('מיץ פירות מרוכז (מדולל)', 'Concentrated Fruit Juice (Diluted)', 'beverage', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס (240 מ"ל)'::text, '1 cup (240ml)'::text, 240.0::numeric, 0.0::numeric, 1.5::numeric, true::boolean, 1::integer),
  ('100 מ"ל', '100ml', 100.0, 0.0, 0.5, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [BEVERAGE] Unsweetened Almond Milk
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('חלב שקדים ללא סוכר', 'Unsweetened Almond Milk', 'beverage', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס (240 מ"ל)'::text, '1 cup (240ml)'::text, 240.0::numeric, 0.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 מ"ל', '100ml', 100.0, 0.5, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [BEVERAGE] Soy Milk (Beverage)
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('חלב סויה', 'Soy Milk (Beverage)', 'beverage', 'yellow', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס (~240 מ"ל)'::text, '1 cup (~240ml)'::text, 240.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 מ"ל', '100ml', 100.0, 0.5, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [BEVERAGE] Almond Milk (Beverage)
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('חלב שקדים', 'Almond Milk (Beverage)', 'beverage', 'yellow', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס (~240 מ"ל)'::text, '1 cup (~240ml)'::text, 240.0::numeric, 0.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 מ"ל', '100ml', 100.0, 0.5, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- ============================================================
-- SNACK (30 foods)
-- ============================================================

-- [SNACK] Bamba
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('במבה', 'Bamba', 'snack', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('שקית אישית (~25 גרם)'::text, 'Single bag (~25g)'::text, 25.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.0, 4.0, false, 2),
  ('חצי שקית (~50 גרם)', 'Half bag (~50g)', 50.0, 0.0, 2.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [SNACK] Potato Chips (Tapuchips)
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('חטיף תפוצ''יפס', 'Potato Chips (Tapuchips)', 'snack', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (~30 גרם)'::text, 'Portion (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.0, 3.5, false, 2),
  ('שקית אישית (~50 גרם)', 'Single bag (~50g)', 50.0, 0.0, 2.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [SNACK] Pretzels (Beigale)
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בייגלה', 'Pretzels (Beigale)', 'snack', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (~30 גרם)'::text, 'Portion (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.0, 3.5, false, 2),
  ('חצי שקית (~50 גרם)', 'Half bag (~50g)', 50.0, 0.0, 2.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [SNACK] Bissli
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('ביסלי', 'Bissli', 'snack', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('שקית אישית (~30 גרם)'::text, 'Single bag (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.0, 3.5, false, 2),
  ('חצי שקית (~50 גרם)', 'Half bag (~50g)', 50.0, 0.0, 2.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [SNACK] Milk Chocolate
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שוקולד חלב', 'Milk Chocolate', 'snack', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('שורה (~25 גרם)'::text, '1 row (~25g)'::text, 25.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.0, 4.0, false, 2),
  ('חצי טבלה (~50 גרם)', 'Half bar (~50g)', 50.0, 0.0, 2.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [SNACK] Butter Cookies
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('עוגיות חמאה', 'Butter Cookies', 'snack', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('2 עוגיות (~30 גרם)'::text, '2 cookies (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.0, 3.5, false, 2),
  ('4 עוגיות (~60 גרם)', '4 cookies (~60g)', 60.0, 0.0, 2.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [SNACK] Chocolate Chip Cookies
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('עוגיות שוקוצ''יפס', 'Chocolate Chip Cookies', 'snack', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('עוגייה אחת (~30 גרם)'::text, '1 cookie (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.0, 3.5, false, 2),
  ('2 עוגיות (~60 גרם)', '2 cookies (~60g)', 60.0, 0.0, 2.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [SNACK] Chocolate Coated Wafer
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('וופל מצופה שוקולד', 'Chocolate Coated Wafer', 'snack', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('יחידה (~25 גרם)'::text, '1 wafer (~25g)'::text, 25.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.0, 4.0, false, 2),
  ('2 יחידות (~50 גרם)', '2 wafers (~50g)', 50.0, 0.0, 2.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [SNACK] Krembo
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('חטיף קרמבו', 'Krembo', 'snack', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('יחידה אחת (~40 גרם)'::text, '1 Krembo (~40g)'::text, 40.0::numeric, 0.0::numeric, 1.5::numeric, true::boolean, 1::integer),
  ('2 יחידות (~80 גרם)', '2 Krembos (~80g)', 80.0, 0.0, 3.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [SNACK] Granola Energy Bar
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('חטיף אנרגיה (גרנולה בר)', 'Granola Energy Bar', 'snack', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('חטיף אחד (~30 גרם)'::text, '1 bar (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.0, 3.5, false, 2),
  ('2 חטיפים (~60 גרם)', '2 bars (~60g)', 60.0, 0.0, 2.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [SNACK] Dark Chocolate
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שוקולד מריר', 'Dark Chocolate', 'snack', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('שורה (~25 גרם)'::text, '1 row (~25g)'::text, 25.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 4.0, 0.0, false, 2),
  ('חצי טבלה (~50 גרם)', 'Half bar (~50g)', 50.0, 2.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [SNACK] Halva
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('חלווה', 'Halva', 'snack', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('פרוסה (~30 גרם)'::text, '1 slice (~30g)'::text, 30.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 3.5, 0.0, false, 2),
  ('מנה קטנה (~15 גרם)', 'Small portion (~15g)', 15.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [SNACK] Mixed Nuts Snack
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('חטיף פיצוחים מעורב', 'Mixed Nuts Snack', 'snack', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('חופן (~30 גרם)'::text, 'Handful (~30g)'::text, 30.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 3.5, 0.0, false, 2),
  ('2 חפנים (~60 גרם)', '2 handfuls (~60g)', 60.0, 2.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [SNACK] Soup Almonds (Shkedei Marak)
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שקדי מרק', 'Soup Almonds (Shkedei Marak)', 'snack', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (~25 גרם)'::text, 'Portion (~25g)'::text, 25.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.0, 4.0, false, 2),
  ('חצי מנה (~12 גרם)', 'Half portion (~12g)', 12.0, 0.0, 0.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [SNACK] Popcorn (Ready-Made)
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('פופקורן (מוכן)', 'Popcorn (Ready-Made)', 'snack', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (~25 גרם)'::text, 'Portion (~25g)'::text, 25.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.0, 4.0, false, 2),
  ('שקית קטנה (~50 גרם)', 'Small bag (~50g)', 50.0, 0.0, 2.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [SNACK] Sesame Tahini Bar
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('חטיף טחינה (סומסום)', 'Sesame Tahini Bar', 'snack', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('חטיף אחד (~30 גרם)'::text, '1 bar (~30g)'::text, 30.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 3.5, 0.0, false, 2),
  ('2 חטיפים (~60 גרם)', '2 bars (~60g)', 60.0, 2.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [SNACK] Chocolate Truffles
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('כדורי שוקולד (טראפלס)', 'Chocolate Truffles', 'snack', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('2 כדורים (~25 גרם)'::text, '2 truffles (~25g)'::text, 25.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.0, 4.0, false, 2),
  ('4 כדורים (~50 גרם)', '4 truffles (~50g)', 50.0, 0.0, 2.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [SNACK] Bamba (Peanut Puffs)
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('במבה', 'Bamba (Peanut Puffs)', 'snack', 'red', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('שקית קטנה (~30 גרם)'::text, 'Small bag (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.0, 3.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [SNACK] Bisli Grill
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('ביסלי גריל', 'Bisli Grill', 'snack', 'red', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('שקית קטנה (~30 גרם)'::text, 'Small bag (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.0, 3.5, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [SNACK] Bisli Onion
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('ביסלי בצל', 'Bisli Onion', 'snack', 'red', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('שקית קטנה (~30 גרם)'::text, 'Small bag (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.0, 3.5, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [SNACK] Elite Dark Chocolate 70%
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שוקולד עלית מריר 70%', 'Elite Dark Chocolate 70%', 'snack', 'red', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('2 קוביות (~25 גרם)'::text, '2 squares (~25g)'::text, 25.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g (full bar)', 100.0, 0.0, 2.5, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [SNACK] Elite Milk Chocolate
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שוקולד עלית חלב', 'Elite Milk Chocolate', 'snack', 'red', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('2 קוביות (~25 גרם)'::text, '2 squares (~25g)'::text, 25.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g (full bar)', 100.0, 0.0, 3.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [SNACK] Elite White Chocolate
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שוקולד עלית לבן', 'Elite White Chocolate', 'snack', 'red', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('2 קוביות (~25 גרם)'::text, '2 squares (~25g)'::text, 25.0::numeric, 0.0::numeric, 1.5::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g (full bar)', 100.0, 0.0, 3.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [SNACK] Chocolate Wafer (Elite)
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('ויפל שוקולד', 'Chocolate Wafer (Elite)', 'snack', 'red', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('2 יחידות (~25 גרם)'::text, '2 pieces (~25g)'::text, 25.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.0, 3.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [SNACK] Petit Beurre Biscuits (Elite)
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('פטי-בר', 'Petit Beurre Biscuits (Elite)', 'snack', 'red', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('3 ביסקוויטים (~30 גרם)'::text, '3 biscuits (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.0, 3.5, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [SNACK] Honey
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('דבש', 'Honey', 'snack', 'red', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כפית (~7 גרם)'::text, '1 tsp (~7g)'::text, 7.0::numeric, 0.0::numeric, 0.5::numeric, true::boolean, 1::integer),
  ('כף (~21 גרם)', '1 tbsp (~21g)', 21.0, 0.0, 1.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [SNACK] Silan (Date Syrup)
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('סילאן (דבש תמרים)', 'Silan (Date Syrup)', 'snack', 'red', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כפית (~7 גרם)'::text, '1 tsp (~7g)'::text, 7.0::numeric, 0.0::numeric, 0.5::numeric, true::boolean, 1::integer),
  ('כף (~21 גרם)', '1 tbsp (~21g)', 21.0, 0.0, 1.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [SNACK] Strawberry Jam
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('ריבת תות', 'Strawberry Jam', 'snack', 'red', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כף (~20 גרם)'::text, '1 tbsp (~20g)'::text, 20.0::numeric, 0.0::numeric, 0.5::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.0, 3.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [SNACK] Halva (Sesame Candy)
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('הלווה', 'Halva (Sesame Candy)', 'snack', 'yellow', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('פרוסה (~30 גרם)'::text, '1 slice (~30g)'::text, 30.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 5.0, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [SNACK] Teriyaki Sauce
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('רוטב טריאקי', 'Teriyaki Sauce', 'snack', 'red', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כף (~15 גרם)'::text, '1 tbsp (~15g)'::text, 15.0::numeric, 0.0::numeric, 0.5::numeric, true::boolean, 1::integer)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

COMMIT;
