BEGIN;

-- ============================================================
-- FAT (107 foods)
-- ============================================================
-- [FAT] Nuts, acorn flour, full fat
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('קמח אלון, שומן מלא', 'Nuts, acorn flour, full fat', 'fat', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('חופן (~30 גרם)'::text, '1 handful (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('כף (~15 גרם)', '1 tbsp (~15g)', 15.0, 0.0, 0.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 2.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FAT] Nuts, acorns, dried
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('אלון, מיובש', 'Nuts, acorns, dried', 'fat', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('חופן (~30 גרם)'::text, '1 handful (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('כף (~15 גרם)', '1 tbsp (~15g)', 15.0, 0.0, 0.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 2.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FAT] Nuts, acorns, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('אלון, גולמי', 'Nuts, acorns, raw', 'fat', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('חופן (~30 גרם)'::text, '1 handful (~30g)'::text, 30.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כף (~15 גרם)', '1 tbsp (~15g)', 15.0, 0.5, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 4.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FAT] Nuts, almond butter, plain, with salt added
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('חמאת שקדים, רגילה, מלוחה', 'Nuts, almond butter, plain, with salt added', 'fat', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('חופן (~30 גרם)'::text, '1 handful (~30g)'::text, 30.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כף (~15 גרם)', '1 tbsp (~15g)', 15.0, 1.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 6.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FAT] Nuts, almond butter, plain, without salt added
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('חמאת שקדים, רגילה, ללא מלח', 'Nuts, almond butter, plain, without salt added', 'fat', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('חופן (~30 גרם)'::text, '1 handful (~30g)'::text, 30.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כף (~15 גרם)', '1 tbsp (~15g)', 15.0, 1.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 6.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FAT] Nuts, almond paste
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('משחת שקדים', 'Nuts, almond paste', 'fat', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('חופן (~30 גרם)'::text, '1 handful (~30g)'::text, 30.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כף (~15 גרם)', '1 tbsp (~15g)', 15.0, 0.5, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 4.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FAT] Nuts, almonds
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שקדים', 'Nuts, almonds', 'fat', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('חופן (~30 גרם)'::text, '1 handful (~30g)'::text, 30.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כף (~15 גרם)', '1 tbsp (~15g)', 15.0, 1.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 6.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FAT] Nuts, almonds, blanched
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שקדים, הורידו את הקליפה', 'Nuts, almonds, blanched', 'fat', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('חופן (~30 גרם)'::text, '1 handful (~30g)'::text, 30.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כף (~15 גרם)', '1 tbsp (~15g)', 15.0, 1.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 6.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FAT] Nuts, almonds, dry roasted, with salt added
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שקדים, קלוי יבש, מלוח', 'Nuts, almonds, dry roasted, with salt added', 'fat', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('חופן (~30 גרם)'::text, '1 handful (~30g)'::text, 30.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כף (~15 גרם)', '1 tbsp (~15g)', 15.0, 1.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 6.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FAT] Nuts, almonds, dry roasted, without salt added
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שקדים, קלוי יבש, ללא מלח', 'Nuts, almonds, dry roasted, without salt added', 'fat', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('חופן (~30 גרם)'::text, '1 handful (~30g)'::text, 30.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כף (~15 גרם)', '1 tbsp (~15g)', 15.0, 1.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 6.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FAT] Nuts, almonds, honey roasted, unblanched
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שקדים, קלוי בדבש, בקליפה', 'Nuts, almonds, honey roasted, unblanched', 'fat', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('חופן (~30 גרם)'::text, '1 handful (~30g)'::text, 30.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כף (~15 גרם)', '1 tbsp (~15g)', 15.0, 1.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 6.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FAT] Nuts, almonds, oil roasted, lightly salted
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שקדים, קלוי בשמן, מעט מלוח', 'Nuts, almonds, oil roasted, lightly salted', 'fat', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('חופן (~30 גרם)'::text, '1 handful (~30g)'::text, 30.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כף (~15 גרם)', '1 tbsp (~15g)', 15.0, 1.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 6.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FAT] Nuts, almonds, oil roasted, with salt added
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שקדים, קלוי בשמן, מלוח', 'Nuts, almonds, oil roasted, with salt added', 'fat', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('חופן (~30 גרם)'::text, '1 handful (~30g)'::text, 30.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כף (~15 גרם)', '1 tbsp (~15g)', 15.0, 1.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 6.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FAT] Nuts, almonds, oil roasted, with salt added, smoke flavor
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שקדים, קלוי בשמן, מלוח, טעם עשן', 'Nuts, almonds, oil roasted, with salt added, smoke flavor', 'fat', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('חופן (~30 גרם)'::text, '1 handful (~30g)'::text, 30.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כף (~15 גרם)', '1 tbsp (~15g)', 15.0, 1.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 6.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FAT] Nuts, almonds, oil roasted, without salt added
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שקדים, קלוי בשמן, ללא מלח', 'Nuts, almonds, oil roasted, without salt added', 'fat', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('חופן (~30 גרם)'::text, '1 handful (~30g)'::text, 30.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כף (~15 גרם)', '1 tbsp (~15g)', 15.0, 1.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 6.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FAT] Nuts, beechnuts, dried
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('אגוזי בוק, מיובשים', 'Nuts, beechnuts, dried', 'fat', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('חופן (~30 גרם)'::text, '1 handful (~30g)'::text, 30.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כף (~15 גרם)', '1 tbsp (~15g)', 15.0, 1.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 6.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FAT] Nuts, brazilnuts, dried, unblanched
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('אגוזי ברזיל, מיובשים, בקליפה', 'Nuts, brazilnuts, dried, unblanched', 'fat', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('חופן (~30 גרם)'::text, '1 handful (~30g)'::text, 30.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כף (~15 גרם)', '1 tbsp (~15g)', 15.0, 1.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 6.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FAT] Nuts, butternuts, dried
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('אגוזי חמאה, מיובשים', 'Nuts, butternuts, dried', 'fat', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('חופן (~30 גרם)'::text, '1 handful (~30g)'::text, 30.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כף (~15 גרם)', '1 tbsp (~15g)', 15.0, 1.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 6.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FAT] Nuts, cashew butter, plain, with salt added
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('חמאת קשיו, רגילה, מלוחה', 'Nuts, cashew butter, plain, with salt added', 'fat', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('חופן (~30 גרם)'::text, '1 handful (~30g)'::text, 30.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כף (~15 גרם)', '1 tbsp (~15g)', 15.0, 1.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 6.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FAT] Nuts, cashew butter, plain, without salt added
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('חמאת קשיו, רגילה, ללא מלח', 'Nuts, cashew butter, plain, without salt added', 'fat', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('חופן (~30 גרם)'::text, '1 handful (~30g)'::text, 30.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כף (~15 גרם)', '1 tbsp (~15g)', 15.0, 1.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 6.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FAT] Nuts, cashew nuts, dry roasted, with salt added
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('קשיו, קלוי יבש, מלוח', 'Nuts, cashew nuts, dry roasted, with salt added', 'fat', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('חופן (~30 גרם)'::text, '1 handful (~30g)'::text, 30.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כף (~15 גרם)', '1 tbsp (~15g)', 15.0, 1.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 5.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FAT] Nuts, cashew nuts, dry roasted, without salt added
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('קשיו, קלוי יבש, ללא מלח', 'Nuts, cashew nuts, dry roasted, without salt added', 'fat', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('חופן (~30 גרם)'::text, '1 handful (~30g)'::text, 30.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כף (~15 גרם)', '1 tbsp (~15g)', 15.0, 1.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 5.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FAT] Nuts, cashew nuts, oil roasted, with salt added
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('קשיו, קלוי בשמן, מלוח', 'Nuts, cashew nuts, oil roasted, with salt added', 'fat', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('חופן (~30 גרם)'::text, '1 handful (~30g)'::text, 30.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כף (~15 גרם)', '1 tbsp (~15g)', 15.0, 1.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 6.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FAT] Nuts, cashew nuts, oil roasted, without salt added
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('קשיו, קלוי בשמן, ללא מלח', 'Nuts, cashew nuts, oil roasted, without salt added', 'fat', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('חופן (~30 גרם)'::text, '1 handful (~30g)'::text, 30.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כף (~15 גרם)', '1 tbsp (~15g)', 15.0, 1.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 6.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FAT] Nuts, cashew nuts, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('קשיו, גולמי', 'Nuts, cashew nuts, raw', 'fat', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('חופן (~30 גרם)'::text, '1 handful (~30g)'::text, 30.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כף (~15 גרם)', '1 tbsp (~15g)', 15.0, 1.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 5.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FAT] Nuts, chestnuts, chinese, boiled and steamed
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('קסטנים סיניים, מבושלים ומאודים', 'Nuts, chestnuts, chinese, boiled and steamed', 'fat', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('חופן (~30 גרם)'::text, '1 handful (~30g)'::text, 30.0::numeric, 0.0::numeric, 0.5::numeric, true::boolean, 1::integer),
  ('כף (~15 גרם)', '1 tbsp (~15g)', 15.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 1.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FAT] Nuts, chestnuts, chinese, dried
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('אגוזי קסטנה סיניים, מיובשים', 'Nuts, chestnuts, chinese, dried', 'fat', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('חופן (~30 גרם)'::text, '1 handful (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('כף (~15 גרם)', '1 tbsp (~15g)', 15.0, 0.0, 0.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 4.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FAT] Nuts, chestnuts, chinese, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('אגוזי קסטנה סיניים, גולמיים', 'Nuts, chestnuts, chinese, raw', 'fat', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('חופן (~30 גרם)'::text, '1 handful (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('כף (~15 גרם)', '1 tbsp (~15g)', 15.0, 0.0, 0.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 2.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FAT] Nuts, chestnuts, chinese, roasted
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('אגוזי קסטנה סיניים, קלויים', 'Nuts, chestnuts, chinese, roasted', 'fat', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('חופן (~30 גרם)'::text, '1 handful (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('כף (~15 גרם)', '1 tbsp (~15g)', 15.0, 0.0, 0.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 2.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FAT] Nuts, chestnuts, european, boiled and steamed
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('אגוזי קסטנה אירופיים, מבושלים ומאודים', 'Nuts, chestnuts, european, boiled and steamed', 'fat', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('חופן (~30 גרם)'::text, '1 handful (~30g)'::text, 30.0::numeric, 0.0::numeric, 0.5::numeric, true::boolean, 1::integer),
  ('כף (~15 גרם)', '1 tbsp (~15g)', 15.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 1.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FAT] Nuts, chestnuts, european, dried, peeled
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('אגוזי קסטנה אירופיים, מיובשים, קלופים', 'Nuts, chestnuts, european, dried, peeled', 'fat', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('חופן (~30 גרם)'::text, '1 handful (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('כף (~15 גרם)', '1 tbsp (~15g)', 15.0, 0.0, 0.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 4.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FAT] Nuts, chestnuts, european, dried, unpeeled
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('אגוזי קסטנה אירופיים, מיובשים, לא קלופים', 'Nuts, chestnuts, european, dried, unpeeled', 'fat', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('חופן (~30 גרם)'::text, '1 handful (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('כף (~15 גרם)', '1 tbsp (~15g)', 15.0, 0.0, 0.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 3.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FAT] Nuts, chestnuts, european, raw, peeled
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('אגוזי קסטנה אירופיים, גולמיים, קלופים', 'Nuts, chestnuts, european, raw, peeled', 'fat', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('חופן (~30 גרם)'::text, '1 handful (~30g)'::text, 30.0::numeric, 0.0::numeric, 0.5::numeric, true::boolean, 1::integer),
  ('כף (~15 גרם)', '1 tbsp (~15g)', 15.0, 0.0, 0.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 2.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FAT] Nuts, chestnuts, european, raw, unpeeled
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('אגוזי קסטנה אירופיים, גולמיים, לא קלופים', 'Nuts, chestnuts, european, raw, unpeeled', 'fat', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('חופן (~30 גרם)'::text, '1 handful (~30g)'::text, 30.0::numeric, 0.0::numeric, 0.5::numeric, true::boolean, 1::integer),
  ('כף (~15 גרם)', '1 tbsp (~15g)', 15.0, 0.0, 0.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 2.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FAT] Nuts, chestnuts, european, roasted
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('אגוזי קסטנה אירופיים, קלויים', 'Nuts, chestnuts, european, roasted', 'fat', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('חופן (~30 גרם)'::text, '1 handful (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('כף (~15 גרם)', '1 tbsp (~15g)', 15.0, 0.0, 0.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 2.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FAT] Nuts, chestnuts, japanese, boiled and steamed -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('אגוזי קסטנה יפניים, מבושלים ומאודים', 'Nuts, chestnuts, japanese, boiled and steamed', 'fat', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('חופן (~30 גרם)'::text, '1 handful (~30g)'::text, 30.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כף (~15 גרם)', '1 tbsp (~15g)', 15.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FAT] Nuts, chestnuts, japanese, dried
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('אגוזי קסטנה יפניים, מיובשים', 'Nuts, chestnuts, japanese, dried', 'fat', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('חופן (~30 גרם)'::text, '1 handful (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('כף (~15 גרם)', '1 tbsp (~15g)', 15.0, 0.0, 0.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 4.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FAT] Nuts, chestnuts, japanese, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('אגוזי קסטנה יפניים, גולמיים', 'Nuts, chestnuts, japanese, raw', 'fat', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('חופן (~30 גרם)'::text, '1 handful (~30g)'::text, 30.0::numeric, 0.0::numeric, 0.5::numeric, true::boolean, 1::integer),
  ('כף (~15 גרם)', '1 tbsp (~15g)', 15.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 1.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FAT] Nuts, chestnuts, japanese, roasted
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('אגוזי קסטנה יפניים, קלויים', 'Nuts, chestnuts, japanese, roasted', 'fat', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('חופן (~30 גרם)'::text, '1 handful (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('כף (~15 גרם)', '1 tbsp (~15g)', 15.0, 0.0, 0.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 2.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FAT] Nuts, coconut cream, canned, sweetened
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שמנת קוקוס, משומרת בפחית, ממותקת', 'Nuts, coconut cream, canned, sweetened', 'fat', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('חופן (~30 גרם)'::text, '1 handful (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('כף (~15 גרם)', '1 tbsp (~15g)', 15.0, 0.0, 0.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 2.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FAT] Nuts, coconut cream, raw (liquid expressed from grated meat)
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שמנת קוקוס, גולמית', 'Nuts, coconut cream, raw (liquid expressed from grated meat)', 'fat', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('חופן (~30 גרם)'::text, '1 handful (~30g)'::text, 30.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כף (~15 גרם)', '1 tbsp (~15g)', 15.0, 0.5, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 3.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FAT] Nuts, coconut meat, dried (desiccated), creamed
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בשר קוקוס, מיובש, כריים', 'Nuts, coconut meat, dried (desiccated), creamed', 'fat', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('חופן (~30 גרם)'::text, '1 handful (~30g)'::text, 30.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כף (~15 גרם)', '1 tbsp (~15g)', 15.0, 1.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 7.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FAT] Nuts, coconut meat, dried (desiccated), not sweetened
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בשר קוקוס, מיובש, לא ממותק', 'Nuts, coconut meat, dried (desiccated), not sweetened', 'fat', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('חופן (~30 גרם)'::text, '1 handful (~30g)'::text, 30.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כף (~15 גרם)', '1 tbsp (~15g)', 15.0, 1.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 6.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FAT] Nuts, coconut meat, dried (desiccated), sweetened, flaked, canned
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בשר קוקוס, מיובש, ממותק, פתיתים, משומר בפחית', 'Nuts, coconut meat, dried (desiccated), sweetened, flaked, canned', 'fat', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('חופן (~30 גרם)'::text, '1 handful (~30g)'::text, 30.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כף (~15 גרם)', '1 tbsp (~15g)', 15.0, 0.5, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 4.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FAT] Nuts, coconut meat, dried (desiccated), sweetened, flaked, packaged
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בשר קוקוס, מיובש, ממותק, פתיתים, ארוז', 'Nuts, coconut meat, dried (desiccated), sweetened, flaked, packaged', 'fat', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('חופן (~30 גרם)'::text, '1 handful (~30g)'::text, 30.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כף (~15 גרם)', '1 tbsp (~15g)', 15.0, 0.5, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 4.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FAT] Nuts, coconut meat, dried (desiccated), sweetened, shredded
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בשר קוקוס, מיובש, ממותק, מקוצץ', 'Nuts, coconut meat, dried (desiccated), sweetened, shredded', 'fat', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('חופן (~30 גרם)'::text, '1 handful (~30g)'::text, 30.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כף (~15 גרם)', '1 tbsp (~15g)', 15.0, 1.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 5.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FAT] Nuts, coconut meat, dried (desiccated), toasted
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בשר קוקוס, מיובש, קלוי', 'Nuts, coconut meat, dried (desiccated), toasted', 'fat', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('חופן (~30 גרם)'::text, '1 handful (~30g)'::text, 30.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כף (~15 גרם)', '1 tbsp (~15g)', 15.0, 1.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 6.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FAT] Nuts, coconut meat, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בשר קוקוס, גולמי', 'Nuts, coconut meat, raw', 'fat', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('חופן (~30 גרם)'::text, '1 handful (~30g)'::text, 30.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כף (~15 גרם)', '1 tbsp (~15g)', 15.0, 0.5, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 3.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FAT] Nuts, coconut milk, canned (liquid expressed from grated meat and water)
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('חלב קוקוס, משומר בפחית', 'Nuts, coconut milk, canned (liquid expressed from grated meat and water)', 'fat', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('חופן (~30 גרם)'::text, '1 handful (~30g)'::text, 30.0::numeric, 0.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כף (~15 גרם)', '1 tbsp (~15g)', 15.0, 0.5, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 2.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FAT] Nuts, coconut milk, frozen (liquid expressed from grated meat and water)
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('חלב קוקוס, קפוא', 'Nuts, coconut milk, frozen (liquid expressed from grated meat and water)', 'fat', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('חופן (~30 גרם)'::text, '1 handful (~30g)'::text, 30.0::numeric, 0.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כף (~15 גרם)', '1 tbsp (~15g)', 15.0, 0.5, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 2.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FAT] Nuts, coconut milk, raw (liquid expressed from grated meat and water)
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('חלב קוקוס, גולמי', 'Nuts, coconut milk, raw (liquid expressed from grated meat and water)', 'fat', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('חופן (~30 גרם)'::text, '1 handful (~30g)'::text, 30.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כף (~15 גרם)', '1 tbsp (~15g)', 15.0, 0.5, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 2.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FAT] Nuts, coconut water (liquid from coconuts) -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('מי קוקוס', 'Nuts, coconut water (liquid from coconuts)', 'fat', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('חופן (~30 גרם)'::text, '1 handful (~30g)'::text, 30.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כף (~15 גרם)', '1 tbsp (~15g)', 15.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FAT] Nuts, formulated, wheat-based, all flavors except macadamia, without salt
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('אגוזים מעוצבים, על בסיס חיטה, כל הטעמים חוץ מקוקוס מקדמיה, ללא מלח', 'Nuts, formulated, wheat-based, all flavors except macadamia, without salt', 'fat', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('חופן (~30 גרם)'::text, '1 handful (~30g)'::text, 30.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כף (~15 גרם)', '1 tbsp (~15g)', 15.0, 1.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 6.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FAT] Nuts, formulated, wheat-based, unflavored, with salt added
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('אגוזים מעוצבים, על בסיס חיטה, ללא טעם, עם מלח', 'Nuts, formulated, wheat-based, unflavored, with salt added', 'fat', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('חופן (~30 גרם)'::text, '1 handful (~30g)'::text, 30.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כף (~15 גרם)', '1 tbsp (~15g)', 15.0, 1.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 6.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FAT] Nuts, ginkgo nuts, canned
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('אגוזי גינקגו, משומרים בפחית', 'Nuts, ginkgo nuts, canned', 'fat', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('חופן (~30 גרם)'::text, '1 handful (~30g)'::text, 30.0::numeric, 0.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כף (~15 גרם)', '1 tbsp (~15g)', 15.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FAT] Nuts, ginkgo nuts, dried
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('אגוזי גינקגו, מיובשים', 'Nuts, ginkgo nuts, dried', 'fat', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('חופן (~30 גרם)'::text, '1 handful (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('כף (~15 גרם)', '1 tbsp (~15g)', 15.0, 0.0, 0.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 3.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FAT] Nuts, ginkgo nuts, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('אגוזי גינקגו גולמיים', 'Nuts, ginkgo nuts, raw', 'fat', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('חופן (~30 גרם)'::text, '1 handful (~30g)'::text, 30.0::numeric, 0.0::numeric, 0.5::numeric, true::boolean, 1::integer),
  ('כף (~15 גרם)', '1 tbsp (~15g)', 15.0, 0.0, 0.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 2.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FAT] Nuts, hazelnuts or filberts
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('אגוזי לוז', 'Nuts, hazelnuts or filberts', 'fat', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('חופן (~30 גרם)'::text, '1 handful (~30g)'::text, 30.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כף (~15 גרם)', '1 tbsp (~15g)', 15.0, 1.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 6.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FAT] Nuts, hazelnuts or filberts, blanched
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('אגוזי לוז, קלופים', 'Nuts, hazelnuts or filberts, blanched', 'fat', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('חופן (~30 גרם)'::text, '1 handful (~30g)'::text, 30.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כף (~15 גרם)', '1 tbsp (~15g)', 15.0, 1.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 6.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FAT] Nuts, hazelnuts or filberts, dry roasted, without salt added
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('אגוזי לוז, צלויים בחום יבש, ללא מלח', 'Nuts, hazelnuts or filberts, dry roasted, without salt added', 'fat', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('חופן (~30 גרם)'::text, '1 handful (~30g)'::text, 30.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כף (~15 גרם)', '1 tbsp (~15g)', 15.0, 1.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 6.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FAT] Nuts, hickorynuts, dried
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('אגוזי היקורי, יבשים', 'Nuts, hickorynuts, dried', 'fat', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('חופן (~30 גרם)'::text, '1 handful (~30g)'::text, 30.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כף (~15 גרם)', '1 tbsp (~15g)', 15.0, 1.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 6.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FAT] Nuts, macadamia nuts, dry roasted, with salt added
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('אגוזי מקדמיה, צלויים בחום יבש, עם מלח', 'Nuts, macadamia nuts, dry roasted, with salt added', 'fat', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('חופן (~30 גרם)'::text, '1 handful (~30g)'::text, 30.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כף (~15 גרם)', '1 tbsp (~15g)', 15.0, 1.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 7.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FAT] Nuts, macadamia nuts, dry roasted, without salt added
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('אגוזי מקדמיה, צלויים בחום יבש, ללא מלח', 'Nuts, macadamia nuts, dry roasted, without salt added', 'fat', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('חופן (~30 גרם)'::text, '1 handful (~30g)'::text, 30.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כף (~15 גרם)', '1 tbsp (~15g)', 15.0, 1.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 7.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FAT] Nuts, macadamia nuts, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('אגוזי מקדמיה, גולמיים', 'Nuts, macadamia nuts, raw', 'fat', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('חופן (~30 גרם)'::text, '1 handful (~30g)'::text, 30.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כף (~15 גרם)', '1 tbsp (~15g)', 15.0, 1.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 7.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FAT] Nuts, mixed nuts, dry roasted, with peanuts, salt added, CHOSEN ROASTER
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('תערובת אגוזים, צלויים בחום יבש, עם בוטנים, עם מלח', 'Nuts, mixed nuts, dry roasted, with peanuts, salt added, CHOSEN ROASTER', 'fat', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('חופן (~30 גרם)'::text, '1 handful (~30g)'::text, 30.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כף (~15 גרם)', '1 tbsp (~15g)', 15.0, 1.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 6.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FAT] Nuts, mixed nuts, dry roasted, with peanuts, salt added, PLANTERS pistachio blend
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('תערובת אגוזים, צלויים בחום יבש, עם בוטנים, עם מלח', 'Nuts, mixed nuts, dry roasted, with peanuts, salt added, PLANTERS pistachio blend', 'fat', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('חופן (~30 גרם)'::text, '1 handful (~30g)'::text, 30.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כף (~15 גרם)', '1 tbsp (~15g)', 15.0, 1.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 5.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FAT] Nuts, mixed nuts, dry roasted, with peanuts, with salt added
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('תערובת אגוזים, צלויים בחום יבש, עם בוטנים, עם מלח', 'Nuts, mixed nuts, dry roasted, with peanuts, with salt added', 'fat', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('חופן (~30 גרם)'::text, '1 handful (~30g)'::text, 30.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כף (~15 גרם)', '1 tbsp (~15g)', 15.0, 1.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 6.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FAT] Nuts, mixed nuts, dry roasted, with peanuts, without salt added
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('תערובת אגוזים, צלויים בחום יבש, עם בוטנים, ללא מלח', 'Nuts, mixed nuts, dry roasted, with peanuts, without salt added', 'fat', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('חופן (~30 גרם)'::text, '1 handful (~30g)'::text, 30.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כף (~15 גרם)', '1 tbsp (~15g)', 15.0, 1.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 6.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FAT] Nuts, mixed nuts, oil roasted, with peanuts, lightly salted
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('תערובת אגוזים, צלויים בשמן, עם בוטנים, מלוח קל', 'Nuts, mixed nuts, oil roasted, with peanuts, lightly salted', 'fat', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('חופן (~30 גרם)'::text, '1 handful (~30g)'::text, 30.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כף (~15 גרם)', '1 tbsp (~15g)', 15.0, 1.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 6.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FAT] Nuts, mixed nuts, oil roasted, with peanuts, with salt added
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('תערובת אגוזים, צלויים בשמן, עם בוטנים, עם מלח', 'Nuts, mixed nuts, oil roasted, with peanuts, with salt added', 'fat', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('חופן (~30 גרם)'::text, '1 handful (~30g)'::text, 30.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כף (~15 גרם)', '1 tbsp (~15g)', 15.0, 1.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 6.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FAT] Nuts, mixed nuts, oil roasted, with peanuts, without salt added
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('תערובת אגוזים, צלויים בשמן, עם בוטנים, ללא מלח', 'Nuts, mixed nuts, oil roasted, with peanuts, without salt added', 'fat', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('חופן (~30 גרם)'::text, '1 handful (~30g)'::text, 30.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כף (~15 גרם)', '1 tbsp (~15g)', 15.0, 1.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 6.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FAT] Nuts, mixed nuts, oil roasted, without peanuts, lightly salted
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('תערובת אגוזים, צלויים בשמן, ללא בוטנים, מלוח קל', 'Nuts, mixed nuts, oil roasted, without peanuts, lightly salted', 'fat', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('חופן (~30 גרם)'::text, '1 handful (~30g)'::text, 30.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כף (~15 גרם)', '1 tbsp (~15g)', 15.0, 1.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 6.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FAT] Nuts, mixed nuts, oil roasted, without peanuts, with salt added
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('תערובת אגוזים, צלויים בשמן, ללא בוטנים, עם מלח', 'Nuts, mixed nuts, oil roasted, without peanuts, with salt added', 'fat', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('חופן (~30 גרם)'::text, '1 handful (~30g)'::text, 30.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כף (~15 גרם)', '1 tbsp (~15g)', 15.0, 1.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 6.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FAT] Nuts, mixed nuts, oil roasted, without peanuts, without salt added
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('תערובת אגוזים, צלויים בשמן, ללא בוטנים, ללא מלח', 'Nuts, mixed nuts, oil roasted, without peanuts, without salt added', 'fat', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('חופן (~30 גרם)'::text, '1 handful (~30g)'::text, 30.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כף (~15 גרם)', '1 tbsp (~15g)', 15.0, 1.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 6.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FAT] Nuts, pecans
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('אגוזי פקאן', 'Nuts, pecans', 'fat', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('חופן (~30 גרם)'::text, '1 handful (~30g)'::text, 30.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כף (~15 גרם)', '1 tbsp (~15g)', 15.0, 1.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 7.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FAT] Nuts, pecans, dry roasted, with salt added
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('אגוזי פקאן, צלויים בחום יבש, עם מלח', 'Nuts, pecans, dry roasted, with salt added', 'fat', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('חופן (~30 גרם)'::text, '1 handful (~30g)'::text, 30.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כף (~15 גרם)', '1 tbsp (~15g)', 15.0, 1.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 7.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FAT] Nuts, pecans, dry roasted, without salt added
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('אגוזי פקאן, צלויים בחום יבש, ללא מלח', 'Nuts, pecans, dry roasted, without salt added', 'fat', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('חופן (~30 גרם)'::text, '1 handful (~30g)'::text, 30.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כף (~15 גרם)', '1 tbsp (~15g)', 15.0, 1.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 7.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FAT] Nuts, pecans, oil roasted, with salt added
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('אגוזי פקאן, צלויים בשמן, עם מלח', 'Nuts, pecans, oil roasted, with salt added', 'fat', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('חופן (~30 גרם)'::text, '1 handful (~30g)'::text, 30.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כף (~15 גרם)', '1 tbsp (~15g)', 15.0, 1.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 7.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FAT] Nuts, pecans, oil roasted, without salt added
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('אגוזי פקאן, צלויים בשמן, ללא מלח', 'Nuts, pecans, oil roasted, without salt added', 'fat', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('חופן (~30 גרם)'::text, '1 handful (~30g)'::text, 30.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כף (~15 גרם)', '1 tbsp (~15g)', 15.0, 1.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 7.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

COMMIT;
