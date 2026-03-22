BEGIN;

-- ============================================================
-- VEGETABLE (180 foods)
-- ============================================================
-- [VEGETABLE] Alfalfa seeds, sprouted, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('זרעי אלפלפה, נובטות, חומות', 'Alfalfa seeds, sprouted, raw', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Amaranth leaves, cooked, boiled, drained, with salt
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('עלי אמרנת, מבושלות, מלוחות', 'Amaranth leaves, cooked, boiled, drained, with salt', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Amaranth leaves, cooked, boiled, drained, without salt
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('עלי אמרנת, מבושלות, ללא מלח', 'Amaranth leaves, cooked, boiled, drained, without salt', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Amaranth leaves, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('עלי אמרנת, חומות', 'Amaranth leaves, raw', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Arrowhead, cooked, boiled, drained, with salt
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('אראורוט, מבושל, מלוח', 'Arrowhead, cooked, boiled, drained, with salt', 'vegetable', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 1.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 1.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Arrowhead, cooked, boiled, drained, without salt
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('אראורוט, מבושל, ללא מלח', 'Arrowhead, cooked, boiled, drained, without salt', 'vegetable', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 1.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 1.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Arrowhead, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('אראורוט, חום', 'Arrowhead, raw', 'vegetable', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 1.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 1.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Arrowroot, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שורש אררו, חום', 'Arrowroot, raw', 'vegetable', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.5::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Artichokes, (globe or french), cooked, boiled, drained, with salt -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES (' артишוק, מבושל, מלוח', 'Artichokes, (globe or french), cooked, boiled, drained, with salt', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Artichokes, (globe or french), cooked, boiled, drained, without salt -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('ארטישוק, מבושל, ללא מלח', 'Artichokes, (globe or french), cooked, boiled, drained, without salt', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Artichokes, (globe or french), frozen, cooked, boiled, drained, with salt
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('ארטישוק, קפוא, מבושל, מלוח', 'Artichokes, (globe or french), frozen, cooked, boiled, drained, with salt', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Artichokes, (globe or french), frozen, cooked, boiled, drained, without salt
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('ארטישוק, קפוא, מבושל, ללא מלח', 'Artichokes, (globe or french), frozen, cooked, boiled, drained, without salt', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Artichokes, (globe or french), frozen, unprepared
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('ארטישוק, קפוא, לא מעובד', 'Artichokes, (globe or french), frozen, unprepared', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Artichokes, (globe or french), raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('ארטישוק, חום', 'Artichokes, (globe or french), raw', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Arugula, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('רוקט, חום', 'Arugula, raw', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Asparagus, canned, drained solids
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('אספרגוס, שמור בפחית, מתולתל', 'Asparagus, canned, drained solids', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Asparagus, canned, no salt added, solids and liquids
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('אספרגוס, שמור בפחית, ללא מלח', 'Asparagus, canned, no salt added, solids and liquids', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Asparagus, canned, regular pack, solids and liquids
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('אספרגוס, שמור בפחית, רגיל', 'Asparagus, canned, regular pack, solids and liquids', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Asparagus, cooked, boiled, drained
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('אספרגוס, מבושל, מתולתל', 'Asparagus, cooked, boiled, drained', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Asparagus, cooked, boiled, drained, with salt
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('אספרגוס, מבושל, מלוח', 'Asparagus, cooked, boiled, drained, with salt', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Asparagus, frozen, cooked, boiled, drained, with salt
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('אספרגוס, קפוא, מבושל, מלוח', 'Asparagus, frozen, cooked, boiled, drained, with salt', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Asparagus, frozen, cooked, boiled, drained, without salt
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('אספרגוס, קפוא, מבושל, ללא מלח', 'Asparagus, frozen, cooked, boiled, drained, without salt', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Asparagus, frozen, unprepared
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('אספרגוס, קפוא, לא מעובד', 'Asparagus, frozen, unprepared', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Asparagus, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('אספרגוס, חום', 'Asparagus, raw', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Balsam-pear (bitter gourd), leafy tips, cooked, boiled, drained, with salt
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('קרילה, עלים, מבושלה, מלוחה', 'Balsam-pear (bitter gourd), leafy tips, cooked, boiled, drained, with salt', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Balsam-pear (bitter gourd), leafy tips, cooked, boiled, drained, without salt
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('קרילה, עלים, מבושלה, ללא מלח', 'Balsam-pear (bitter gourd), leafy tips, cooked, boiled, drained, without salt', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Balsam-pear (bitter gourd), leafy tips, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('קרילה, עלים, חומה', 'Balsam-pear (bitter gourd), leafy tips, raw', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Balsam-pear (bitter gourd), pods, cooked, boiled, drained, with salt
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('קרילה, פודים, מבושלה, מלוחה', 'Balsam-pear (bitter gourd), pods, cooked, boiled, drained, with salt', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Balsam-pear (bitter gourd), pods, cooked, boiled, drained, without salt
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('קרילה, פודים, מבושלה, ללא מלח', 'Balsam-pear (bitter gourd), pods, cooked, boiled, drained, without salt', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Balsam-pear (bitter gourd), pods, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('קרילה, פודים, חומה', 'Balsam-pear (bitter gourd), pods, raw', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Bamboo shoots, canned, drained solids
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שום במבוק, שימור, מסונן', 'Bamboo shoots, canned, drained solids', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Bamboo shoots, cooked, boiled, drained, with salt
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שום במבוק, מבושל, מסונן, עם מלח', 'Bamboo shoots, cooked, boiled, drained, with salt', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Bamboo shoots, cooked, boiled, drained, without salt
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שום במבוק, מבושל, מסונן, ללא מלח', 'Bamboo shoots, cooked, boiled, drained, without salt', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Bamboo shoots, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שום במבוק, גולמי', 'Bamboo shoots, raw', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Beans, fava, in pod, raw -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('פול טוני, בתרמיל, גולמי', 'Beans, fava, in pod, raw', 'vegetable', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 1.5, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Beans, kidney, mature seeds, sprouted, cooked, boiled, drained, with salt
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('פול אדום, זרעים בשלים, נובט, מבושל, מסונן, עם מלח', 'Beans, kidney, mature seeds, sprouted, cooked, boiled, drained, with salt', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Beans, kidney, mature seeds, sprouted, cooked, boiled, drained, without salt
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('פול אדום, זרעים בשלים, נובט, מבושל, מסונן, ללא מלח', 'Beans, kidney, mature seeds, sprouted, cooked, boiled, drained, without salt', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Beans, kidney, mature seeds, sprouted, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('פול אדום, זרעים בשלים, נובט, גולמי', 'Beans, kidney, mature seeds, sprouted, raw', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Beans, mung, mature seeds, sprouted, canned, drained solids
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('פול מונג, זרעים בשלים, נובט, שימור, מסונן', 'Beans, mung, mature seeds, sprouted, canned, drained solids', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Beans, navy, mature seeds, sprouted, cooked, boiled, drained, with salt
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('פול לבן, זרעים בשלים, נובט, מבושל, מסונן, עם מלח', 'Beans, navy, mature seeds, sprouted, cooked, boiled, drained, with salt', 'vegetable', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 1.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 1.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Beans, navy, mature seeds, sprouted, cooked, boiled, drained, without salt
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('פול לבן, זרעים בשלים, נובט, מבושל, מסונן, ללא מלח', 'Beans, navy, mature seeds, sprouted, cooked, boiled, drained, without salt', 'vegetable', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 1.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 1.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Beans, navy, mature seeds, sprouted, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('פול לבן, זרעים בשלים, נובט, גולמי', 'Beans, navy, mature seeds, sprouted, raw', 'vegetable', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.5::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Beans, pinto, immature seeds, frozen, cooked, boiled, drained, with salt
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('פול פינטו, זרעים צעירים, קפוא, מבושל, מסונן, עם מלח', 'Beans, pinto, immature seeds, frozen, cooked, boiled, drained, with salt', 'vegetable', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 2.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 1.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Beans, pinto, immature seeds, frozen, cooked, boiled, drained, without salt
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('פול פינטו, זרעים צעירים, קפוא, מבושל, מסונן, ללא מלח', 'Beans, pinto, immature seeds, frozen, cooked, boiled, drained, without salt', 'vegetable', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 2.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 1.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Beans, pinto, immature seeds, frozen, unprepared
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('פול פינטו, זרעים צעירים, קפוא, גולמי', 'Beans, pinto, immature seeds, frozen, unprepared', 'vegetable', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 2.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 1.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Beans, pinto, mature seeds, sprouted, cooked, boiled, drained, with salt
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('פול פינטו, זרעים בשלים, נובט, מבושל, מסונן, עם מלח', 'Beans, pinto, mature seeds, sprouted, cooked, boiled, drained, with salt', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Beans, pinto, mature seeds, sprouted, cooked, boiled, drained, without salt
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('פול פינטו, זרעים בשלים, נובט, מבושל, מסונן, ללא מלח', 'Beans, pinto, mature seeds, sprouted, cooked, boiled, drained, without salt', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Beans, pinto, mature seeds, sprouted, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('פול פינטו, זרעים בשלים, נובט, גולמי', 'Beans, pinto, mature seeds, sprouted, raw', 'vegetable', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.5::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Beans, shellie, canned, solids and liquids
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('פול ירוק, שימור, מים וזרעים', 'Beans, shellie, canned, solids and liquids', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Beans, snap, canned, all styles, seasoned, solids and liquids
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('פול ירוק, שימור, מתובל, מים וזרעים', 'Beans, snap, canned, all styles, seasoned, solids and liquids', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Beans, snap, green, canned, no salt added, drained solids
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('פול ירוק, שימור, ללא מלח, מסונן', 'Beans, snap, green, canned, no salt added, drained solids', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Beans, snap, green, canned, no salt added, solids and liquids
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('פול ירוק, שימור, ללא מלח, מים וזרעים', 'Beans, snap, green, canned, no salt added, solids and liquids', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Beans, snap, green, canned, regular pack, drained solids
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('פול ירוק, שימור, מלח רגיל, מסונן', 'Beans, snap, green, canned, regular pack, drained solids', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Beans, snap, green, canned, regular pack, solids and liquids
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('פול ירוק, שימור, מלח רגיל, מים וזרעים', 'Beans, snap, green, canned, regular pack, solids and liquids', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Beans, snap, green, cooked, boiled, drained, with salt
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('פול ירוק, מבושל, מסונן, עם מלח', 'Beans, snap, green, cooked, boiled, drained, with salt', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Beans, snap, green, cooked, boiled, drained, without salt
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('פול ירוק, מבושל, מסונן, ללא מלח', 'Beans, snap, green, cooked, boiled, drained, without salt', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Beans, snap, green, frozen, all styles, microwaved
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('פול ירוק, קפוא, מחומם במיקרוגל', 'Beans, snap, green, frozen, all styles, microwaved', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Beans, snap, green, frozen, all styles, unprepared (Includes foods for USDA's Food Distribution Program)
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('פול ירוק, קפוא, גולמי', 'Beans, snap, green, frozen, all styles, unprepared (Includes foods for USDA''s Food Distribution Program)', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Beans, snap, green, frozen, cooked, boiled, drained without salt
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('פול ירוק, קפוא, מבושל, מסונן, ללא מלח', 'Beans, snap, green, frozen, cooked, boiled, drained without salt', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Beans, snap, green, frozen, cooked, boiled, drained, with salt
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('פול ירוק, קפוא, מבושל, מסונן, עם מלח', 'Beans, snap, green, frozen, cooked, boiled, drained, with salt', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Beans, snap, green, microwaved
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('טוב לבישול - שעועית ירוקה, במיקروגל', 'Beans, snap, green, microwaved', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Beans, snap, green, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שעועית ירוקה, חוקה', 'Beans, snap, green, raw', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Beans, snap, yellow, canned, no salt added, drained solids
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שעועית צהובה, משומרת, ללא מלח, מרוקן', 'Beans, snap, yellow, canned, no salt added, drained solids', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Beans, snap, yellow, canned, no salt added, solids and liquids
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שעועית צהובה, משומרת, ללא מלח, עם תמצית', 'Beans, snap, yellow, canned, no salt added, solids and liquids', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Beans, snap, yellow, canned, regular pack, drained solids
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שעועית צהובה, משומרת, ממולח רגיל, מרוקן', 'Beans, snap, yellow, canned, regular pack, drained solids', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Beans, snap, yellow, canned, regular pack, solids and liquids
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שעועית צהובה, משומרת, ממולח רגיל, עם תמצית', 'Beans, snap, yellow, canned, regular pack, solids and liquids', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Beans, snap, yellow, cooked, boiled, drained, with salt
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שעועית צהובה, בישול, מבושלת, מרוקנת, עם מלח', 'Beans, snap, yellow, cooked, boiled, drained, with salt', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Beans, snap, yellow, cooked, boiled, drained, without salt
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שעועית צהובה, בישול, מבושלת, מרוקנת, ללא מלח', 'Beans, snap, yellow, cooked, boiled, drained, without salt', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Beans, snap, yellow, frozen, all styles, unprepared
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שעועית צהובה, קפוא, בלתי מעובד', 'Beans, snap, yellow, frozen, all styles, unprepared', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Beans, snap, yellow, frozen, cooked, boiled, drained, with salt
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שעועית צהובה, קפוא, בישול, מבושלת, מרוקנת, עם מלח', 'Beans, snap, yellow, frozen, cooked, boiled, drained, with salt', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Beans, snap, yellow, frozen, cooked, boiled, drained, without salt
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שעועית צהובה, קפוא, בישול, מבושלת, מרוקנת, ללא מלח', 'Beans, snap, yellow, frozen, cooked, boiled, drained, without salt', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Beans, snap, yellow, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שעועית צהובה, חוקה', 'Beans, snap, yellow, raw', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Beet greens, cooked, boiled, drained, with salt
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('עלי סלק, בישול, מבושל, מרוקן, עם מלח', 'Beet greens, cooked, boiled, drained, with salt', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Beet greens, cooked, boiled, drained, without salt
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('עלי סלק, בישול, מבושל, מרוקן, ללא מלח', 'Beet greens, cooked, boiled, drained, without salt', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Beet greens, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('עלי סלק, חוק', 'Beet greens, raw', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Beets, canned, drained solids
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('סלק, משומר, מרוקן', 'Beets, canned, drained solids', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Beets, canned, no salt added, solids and liquids
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('סלק, משומר, ללא מלח, עם תמצית', 'Beets, canned, no salt added, solids and liquids', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Beets, canned, regular pack, solids and liquids
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('סלק, משומר, ממולח רגיל, עם תמצית', 'Beets, canned, regular pack, solids and liquids', 'vegetable', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס טרייה (~80 גרם)'::text, '1 cup raw (~80g)'::text, 80.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס מבושלת (~150 גרם)', '1 cup cooked (~150g)', 150.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [VEGETABLE] Beets, cooked, boiled, drained
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('סלק, בישול, מבושל, מרוקן', 'Beets, cooked, boiled, drained', 'vegetable', 'free', 'ai_agent')
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
