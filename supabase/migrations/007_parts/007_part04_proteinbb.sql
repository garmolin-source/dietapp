BEGIN;

-- [PROTEIN] Fish, Salmon, pink, canned, drained solids, without skin and bones
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('דג, סלמון ורוד, שימורים, ניקוז, ללא עור וחוטם', 'Fish, Salmon, pink, canned, drained solids, without skin and bones', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('פילה קטן (100 גרם)', '1 small fillet (100g)', 100.0, 1.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Fish, anchovy, european, canned in oil, drained solids
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('דג, אנצ''וביס, אירופאי, שימורים בשמן, ניקוז', 'Fish, anchovy, european, canned in oil, drained solids', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 2.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('פילה קטן (100 גרם)', '1 small fillet (100g)', 100.0, 1.5, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 1.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Fish, anchovy, european, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('דג, אנצ''וביס, אירופאי, חי', 'Fish, anchovy, european, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('פילה קטן (100 גרם)', '1 small fillet (100g)', 100.0, 1.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Fish, bass, fresh water, mixed species, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('דג, בס, מים מתוקים, מינים מעורבים, חי', 'Fish, bass, fresh water, mixed species, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('פילה קטן (100 גרם)', '1 small fillet (100g)', 100.0, 1.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Fish, bass, freshwater, mixed species, cooked, dry heat
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('דג, בס, מים מתוקים, מינים מעורבים, מבושל, חום יבש', 'Fish, bass, freshwater, mixed species, cooked, dry heat', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('פילה קטן (100 גרם)', '1 small fillet (100g)', 100.0, 1.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Fish, bass, striped, cooked, dry heat
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('דג, בס מפוספס, מבושל, חום יבש', 'Fish, bass, striped, cooked, dry heat', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('פילה קטן (100 גרם)', '1 small fillet (100g)', 100.0, 1.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Fish, bass, striped, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('דג בס מפורים, חי', 'Fish, bass, striped, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('פילה קטן (100 גרם)', '1 small fillet (100g)', 100.0, 0.5, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Fish, bluefish, cooked, dry heat
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('דג כחול, מבושל, חום יבש', 'Fish, bluefish, cooked, dry heat', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('פילה קטן (100 גרם)', '1 small fillet (100g)', 100.0, 1.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Fish, bluefish, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('דג כחול, חי', 'Fish, bluefish, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('פילה קטן (100 גרם)', '1 small fillet (100g)', 100.0, 1.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Fish, burbot, cooked, dry heat
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('דג בורבוט, מבושל, חום יבש', 'Fish, burbot, cooked, dry heat', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('פילה קטן (100 גרם)', '1 small fillet (100g)', 100.0, 1.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Fish, burbot, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('דג בורבוט, חי', 'Fish, burbot, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('פילה קטן (100 גרם)', '1 small fillet (100g)', 100.0, 0.5, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Fish, butterfish, cooked, dry heat
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('דג חמאה, מבושל, חום יבש', 'Fish, butterfish, cooked, dry heat', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 2.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('פילה קטן (100 גרם)', '1 small fillet (100g)', 100.0, 1.5, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 1.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Fish, butterfish, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('דג חמאה, חי', 'Fish, butterfish, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('פילה קטן (100 גרם)', '1 small fillet (100g)', 100.0, 1.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Fish, carp, cooked, dry heat
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('קרפיון, מבושל, חום יבש', 'Fish, carp, cooked, dry heat', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('פילה קטן (100 גרם)', '1 small fillet (100g)', 100.0, 1.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Fish, carp, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('קרפיון, חי', 'Fish, carp, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('פילה קטן (100 גרם)', '1 small fillet (100g)', 100.0, 1.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Fish, catfish, channel, cooked, breaded and fried
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('דג קטפיש, ערוץ, מטוגן בציפוי', 'Fish, catfish, channel, cooked, breaded and fried', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 2.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('פילה קטן (100 גרם)', '1 small fillet (100g)', 100.0, 1.5, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 1.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Fish, catfish, channel, farmed, cooked, dry heat
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('דג קטפיש, ערוץ, גידול בחוות, מבושל, חום יבש', 'Fish, catfish, channel, farmed, cooked, dry heat', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('פילה קטן (100 גרם)', '1 small fillet (100g)', 100.0, 1.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Fish, catfish, channel, farmed, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('דג קטפיש, ערוץ, גידול בחוות, חי', 'Fish, catfish, channel, farmed, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('פילה קטן (100 גרם)', '1 small fillet (100g)', 100.0, 1.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Fish, catfish, channel, wild, cooked, dry heat
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('דג קטפיש, ערוץ, בר, מבושל, חום יבש', 'Fish, catfish, channel, wild, cooked, dry heat', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('פילה קטן (100 גרם)', '1 small fillet (100g)', 100.0, 1.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Fish, catfish, channel, wild, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('דג קטפיש, ערוץ, בר, חי', 'Fish, catfish, channel, wild, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('פילה קטן (100 גרם)', '1 small fillet (100g)', 100.0, 0.5, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Fish, caviar, black and red, granular
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('קויה, שחורה ואדומה, גרגרנית', 'Fish, caviar, black and red, granular', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 3.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('פילה קטן (100 גרם)', '1 small fillet (100g)', 100.0, 2.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 2.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Fish, cisco, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('דג סיסקו, חי', 'Fish, cisco, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('פילה קטן (100 גרם)', '1 small fillet (100g)', 100.0, 0.5, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Fish, cisco, smoked
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('דג סיסקו, מעולף', 'Fish, cisco, smoked', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 2.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('פילה קטן (100 גרם)', '1 small fillet (100g)', 100.0, 1.5, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 1.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Fish, cod, Atlantic, canned, solids and liquid
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('דג קוד אטלנטי, שימור בפח, מוצק וקליפה', 'Fish, cod, Atlantic, canned, solids and liquid', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('פילה קטן (100 גרם)', '1 small fillet (100g)', 100.0, 1.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Fish, cod, Atlantic, cooked, dry heat
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('דג קוד אטלנטי, מבושל, חום יבש', 'Fish, cod, Atlantic, cooked, dry heat', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('פילה קטן (100 גרם)', '1 small fillet (100g)', 100.0, 1.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Fish, cod, Atlantic, dried and salted
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('דג קוד אטלנטי, יבש ומלוח', 'Fish, cod, Atlantic, dried and salted', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 3.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('פילה קטן (100 גרם)', '1 small fillet (100g)', 100.0, 2.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 2.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Fish, cod, Atlantic, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('דג קוד אטלנטי, חי', 'Fish, cod, Atlantic, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('פילה קטן (100 גרם)', '1 small fillet (100g)', 100.0, 0.5, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Fish, cod, Pacific, cooked
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('דג קוד פסיפי, מבושל', 'Fish, cod, Pacific, cooked', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('פילה קטן (100 גרם)', '1 small fillet (100g)', 100.0, 0.5, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Fish, cod, Pacific, cooked, dry heat (may contain additives to retain moisture)
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('דג קוד פסיפי, מבושל, חום יבש', 'Fish, cod, Pacific, cooked, dry heat (may contain additives to retain moisture)', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('פילה קטן (100 גרם)', '1 small fillet (100g)', 100.0, 0.5, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Fish, cod, Pacific, raw (may have been previously frozen)
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('דג קוד פסיפי, חי', 'Fish, cod, Pacific, raw (may have been previously frozen)', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('פילה קטן (100 גרם)', '1 small fillet (100g)', 100.0, 0.5, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Fish, croaker, Atlantic, cooked, breaded and fried
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('דג קרוקר אטלנטי, מטוגן בציפוי', 'Fish, croaker, Atlantic, cooked, breaded and fried', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 2.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('פילה קטן (100 גרם)', '1 small fillet (100g)', 100.0, 1.5, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 1.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Fish, croaker, Atlantic, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('דג קרוקר אטלנטי, חי', 'Fish, croaker, Atlantic, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('פילה קטן (100 גרם)', '1 small fillet (100g)', 100.0, 1.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Fish, cusk, cooked, dry heat
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('דג קאסק, מבושל, חום יבש', 'Fish, cusk, cooked, dry heat', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('פילה קטן (100 גרם)', '1 small fillet (100g)', 100.0, 1.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Fish, cusk, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('דג קאסק, חי', 'Fish, cusk, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('פילה קטן (100 גרם)', '1 small fillet (100g)', 100.0, 0.5, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Fish, drum, freshwater, cooked, dry heat
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('דג תוף מתוקי מים, מבושל, חום יבש', 'Fish, drum, freshwater, cooked, dry heat', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('פילה קטן (100 גרם)', '1 small fillet (100g)', 100.0, 1.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Fish, drum, freshwater, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('דג תוף מתוקי מים, חי', 'Fish, drum, freshwater, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('פילה קטן (100 גרם)', '1 small fillet (100g)', 100.0, 1.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Fish, eel, mixed species, cooked, dry heat
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('אנקוויה, מעורבב מינים, מבושל, חום יבש', 'Fish, eel, mixed species, cooked, dry heat', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 3.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('פילה קטן (100 גרם)', '1 small fillet (100g)', 100.0, 2.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 2.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Fish, eel, mixed species, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('אנקוויה, מעורבב מינים, חי', 'Fish, eel, mixed species, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 2.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('פילה קטן (100 גרם)', '1 small fillet (100g)', 100.0, 1.5, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 1.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Fish, fish sticks, frozen, prepared -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('דגים מקופאים בצורת מקלות, מוכנים', 'Fish, fish sticks, frozen, prepared', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 4.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('פילה קטן (100 גרם)', '1 small fillet (100g)', 100.0, 3.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 3.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Fish, flatfish (flounder and sole species), cooked, dry heat
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('דג שטוח (פלאונדר וסול), מבושל, חום יבש', 'Fish, flatfish (flounder and sole species), cooked, dry heat', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('פילה קטן (100 גרם)', '1 small fillet (100g)', 100.0, 0.5, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

COMMIT;
