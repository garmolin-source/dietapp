BEGIN;

-- [VEGETABLE] Cabbage, chinese (pak-choi), cooked, boiled, drained, without salt
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('כרוב סיני, מבושל, מסולק נוזלים, ללא מלח', 'Cabbage, chinese (pak-choi), cooked, boiled, drained, without salt', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Cabbage, chinese (pak-choi), raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('כרוב סיני (פאק צ''וי), גולמי', 'Cabbage, chinese (pak-choi), raw', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Cabbage, chinese (pe-tsai), cooked, boiled, drained, with salt
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('כרוב סיני (פה-צ''אי), בישול, מבושל, מנוקז, עם מלח', 'Cabbage, chinese (pe-tsai), cooked, boiled, drained, with salt', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Cabbage, chinese (pe-tsai), cooked, boiled, drained, without salt
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('כרוב סיני (פה-צ''אי), בישול, מבושל, מנוקז, ללא מלח', 'Cabbage, chinese (pe-tsai), cooked, boiled, drained, without salt', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Cabbage, chinese (pe-tsai), raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('כרוב סיני (פה-צ''אי), גולמי', 'Cabbage, chinese (pe-tsai), raw', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Cabbage, common (danish, domestic, and pointed types), freshly harvest, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('כרוב רגיל (דני, מקומי וחד), טרי, גולמי', 'Cabbage, common (danish, domestic, and pointed types), freshly harvest, raw', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Cabbage, common (danish, domestic, and pointed types), stored, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('כרוב רגיל (דני, מקומי וחד), מאוחסן, גולמי', 'Cabbage, common (danish, domestic, and pointed types), stored, raw', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Cabbage, common, cooked, boiled, drained, with salt
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('כרוב רגיל, בישול, מבושל, מנוקז, עם מלח', 'Cabbage, common, cooked, boiled, drained, with salt', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Cabbage, cooked, boiled, drained, without salt
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('כרוב, בישול, מבושל, מנוקז, ללא מלח', 'Cabbage, cooked, boiled, drained, without salt', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Cabbage, japanese style, fresh, pickled
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('כרוב יפני, טרי, חמוץ', 'Cabbage, japanese style, fresh, pickled', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Cabbage, kimchi
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('קימצ''י', 'Cabbage, kimchi', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Cabbage, mustard, salted
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('כרוב חרדל, מלוח', 'Cabbage, mustard, salted', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Cabbage, napa, cooked
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('כרוב נאפה, בישול', 'Cabbage, napa, cooked', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Cabbage, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('כרוב, גולמי', 'Cabbage, raw', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Cabbage, red, cooked, boiled, drained, with salt
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('כרוב אדום, בישול, מבושל, מנוקז, עם מלח', 'Cabbage, red, cooked, boiled, drained, with salt', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Cabbage, red, cooked, boiled, drained, without salt
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('כרוב אדום, בישול, מבושל, מנוקז, ללא מלח', 'Cabbage, red, cooked, boiled, drained, without salt', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Cabbage, red, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('כרוב אדום, גולמי', 'Cabbage, red, raw', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Cabbage, savoy, cooked, boiled, drained, with salt
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('כרוב סבוי, בישול, מבושל, מנוקז, עם מלח', 'Cabbage, savoy, cooked, boiled, drained, with salt', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Cabbage, savoy, cooked, boiled, drained, without salt
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('כרוב סבוי, בישול, מבושל, מנוקז, ללא מלח', 'Cabbage, savoy, cooked, boiled, drained, without salt', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Cabbage, savoy, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('כרוב סבוי, גולמי', 'Cabbage, savoy, raw', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Cardoon, cooked, boiled, drained, with salt
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('קרדון, בישול, מבושל, מנוקז, עם מלח', 'Cardoon, cooked, boiled, drained, with salt', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Cardoon, cooked, boiled, drained, without salt
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('קרדון, בישול, מבושל, מנוקז, ללא מלח', 'Cardoon, cooked, boiled, drained, without salt', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Cardoon, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('קרדון, גולמי', 'Cardoon, raw', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Carrot juice, canned
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('מיץ גזר, משומר', 'Carrot juice, canned', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Carrot, dehydrated
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גזר, מיובש', 'Carrot, dehydrated', 'vegetable', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 2.5::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 4.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 3.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Carrots, baby, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גזרים תינוקות, גולמיים', 'Carrots, baby, raw', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Carrots, canned, no salt added, drained solids
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גזר, משומר, ללא מלח נוסף, מוצקים מנוקזים', 'Carrots, canned, no salt added, drained solids', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Carrots, canned, no salt added, solids and liquids
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גזר, משומר, ללא מלח נוסף, מוצקים וזרימה', 'Carrots, canned, no salt added, solids and liquids', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Carrots, canned, regular pack, drained solids
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גזר, משומר, אריזה רגילה, מוצקים מנוקזים', 'Carrots, canned, regular pack, drained solids', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Basil, fresh
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בזיליקום, טרי', 'Basil, fresh', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כפית (~3 גרם)'::text, '1 tsp (~3g)'::text, 3.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כף (~5 גרם)', '1 tbsp (~5g)', 5.0, 0.0, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Capers, canned
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('קפרס, משומר', 'Capers, canned', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כפית (~3 גרם)'::text, '1 tsp (~3g)'::text, 3.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כף (~5 גרם)', '1 tbsp (~5g)', 5.0, 0.0, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Dill weed, fresh
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שמיר דילה, טרי', 'Dill weed, fresh', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כפית (~3 גרם)'::text, '1 tsp (~3g)'::text, 3.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כף (~5 גרם)', '1 tbsp (~5g)', 5.0, 0.0, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Horseradish, prepared
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('ירקת חזרת, מעובדת', 'Horseradish, prepared', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כפית (~3 גרם)'::text, '1 tsp (~3g)'::text, 3.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כף (~5 גרם)', '1 tbsp (~5g)', 5.0, 0.0, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Mustard, prepared, yellow -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('חרדל, מעובד, צהוב', 'Mustard, prepared, yellow', 'vegetable', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כפית (~3 גרם)'::text, '1 tsp (~3g)'::text, 3.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כף (~5 גרם)', '1 tbsp (~5g)', 5.0, 0.0, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Peppermint, fresh -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('נענע פיפרמינט, טרייה', 'Peppermint, fresh', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כפית (~3 גרם)'::text, '1 tsp (~3g)'::text, 3.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כף (~5 גרם)', '1 tbsp (~5g)', 5.0, 0.0, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Rosemary, fresh -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('רוזמרין, טרי', 'Rosemary, fresh', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כפית (~3 גרם)'::text, '1 tsp (~3g)'::text, 3.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כף (~5 גרם)', '1 tbsp (~5g)', 5.0, 0.0, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Seasoning mix, dry, chili, original -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('תערובת תבלינים, יבשה, צ''ילי, מקורי', 'Seasoning mix, dry, chili, original', 'vegetable', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כפית (~3 גרם)'::text, '1 tsp (~3g)'::text, 3.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כף (~5 גרם)', '1 tbsp (~5g)', 5.0, 0.0, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Seasoning mix, dry, taco, original -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('תערובת תבלינים, יבשה, טאקו, מקורי', 'Seasoning mix, dry, taco, original', 'vegetable', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כפית (~3 גרם)'::text, '1 tsp (~3g)'::text, 3.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כף (~5 גרם)', '1 tbsp (~5g)', 5.0, 0.0, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Spearmint, dried -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('נענע ירוקה, יבשה', 'Spearmint, dried', 'vegetable', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כפית (~3 גרם)'::text, '1 tsp (~3g)'::text, 3.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כף (~5 גרם)', '1 tbsp (~5g)', 5.0, 0.0, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Spearmint, fresh
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('נענע ירוקה, טרייה', 'Spearmint, fresh', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כפית (~3 גרם)'::text, '1 tsp (~3g)'::text, 3.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כף (~5 גרם)', '1 tbsp (~5g)', 5.0, 0.0, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Spices, allspice, ground -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('תבלינים, אלספייס, טחון', 'Spices, allspice, ground', 'vegetable', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כפית (~3 גרם)'::text, '1 tsp (~3g)'::text, 3.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כף (~5 גרם)', '1 tbsp (~5g)', 5.0, 0.0, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Spices, anise seed -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('תבלינים, זרעי אניס', 'Spices, anise seed', 'vegetable', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כפית (~3 גרם)'::text, '1 tsp (~3g)'::text, 3.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כף (~5 גרם)', '1 tbsp (~5g)', 5.0, 0.0, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Spices, basil, dried -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('תבלינים, בזיליקום, מיובש', 'Spices, basil, dried', 'vegetable', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כפית (~3 גרם)'::text, '1 tsp (~3g)'::text, 3.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כף (~5 גרם)', '1 tbsp (~5g)', 5.0, 0.0, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Spices, bay leaf -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('תבלינים, עלה דפנה', 'Spices, bay leaf', 'vegetable', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כפית (~3 גרם)'::text, '1 tsp (~3g)'::text, 3.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כף (~5 גרם)', '1 tbsp (~5g)', 5.0, 0.0, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Spices, caraway seed -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('תבלינים, זרעי קימל', 'Spices, caraway seed', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כפית (~3 גרם)'::text, '1 tsp (~3g)'::text, 3.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כף (~5 גרם)', '1 tbsp (~5g)', 5.0, 0.0, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Spices, cardamom -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('תבלינים, הל', 'Spices, cardamom', 'vegetable', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כפית (~3 גרם)'::text, '1 tsp (~3g)'::text, 3.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כף (~5 גרם)', '1 tbsp (~5g)', 5.0, 0.0, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Spices, celery seed -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('תבלינים, זרעי סלרי', 'Spices, celery seed', 'vegetable', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כפית (~3 גרם)'::text, '1 tsp (~3g)'::text, 3.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כף (~5 גרם)', '1 tbsp (~5g)', 5.0, 0.0, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Spices, chervil, dried -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('תבלינים, שרביט, מיובש', 'Spices, chervil, dried', 'vegetable', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כפית (~3 גרם)'::text, '1 tsp (~3g)'::text, 3.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כף (~5 גרם)', '1 tbsp (~5g)', 5.0, 0.0, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Spices, chili powder -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('תבלינים, אבקת צ''ילי', 'Spices, chili powder', 'vegetable', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כפית (~3 גרם)'::text, '1 tsp (~3g)'::text, 3.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כף (~5 גרם)', '1 tbsp (~5g)', 5.0, 0.0, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Spices, cinnamon, ground -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('תבלינים, קינמון, טחון', 'Spices, cinnamon, ground', 'vegetable', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כפית (~3 גרם)'::text, '1 tsp (~3g)'::text, 3.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כף (~5 גרם)', '1 tbsp (~5g)', 5.0, 0.0, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Spices, cloves, ground -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('תבלינים, ציפורן, טחונה', 'Spices, cloves, ground', 'vegetable', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כפית (~3 גרם)'::text, '1 tsp (~3g)'::text, 3.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כף (~5 גרם)', '1 tbsp (~5g)', 5.0, 0.0, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Spices, coriander leaf, dried -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('תבלינים, עלה כוסברה, מיובשת', 'Spices, coriander leaf, dried', 'vegetable', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כפית (~3 גרם)'::text, '1 tsp (~3g)'::text, 3.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כף (~5 גרם)', '1 tbsp (~5g)', 5.0, 0.0, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Spices, coriander seed -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('תבלינים, זרעי כוסברה', 'Spices, coriander seed', 'vegetable', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כפית (~3 גרם)'::text, '1 tsp (~3g)'::text, 3.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כף (~5 גרם)', '1 tbsp (~5g)', 5.0, 0.0, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Spices, cumin seed -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('תבלינים, זרעי קומין', 'Spices, cumin seed', 'vegetable', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כפית (~3 גרם)'::text, '1 tsp (~3g)'::text, 3.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כף (~5 גרם)', '1 tbsp (~5g)', 5.0, 0.0, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Spices, curry powder -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('תבלינים, אבקת קארי', 'Spices, curry powder', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כפית (~3 גרם)'::text, '1 tsp (~3g)'::text, 3.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כף (~5 גרם)', '1 tbsp (~5g)', 5.0, 0.0, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Spices, dill seed -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('תבלינים, זרעי שמיר', 'Spices, dill seed', 'vegetable', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כפית (~3 גרם)'::text, '1 tsp (~3g)'::text, 3.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כף (~5 גרם)', '1 tbsp (~5g)', 5.0, 0.0, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Spices, dill weed, dried -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('תבלינים, עלה שמיר, מיובש', 'Spices, dill weed, dried', 'vegetable', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כפית (~3 גרם)'::text, '1 tsp (~3g)'::text, 3.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כף (~5 גרם)', '1 tbsp (~5g)', 5.0, 0.0, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Spices, fennel seed -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('תבלינים, זרעי שומר', 'Spices, fennel seed', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כפית (~3 גרם)'::text, '1 tsp (~3g)'::text, 3.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כף (~5 גרם)', '1 tbsp (~5g)', 5.0, 0.0, 0.0, false, 2)
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

COMMIT;
