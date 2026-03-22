BEGIN;

-- [VEGETABLE] Beets, cooked, boiled. drained, with salt
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('סלק, בישול, מבושל, מרוקן, עם מלח', 'Beets, cooked, boiled. drained, with salt', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Beets, harvard, canned, solids and liquids
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('סלק, משומר, סוג הרווארד, עם תמצית', 'Beets, harvard, canned, solids and liquids', 'vegetable', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 1.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 1.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Beets, pickled, canned, solids and liquids
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('סלק, חמוץ, משומר, עם תמצית', 'Beets, pickled, canned, solids and liquids', 'vegetable', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 1.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 1.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Beets, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('סלק, חוק', 'Beets, raw', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Borage, cooked, boiled, drained, with salt
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בוראג'', בישול, מבושל, מרוקן, עם מלח', 'Borage, cooked, boiled, drained, with salt', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Borage, cooked, boiled, drained, without salt
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בוראג'', בישול, מבושל, מרוקן, ללא מלח', 'Borage, cooked, boiled, drained, without salt', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Borage, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בוראג'', חוק', 'Borage, raw', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Broadbeans, immature seeds, cooked, boiled, drained, with salt
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בון, זרעים בשלב מוקדם, בישול, מבושל, מרוקן, עם מלח', 'Broadbeans, immature seeds, cooked, boiled, drained, with salt', 'vegetable', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.5::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Broadbeans, immature seeds, cooked, boiled, drained, without salt -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בון, זרעים בשלב מוקדם, בישול, מבושל, מרוקן, ללא מלח', 'Broadbeans, immature seeds, cooked, boiled, drained, without salt', 'vegetable', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 1.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Broadbeans, immature seeds, raw -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בון, זרעים בשלב מוקדם, חוק', 'Broadbeans, immature seeds, raw', 'vegetable', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 1.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Broccoli raab, cooked
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('ברוקולי ראב, בישול', 'Broccoli raab, cooked', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Broccoli raab, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('רבב אייטלי, חام', 'Broccoli raab, raw', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Broccoli, chinese, cooked
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בורקולי סיני, מבושל', 'Broccoli, chinese, cooked', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Broccoli, chinese, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בורקולי סיני, חام', 'Broccoli, chinese, raw', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Broccoli, cooked, boiled, drained, with salt
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בורקולי, מבושל, מסולק נוזלים, עם מלח', 'Broccoli, cooked, boiled, drained, with salt', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Broccoli, cooked, boiled, drained, without salt
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בורקולי, מבושל, מסולק נוזלים, ללא מלח', 'Broccoli, cooked, boiled, drained, without salt', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Broccoli, flower clusters, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בורקולי, פרחים, חام', 'Broccoli, flower clusters, raw', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Broccoli, frozen, chopped, cooked, boiled, drained, with salt
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בורקולי, קפוא, קצוץ, מבושל, מסולק נוזלים, עם מלח', 'Broccoli, frozen, chopped, cooked, boiled, drained, with salt', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Broccoli, frozen, chopped, cooked, boiled, drained, without salt
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בורקולי, קפוא, קצוץ, מבושל, מסולק נוזלים, ללא מלח', 'Broccoli, frozen, chopped, cooked, boiled, drained, without salt', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Broccoli, frozen, chopped, unprepared
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בורקולי, קפוא, קצוץ, לא מעובד', 'Broccoli, frozen, chopped, unprepared', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Broccoli, frozen, spears, cooked, boiled, drained, with salt
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בורקולי, קפוא, זרעים, מבושל, מסולק נוזלים, עם מלח', 'Broccoli, frozen, spears, cooked, boiled, drained, with salt', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Broccoli, frozen, spears, cooked, boiled, drained, without salt
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בורקולי, קפוא, זרעים, מבושל, מסולק נוזלים, ללא מלח', 'Broccoli, frozen, spears, cooked, boiled, drained, without salt', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Broccoli, frozen, spears, unprepared (Includes foods for USDA's Food Distribution Program)
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בורקולי, קפוא, זרעים, לא מעובד', 'Broccoli, frozen, spears, unprepared (Includes foods for USDA''s Food Distribution Program)', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Broccoli, leaves, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בורקולי, עלים, חام', 'Broccoli, leaves, raw', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Broccoli, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בורקולי, חام', 'Broccoli, raw', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Broccoli, stalks, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בורקולי, גבעולים, חام', 'Broccoli, stalks, raw', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Brussels sprouts, cooked, boiled, drained, with salt
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('כרוב ניצנים, מבושל, מסולק נוזלים, עם מלח', 'Brussels sprouts, cooked, boiled, drained, with salt', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Brussels sprouts, cooked, boiled, drained, without salt
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('כרוב ניצנים, מבושל, מסולק נוזלים, ללא מלח', 'Brussels sprouts, cooked, boiled, drained, without salt', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Brussels sprouts, frozen, cooked, boiled, drained, with salt
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('כרוב ניצנים, קפוא, מבושל, מסולק נוזלים, עם מלח', 'Brussels sprouts, frozen, cooked, boiled, drained, with salt', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Brussels sprouts, frozen, cooked, boiled, drained, without salt
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('כרוב ניצנים, קפוא, מבושל, מסולק נוזלים, ללא מלח', 'Brussels sprouts, frozen, cooked, boiled, drained, without salt', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Brussels sprouts, frozen, unprepared
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('כרוב ניצנים, קפוא, לא מעובד', 'Brussels sprouts, frozen, unprepared', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Brussels sprouts, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('כרוב ניצנים, חام', 'Brussels sprouts, raw', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Burdock root, cooked, boiled, drained, with salt
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שורש גומפלנה, מבושל, מסולק נוזלים, עם מלח', 'Burdock root, cooked, boiled, drained, with salt', 'vegetable', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 1.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 1.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Burdock root, cooked, boiled, drained, without salt
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שורש גומפלנה, מבושל, מסולק נוזלים, ללא מלח', 'Burdock root, cooked, boiled, drained, without salt', 'vegetable', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 1.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 1.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Burdock root, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שורש גומפלנה, חام', 'Burdock root, raw', 'vegetable', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.5::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Butterbur, (fuki), raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('פוקי, חام', 'Butterbur, (fuki), raw', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Butterbur, canned
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('פוקי, שימורים', 'Butterbur, canned', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Butterbur, cooked, boiled, drained, with salt
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('פוקי, מבושל, מסולק נוזלים, עם מלח', 'Butterbur, cooked, boiled, drained, with salt', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Butterbur, cooked, boiled, drained, without salt
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('פוקי, מבושל, מסולק נוזלים, ללא מלח', 'Butterbur, cooked, boiled, drained, without salt', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Cabbage, chinese (pak-choi), cooked, boiled, drained, with salt
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('כרוב סיני, מבושל, מסולק נוזלים, עם מלח', 'Cabbage, chinese (pak-choi), cooked, boiled, drained, with salt', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

COMMIT;
