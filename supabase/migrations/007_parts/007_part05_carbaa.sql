BEGIN;

-- ============================================================
-- CARB (242 foods)
-- ============================================================
-- [CARB] Amaranth grain, cooked
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('תבואת אמרנת, מבושלת', 'Amaranth grain, cooked', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~200 גרם)'::text, '1 cup cooked (~200g)'::text, 200.0::numeric, 0.0::numeric, 2.0::numeric, true::boolean, 1::integer),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.0, 0.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 1.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Amaranth grain, uncooked -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('תבואת אמרנת, לא מבושלת', 'Amaranth grain, uncooked', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~200 גרם)'::text, '1 cup cooked (~200g)'::text, 200.0::numeric, 0.0::numeric, 6.0::numeric, true::boolean, 1::integer),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 3.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Arrowroot flour -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('קמח אררוט', 'Arrowroot flour', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~200 גרם)'::text, '1 cup cooked (~200g)'::text, 200.0::numeric, 0.0::numeric, 8.0::numeric, true::boolean, 1::integer),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 4.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Barley flour or meal -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('קמח שעורה או דגניים', 'Barley flour or meal', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~200 גרם)'::text, '1 cup cooked (~200g)'::text, 200.0::numeric, 0.0::numeric, 6.0::numeric, true::boolean, 1::integer),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 3.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Barley malt flour -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('קמח מalt שעורה', 'Barley malt flour', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~200 גרם)'::text, '1 cup cooked (~200g)'::text, 200.0::numeric, 0.0::numeric, 7.0::numeric, true::boolean, 1::integer),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 3.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Barley, hulled -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שעורה, קלופה', 'Barley, hulled', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~200 גרם)'::text, '1 cup cooked (~200g)'::text, 200.0::numeric, 0.0::numeric, 6.0::numeric, true::boolean, 1::integer),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 3.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Barley, pearled, cooked
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שעורה, מלוטשת, מבושלת', 'Barley, pearled, cooked', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~200 גרם)'::text, '1 cup cooked (~200g)'::text, 200.0::numeric, 0.0::numeric, 2.0::numeric, true::boolean, 1::integer),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.0, 0.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 1.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Barley, pearled, raw -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שעורה, מלוטשת, גולמית', 'Barley, pearled, raw', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~200 גרם)'::text, '1 cup cooked (~200g)'::text, 200.0::numeric, 0.0::numeric, 6.0::numeric, true::boolean, 1::integer),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 3.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Buckwheat -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('קווס', 'Buckwheat', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~200 גרם)'::text, '1 cup cooked (~200g)'::text, 200.0::numeric, 0.0::numeric, 6.0::numeric, true::boolean, 1::integer),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 3.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Buckwheat flour, whole-groat -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('קמח קווס, תבואה שלמה', 'Buckwheat flour, whole-groat', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~200 גרם)'::text, '1 cup cooked (~200g)'::text, 200.0::numeric, 0.0::numeric, 6.0::numeric, true::boolean, 1::integer),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 3.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Buckwheat groats, roasted, cooked
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גרגרי קווס, קלויים, מבושלים', 'Buckwheat groats, roasted, cooked', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~200 גרם)'::text, '1 cup cooked (~200g)'::text, 200.0::numeric, 0.0::numeric, 2.0::numeric, true::boolean, 1::integer),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.0, 0.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 1.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Buckwheat groats, roasted, dry -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גרגרי קווס, קלויים, יבשים', 'Buckwheat groats, roasted, dry', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~200 גרם)'::text, '1 cup cooked (~200g)'::text, 200.0::numeric, 0.0::numeric, 6.0::numeric, true::boolean, 1::integer),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 3.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Bulgur, cooked
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בורגול, מבושל', 'Bulgur, cooked', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~200 גרם)'::text, '1 cup cooked (~200g)'::text, 200.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Bulgur, dry -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בורגול, יבש', 'Bulgur, dry', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~200 גרם)'::text, '1 cup cooked (~200g)'::text, 200.0::numeric, 0.0::numeric, 6.0::numeric, true::boolean, 1::integer),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 3.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Corn bran, crude
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('קליפות תירס, גולמיות', 'Corn bran, crude', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~200 גרם)'::text, '1 cup cooked (~200g)'::text, 200.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Corn flour, masa, enriched, white -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('קמח תירס, מסה, מועשר, לבן', 'Corn flour, masa, enriched, white', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~200 גרם)'::text, '1 cup cooked (~200g)'::text, 200.0::numeric, 0.0::numeric, 7.0::numeric, true::boolean, 1::integer),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 3.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Corn flour, masa, unenriched, white -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('קמח תירס, מסה, לא מועשר, לבן', 'Corn flour, masa, unenriched, white', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~200 גרם)'::text, '1 cup cooked (~200g)'::text, 200.0::numeric, 0.0::numeric, 7.0::numeric, true::boolean, 1::integer),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 3.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Corn flour, whole-grain, blue (harina de maiz morado) -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('קמח תירס, תבואה שלמה, סגול', 'Corn flour, whole-grain, blue (harina de maiz morado)', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~200 גרם)'::text, '1 cup cooked (~200g)'::text, 200.0::numeric, 0.0::numeric, 7.0::numeric, true::boolean, 1::integer),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 3.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Corn flour, whole-grain, white -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('קמח תירס, תבואה שלמה, לבן', 'Corn flour, whole-grain, white', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~200 גרם)'::text, '1 cup cooked (~200g)'::text, 200.0::numeric, 0.0::numeric, 7.0::numeric, true::boolean, 1::integer),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 3.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Corn flour, whole-grain, yellow -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('קמח תירס, תבואה שלמה, צהוב', 'Corn flour, whole-grain, yellow', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~200 גרם)'::text, '1 cup cooked (~200g)'::text, 200.0::numeric, 0.0::numeric, 7.0::numeric, true::boolean, 1::integer),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 3.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Corn flour, yellow, degermed, unenriched -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('קמח תירס, צהוב, ללא עוברים, לא מועשר', 'Corn flour, yellow, degermed, unenriched', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~200 גרם)'::text, '1 cup cooked (~200g)'::text, 200.0::numeric, 0.0::numeric, 8.0::numeric, true::boolean, 1::integer),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 4.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Corn flour, yellow, masa, enriched -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('קמח תירס, צהוב, מסה, מועשר', 'Corn flour, yellow, masa, enriched', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~200 גרם)'::text, '1 cup cooked (~200g)'::text, 200.0::numeric, 0.0::numeric, 7.0::numeric, true::boolean, 1::integer),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 3.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Corn grain, white -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('תירס, לבן', 'Corn grain, white', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~200 גרם)'::text, '1 cup cooked (~200g)'::text, 200.0::numeric, 0.0::numeric, 7.0::numeric, true::boolean, 1::integer),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 3.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Corn grain, yellow -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('תירס, צהוב', 'Corn grain, yellow', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~200 גרם)'::text, '1 cup cooked (~200g)'::text, 200.0::numeric, 0.0::numeric, 7.0::numeric, true::boolean, 1::integer),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 3.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Cornmeal, degermed, enriched, white -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('קמח תירס, ללא עוברים, מועשר, לבן', 'Cornmeal, degermed, enriched, white', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~200 גרם)'::text, '1 cup cooked (~200g)'::text, 200.0::numeric, 0.0::numeric, 8.0::numeric, true::boolean, 1::integer),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 4.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Cornmeal, degermed, enriched, yellow -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('קמח תירס, ללא עוברים, מועשר, צהוב', 'Cornmeal, degermed, enriched, yellow', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~200 גרם)'::text, '1 cup cooked (~200g)'::text, 200.0::numeric, 0.0::numeric, 8.0::numeric, true::boolean, 1::integer),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 4.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Cornmeal, degermed, unenriched, white -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('קמח תירס, ללא עוברים, לא מועשר, לבן', 'Cornmeal, degermed, unenriched, white', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~200 גרם)'::text, '1 cup cooked (~200g)'::text, 200.0::numeric, 0.0::numeric, 8.0::numeric, true::boolean, 1::integer),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 4.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Cornmeal, degermed, unenriched, yellow -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('קמח תירס, ללא עוברים, לא מועשר, צהוב', 'Cornmeal, degermed, unenriched, yellow', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~200 גרם)'::text, '1 cup cooked (~200g)'::text, 200.0::numeric, 0.0::numeric, 8.0::numeric, true::boolean, 1::integer),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 4.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Cornmeal, white, self-rising, bolted, plain, enriched -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('קמח תירס, לבן, עם שמיר, חלול, מועשר', 'Cornmeal, white, self-rising, bolted, plain, enriched', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~200 גרם)'::text, '1 cup cooked (~200g)'::text, 200.0::numeric, 0.0::numeric, 6.0::numeric, true::boolean, 1::integer),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 3.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Cornmeal, white, self-rising, bolted, with wheat flour added, enriched -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('קמח תירס, לבן, עם שמיר, חלול, עם קמח חיטה, מועשר', 'Cornmeal, white, self-rising, bolted, with wheat flour added, enriched', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~200 גרם)'::text, '1 cup cooked (~200g)'::text, 200.0::numeric, 0.0::numeric, 7.0::numeric, true::boolean, 1::integer),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 3.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Cornmeal, white, self-rising, degermed, enriched -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('קמח תירס, לבן, עם שמיר, ללא עוברים, מועשר', 'Cornmeal, white, self-rising, degermed, enriched', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~200 גרם)'::text, '1 cup cooked (~200g)'::text, 200.0::numeric, 0.0::numeric, 7.0::numeric, true::boolean, 1::integer),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 3.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Cornmeal, whole-grain, white -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('קמח תירס, תבואה שלמה, לבן', 'Cornmeal, whole-grain, white', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~200 גרם)'::text, '1 cup cooked (~200g)'::text, 200.0::numeric, 0.0::numeric, 7.0::numeric, true::boolean, 1::integer),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 3.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Cornmeal, whole-grain, yellow -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('קמח תירס, תבואה שלמה, צהוב', 'Cornmeal, whole-grain, yellow', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~200 גרם)'::text, '1 cup cooked (~200g)'::text, 200.0::numeric, 0.0::numeric, 7.0::numeric, true::boolean, 1::integer),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 3.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Cornmeal, yellow, self-rising, bolted, plain, enriched -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('קמח תירס, צהוב, עם שמיר, חלול, מועשר', 'Cornmeal, yellow, self-rising, bolted, plain, enriched', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~200 גרם)'::text, '1 cup cooked (~200g)'::text, 200.0::numeric, 0.0::numeric, 6.0::numeric, true::boolean, 1::integer),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 3.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Cornmeal, yellow, self-rising, bolted, with wheat flour added, enriched -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('קמח תירס, צהוב, עם שמיר, חלול, עם קמח חיטה, מועשר', 'Cornmeal, yellow, self-rising, bolted, with wheat flour added, enriched', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~200 גרם)'::text, '1 cup cooked (~200g)'::text, 200.0::numeric, 0.0::numeric, 7.0::numeric, true::boolean, 1::integer),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 3.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Cornmeal, yellow, self-rising, degermed, enriched -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('קמח תירס צהוב, עצמי התרוממות, מנוקה', 'Cornmeal, yellow, self-rising, degermed, enriched', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~200 גרם)'::text, '1 cup cooked (~200g)'::text, 200.0::numeric, 0.0::numeric, 7.0::numeric, true::boolean, 1::integer),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 3.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Cornstarch -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('עמילן תירס', 'Cornstarch', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~200 גרם)'::text, '1 cup cooked (~200g)'::text, 200.0::numeric, 0.0::numeric, 9.0::numeric, true::boolean, 1::integer),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.0, 1.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 4.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Couscous, cooked
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('קוסקוס מבושל', 'Couscous, cooked', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~200 גרם)'::text, '1 cup cooked (~200g)'::text, 200.0::numeric, 0.0::numeric, 2.0::numeric, true::boolean, 1::integer),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.0, 0.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 1.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Couscous, dry -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('קוסקוס גולמי', 'Couscous, dry', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~200 גרם)'::text, '1 cup cooked (~200g)'::text, 200.0::numeric, 0.0::numeric, 7.0::numeric, true::boolean, 1::integer),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 3.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Flour, bread, white, enriched, unbleached
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('קמח לחם לבן, מועשר, לא מלובן', 'Flour, bread, white, enriched, unbleached', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('פרוסה (~30 גרם)'::text, '1 slice (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('2 פרוסות (~60 גרם)', '2 slices (~60g)', 60.0, 0.0, 2.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 3.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Flour, corn, yellow, fine meal, enriched -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('קמח תירס צהוב, עשיר', 'Flour, corn, yellow, fine meal, enriched', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~200 גרם)'::text, '1 cup cooked (~200g)'::text, 200.0::numeric, 0.0::numeric, 8.0::numeric, true::boolean, 1::integer),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 4.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Flour, pastry, unenriched, unbleached -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('קמח פסטה, לא מועשר, לא מלובן', 'Flour, pastry, unenriched, unbleached', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~200 גרם)'::text, '1 cup cooked (~200g)'::text, 200.0::numeric, 0.0::numeric, 8.0::numeric, true::boolean, 1::integer),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 4.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Flour, rice, brown -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('קמח אורז חום', 'Flour, rice, brown', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~200 גרם)'::text, '1 cup cooked (~200g)'::text, 200.0::numeric, 0.0::numeric, 8.0::numeric, true::boolean, 1::integer),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 4.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Flour, rice, glutinous -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('קמח אורז דבק', 'Flour, rice, glutinous', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~200 גרם)'::text, '1 cup cooked (~200g)'::text, 200.0::numeric, 0.0::numeric, 8.0::numeric, true::boolean, 1::integer),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 4.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Flour, rice, white, unenriched -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('קמח אורז לבן, לא מועשר', 'Flour, rice, white, unenriched', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~200 גרם)'::text, '1 cup cooked (~200g)'::text, 200.0::numeric, 0.0::numeric, 8.0::numeric, true::boolean, 1::integer),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 4.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Flour, wheat, all-purpose, enriched, bleached -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('קמח חיטה רב-תכליתי, מועשר, מלובן', 'Flour, wheat, all-purpose, enriched, bleached', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~200 גרם)'::text, '1 cup cooked (~200g)'::text, 200.0::numeric, 0.0::numeric, 8.0::numeric, true::boolean, 1::integer),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 4.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Flour, wheat, all-purpose, enriched, unbleached -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('קמח חיטה רב-תכליתי, מועשר, לא מלובן', 'Flour, wheat, all-purpose, enriched, unbleached', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~200 גרם)'::text, '1 cup cooked (~200g)'::text, 200.0::numeric, 0.0::numeric, 7.0::numeric, true::boolean, 1::integer),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 3.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Flour, wheat, all-purpose, unenriched, unbleached -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('קמח חיטה רב-תכליתי, לא מועשר, לא מלובן', 'Flour, wheat, all-purpose, unenriched, unbleached', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~200 גרם)'::text, '1 cup cooked (~200g)'::text, 200.0::numeric, 0.0::numeric, 7.0::numeric, true::boolean, 1::integer),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 3.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Flour, whole wheat, unenriched -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('קמח חיטה מלא, לא מועשר', 'Flour, whole wheat, unenriched', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~200 גרם)'::text, '1 cup cooked (~200g)'::text, 200.0::numeric, 0.0::numeric, 6.0::numeric, true::boolean, 1::integer),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 3.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Hominy, canned, white
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('תירס מחומוס משומר, לבן', 'Hominy, canned, white', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~200 גרם)'::text, '1 cup cooked (~200g)'::text, 200.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Hominy, canned, yellow
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('תירס מחומוס משומר, צהוב', 'Hominy, canned, yellow', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~200 גרם)'::text, '1 cup cooked (~200g)'::text, 200.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Macaroni, vegetable, enriched, cooked
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('מקרוני ירקות, מועשר, מבושל', 'Macaroni, vegetable, enriched, cooked', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~200 גרם)'::text, '1 cup cooked (~200g)'::text, 200.0::numeric, 0.0::numeric, 2.0::numeric, true::boolean, 1::integer),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.0, 0.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 1.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Macaroni, vegetable, enriched, dry -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('מקרוני ירקות, מועשר, גולמי', 'Macaroni, vegetable, enriched, dry', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~200 גרם)'::text, '1 cup cooked (~200g)'::text, 200.0::numeric, 0.0::numeric, 7.0::numeric, true::boolean, 1::integer),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 3.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Millet flour -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('קמח דורה', 'Millet flour', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~200 גרם)'::text, '1 cup cooked (~200g)'::text, 200.0::numeric, 0.0::numeric, 7.0::numeric, true::boolean, 1::integer),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 3.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Millet, cooked
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('דורה מבושלת', 'Millet, cooked', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~200 גרם)'::text, '1 cup cooked (~200g)'::text, 200.0::numeric, 0.0::numeric, 2.0::numeric, true::boolean, 1::integer),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.0, 0.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 1.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Millet, raw -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('דורה גולמית', 'Millet, raw', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~200 גרם)'::text, '1 cup cooked (~200g)'::text, 200.0::numeric, 0.0::numeric, 6.0::numeric, true::boolean, 1::integer),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 3.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Noodles, chinese, chow mein -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('נודלס סיני, צ''או מיין', 'Noodles, chinese, chow mein', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~200 גרם)'::text, '1 cup cooked (~200g)'::text, 200.0::numeric, 0.0::numeric, 6.0::numeric, true::boolean, 1::integer),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 3.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Noodles, egg, cooked, enriched, with added salt
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('נודלס ביצה, מבושל, מועשר, עם מלח', 'Noodles, egg, cooked, enriched, with added salt', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~200 גרם)'::text, '1 cup cooked (~200g)'::text, 200.0::numeric, 0.0::numeric, 2.0::numeric, true::boolean, 1::integer),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.0, 0.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 1.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Noodles, egg, cooked, unenriched, with added salt
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('נודלס ביצה, מבושל, לא מועשר, עם מלח', 'Noodles, egg, cooked, unenriched, with added salt', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~200 גרם)'::text, '1 cup cooked (~200g)'::text, 200.0::numeric, 0.0::numeric, 2.0::numeric, true::boolean, 1::integer),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.0, 0.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 1.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Noodles, egg, dry, enriched -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('נודלס ביצה, גולמי, מועשר', 'Noodles, egg, dry, enriched', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~200 גרם)'::text, '1 cup cooked (~200g)'::text, 200.0::numeric, 0.0::numeric, 7.0::numeric, true::boolean, 1::integer),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 3.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Noodles, egg, dry, unenriched -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('נודלס ביצה, גולמי, לא מועשר', 'Noodles, egg, dry, unenriched', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~200 גרם)'::text, '1 cup cooked (~200g)'::text, 200.0::numeric, 0.0::numeric, 7.0::numeric, true::boolean, 1::integer),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 3.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Noodles, egg, enriched, cooked
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('נודלס ביצה, מועשר, מבושל', 'Noodles, egg, enriched, cooked', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~200 גרם)'::text, '1 cup cooked (~200g)'::text, 200.0::numeric, 0.0::numeric, 2.0::numeric, true::boolean, 1::integer),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.0, 0.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 1.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Noodles, egg, spinach, enriched, cooked
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('נודלס ביצה ותרבוץ, מועשר, מבושל', 'Noodles, egg, spinach, enriched, cooked', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~200 גרם)'::text, '1 cup cooked (~200g)'::text, 200.0::numeric, 0.0::numeric, 2.0::numeric, true::boolean, 1::integer),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.0, 0.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 1.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Noodles, egg, spinach, enriched, dry -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('נודלס ביצה ותרבוץ, מועשר, גולמי', 'Noodles, egg, spinach, enriched, dry', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~200 גרם)'::text, '1 cup cooked (~200g)'::text, 200.0::numeric, 0.0::numeric, 6.0::numeric, true::boolean, 1::integer),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 3.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Noodles, egg, unenriched, cooked, without added salt
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('נודלס ביצה, לא מועשר, מבושל, ללא מלח', 'Noodles, egg, unenriched, cooked, without added salt', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~200 גרם)'::text, '1 cup cooked (~200g)'::text, 200.0::numeric, 0.0::numeric, 2.0::numeric, true::boolean, 1::integer),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.0, 0.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 1.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Noodles, flat, crunchy, Chinese restaurant -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('נודלס שטוח פריך סגנון סיני', 'Noodles, flat, crunchy, Chinese restaurant', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~200 גרם)'::text, '1 cup cooked (~200g)'::text, 200.0::numeric, 0.0::numeric, 5.0::numeric, true::boolean, 1::integer),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 2.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Noodles, japanese, soba, cooked
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('סובה יפני מבושל', 'Noodles, japanese, soba, cooked', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~200 גרם)'::text, '1 cup cooked (~200g)'::text, 200.0::numeric, 0.0::numeric, 2.0::numeric, true::boolean, 1::integer),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.0, 0.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 1.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Noodles, japanese, soba, dry -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('סובה יפני יבש', 'Noodles, japanese, soba, dry', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~200 גרם)'::text, '1 cup cooked (~200g)'::text, 200.0::numeric, 0.0::numeric, 7.0::numeric, true::boolean, 1::integer),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 3.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Noodles, japanese, somen, cooked
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('סומן יפני מבושל', 'Noodles, japanese, somen, cooked', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~200 גרם)'::text, '1 cup cooked (~200g)'::text, 200.0::numeric, 0.0::numeric, 3.0::numeric, true::boolean, 1::integer),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.0, 0.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 1.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Noodles, japanese, somen, dry -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('סומן יפני יבש', 'Noodles, japanese, somen, dry', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~200 גרם)'::text, '1 cup cooked (~200g)'::text, 200.0::numeric, 0.0::numeric, 7.0::numeric, true::boolean, 1::integer),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 3.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Oat bran, cooked
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('קמח שיבולת שועל מבושל', 'Oat bran, cooked', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~200 גרם)'::text, '1 cup cooked (~200g)'::text, 200.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Oat bran, raw -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('קמח שיבולת שועל גולמי', 'Oat bran, raw', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~200 גרם)'::text, '1 cup cooked (~200g)'::text, 200.0::numeric, 0.0::numeric, 8.0::numeric, true::boolean, 1::integer),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 4.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Oat flour, partially debranned -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('קמח שיבולת שועל חלקית קלוף', 'Oat flour, partially debranned', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~200 גרם)'::text, '1 cup cooked (~200g)'::text, 200.0::numeric, 0.0::numeric, 6.0::numeric, true::boolean, 1::integer),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 3.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Oats (Includes foods for USDA's Food Distribution Program)
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שיבולת שועל', 'Oats (Includes foods for USDA''s Food Distribution Program)', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('קערה (~40 גרם)'::text, '1 bowl (~40g)'::text, 40.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('3 כפות (~25 גרם)', '3 tbsp (~25g)', 25.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 3.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Pasta, cooked, enriched, with added salt
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('פסטה מבושלת מועשרת עם מלח', 'Pasta, cooked, enriched, with added salt', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~200 גרם)'::text, '1 cup cooked (~200g)'::text, 200.0::numeric, 0.0::numeric, 3.0::numeric, true::boolean, 1::integer),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.0, 0.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 1.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Pasta, cooked, enriched, without added salt
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('פסטה מבושלת מועשרת ללא מלח', 'Pasta, cooked, enriched, without added salt', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~200 גרם)'::text, '1 cup cooked (~200g)'::text, 200.0::numeric, 0.0::numeric, 3.0::numeric, true::boolean, 1::integer),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.0, 0.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 1.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Pasta, cooked, unenriched, with added salt
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('פסטה מבושלת לא מועשרת עם מלח', 'Pasta, cooked, unenriched, with added salt', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~200 גרם)'::text, '1 cup cooked (~200g)'::text, 200.0::numeric, 0.0::numeric, 3.0::numeric, true::boolean, 1::integer),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.0, 0.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 1.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Pasta, cooked, unenriched, without added salt
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('פסטה מבושלת לא מועשרת ללא מלח', 'Pasta, cooked, unenriched, without added salt', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~200 גרם)'::text, '1 cup cooked (~200g)'::text, 200.0::numeric, 0.0::numeric, 3.0::numeric, true::boolean, 1::integer),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.0, 0.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 1.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Pasta, dry, enriched -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('פסטה יבשה מועשרת', 'Pasta, dry, enriched', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~200 גרם)'::text, '1 cup cooked (~200g)'::text, 200.0::numeric, 0.0::numeric, 7.0::numeric, true::boolean, 1::integer),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 3.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

COMMIT;
