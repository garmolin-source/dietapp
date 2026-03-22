BEGIN;

-- [CARB] Bagels, cinnamon-raisin
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בייגל, קינמון וצימוקים', 'Bagels, cinnamon-raisin', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('פרוסה (~30 גרם)'::text, '1 slice (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('2 פרוסות (~60 גרם)', '2 slices (~60g)', 60.0, 0.0, 1.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 2.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Bagels, cinnamon-raisin, toasted
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בייגל, קינמון וצימוקים, טוסט', 'Bagels, cinnamon-raisin, toasted', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('פרוסה (~30 גרם)'::text, '1 slice (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('2 פרוסות (~60 גרם)', '2 slices (~60g)', 60.0, 0.0, 2.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 3.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Bagels, egg
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בייגל, ביצה', 'Bagels, egg', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('פרוסה (~30 גרם)'::text, '1 slice (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('2 פרוסות (~60 גרם)', '2 slices (~60g)', 60.0, 0.0, 1.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 2.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Bagels, multigrain
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בייגל, דגנים מעורבים', 'Bagels, multigrain', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('פרוסה (~30 גרם)'::text, '1 slice (~30g)'::text, 30.0::numeric, 0.0::numeric, 0.5::numeric, true::boolean, 1::integer),
  ('2 פרוסות (~60 גרם)', '2 slices (~60g)', 60.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 2.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Bagels, oat bran
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בייגל, קליפת שיבולת שועל', 'Bagels, oat bran', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('פרוסה (~30 גרם)'::text, '1 slice (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('2 פרוסות (~60 גרם)', '2 slices (~60g)', 60.0, 0.0, 1.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 2.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Bagels, plain, enriched, with calcium propionate (includes onion, poppy, sesame)
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בייגל, פשוט, מועשר, עם פרופיונט סידן', 'Bagels, plain, enriched, with calcium propionate (includes onion, poppy, sesame)', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('פרוסה (~30 גרם)'::text, '1 slice (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('2 פרוסות (~60 גרם)', '2 slices (~60g)', 60.0, 0.0, 1.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 2.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Bagels, plain, enriched, with calcium propionate (includes onion, poppy, sesame), toasted
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בייגל רגיל מועשר טוסט', 'Bagels, plain, enriched, with calcium propionate (includes onion, poppy, sesame), toasted', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('פרוסה (~30 גרם)'::text, '1 slice (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('2 פרוסות (~60 גרם)', '2 slices (~60g)', 60.0, 0.0, 2.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 3.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Bagels, plain, enriched, without calcium propionate (includes onion, poppy, sesame)
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בייגל רגיל מועשר', 'Bagels, plain, enriched, without calcium propionate (includes onion, poppy, sesame)', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('פרוסה (~30 גרם)'::text, '1 slice (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('2 פרוסות (~60 גרם)', '2 slices (~60g)', 60.0, 0.0, 1.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 2.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Bagels, plain, unenriched, with calcium propionate (includes onion, poppy, sesame)
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בייגל רגיל טוסט', 'Bagels, plain, unenriched, with calcium propionate (includes onion, poppy, sesame)', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('פרוסה (~30 גרם)'::text, '1 slice (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('2 פרוסות (~60 גרם)', '2 slices (~60g)', 60.0, 0.0, 1.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 2.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Bagels, plain, unenriched, without calcium propionate(includes onion, poppy, sesame)
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בייגל רגיל', 'Bagels, plain, unenriched, without calcium propionate(includes onion, poppy, sesame)', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('פרוסה (~30 גרם)'::text, '1 slice (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('2 פרוסות (~60 גרם)', '2 slices (~60g)', 60.0, 0.0, 1.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 2.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Bagels, wheat
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בייגל קמח מלא', 'Bagels, wheat', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('פרוסה (~30 גרם)'::text, '1 slice (~30g)'::text, 30.0::numeric, 0.0::numeric, 0.5::numeric, true::boolean, 1::integer),
  ('2 פרוסות (~60 גרם)', '2 slices (~60g)', 60.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 2.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Bagels, whole grain white
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בייגל תבואה שלמה לבן', 'Bagels, whole grain white', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('פרוסה (~30 גרם)'::text, '1 slice (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('2 פרוסות (~60 גרם)', '2 slices (~60g)', 60.0, 0.0, 1.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 2.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Biscuits, mixed grain, refrigerated dough
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('ביסקוויט תבואה מעורבת קר', 'Biscuits, mixed grain, refrigerated dough', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('פרוסה (~30 גרם)'::text, '1 slice (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('2 פרוסות (~60 גרם)', '2 slices (~60g)', 60.0, 0.0, 1.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 2.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Biscuits, plain or buttermilk, dry mix
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('ביסקוויט רגיל או חמאה תערובת יבשה', 'Biscuits, plain or buttermilk, dry mix', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('פרוסה (~30 גרם)'::text, '1 slice (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('2 פרוסות (~60 גרם)', '2 slices (~60g)', 60.0, 0.0, 2.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 3.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Biscuits, plain or buttermilk, dry mix, prepared
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('ביסקוויט רגיל או חמאה מוכן', 'Biscuits, plain or buttermilk, dry mix, prepared', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('פרוסה (~30 גרם)'::text, '1 slice (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('2 פרוסות (~60 גרם)', '2 slices (~60g)', 60.0, 0.0, 1.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 2.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Biscuits, plain or buttermilk, frozen, baked
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('ביסקוויט רגיל או חמאה קפוא אפוי', 'Biscuits, plain or buttermilk, frozen, baked', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('פרוסה (~30 גרם)'::text, '1 slice (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('2 פרוסות (~60 גרם)', '2 slices (~60g)', 60.0, 0.0, 1.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 2.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Biscuits, plain or buttermilk, prepared from recipe
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('ביסקוויט רגיל או חמאה מתכון', 'Biscuits, plain or buttermilk, prepared from recipe', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('פרוסה (~30 גרם)'::text, '1 slice (~30g)'::text, 30.0::numeric, 0.0::numeric, 0.5::numeric, true::boolean, 1::integer),
  ('2 פרוסות (~60 גרם)', '2 slices (~60g)', 60.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 2.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Biscuits, plain or buttermilk, refrigerated dough, higher fat
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('ביסקוויט רגיל או חמאה קר שומן גבוה', 'Biscuits, plain or buttermilk, refrigerated dough, higher fat', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('פרוסה (~30 גרם)'::text, '1 slice (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('2 פרוסות (~60 גרם)', '2 slices (~60g)', 60.0, 0.0, 1.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 2.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Biscuits, plain or buttermilk, refrigerated dough, higher fat, baked
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('ביסקוויט רגיל או חמאה קר שומן גבוה אפוי', 'Biscuits, plain or buttermilk, refrigerated dough, higher fat, baked', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('פרוסה (~30 גרם)'::text, '1 slice (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('2 פרוסות (~60 גרם)', '2 slices (~60g)', 60.0, 0.0, 1.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 2.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Biscuits, plain or buttermilk, refrigerated dough, lower fat
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('ביסקוויט רגיל או חמאה קר שומן נמוך', 'Biscuits, plain or buttermilk, refrigerated dough, lower fat', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('פרוסה (~30 גרם)'::text, '1 slice (~30g)'::text, 30.0::numeric, 0.0::numeric, 0.5::numeric, true::boolean, 1::integer),
  ('2 פרוסות (~60 גרם)', '2 slices (~60g)', 60.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 2.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Biscuits, plain or buttermilk, refrigerated dough, lower fat, baked
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('ביסקוויט רגיל או חמאה קר שומן נמוך אפוי', 'Biscuits, plain or buttermilk, refrigerated dough, lower fat, baked', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('פרוסה (~30 גרם)'::text, '1 slice (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('2 פרוסות (~60 גרם)', '2 slices (~60g)', 60.0, 0.0, 1.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 2.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Bread, Italian
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('לחם איטלקי', 'Bread, Italian', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('פרוסה (~30 גרם)'::text, '1 slice (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('2 פרוסות (~60 גרם)', '2 slices (~60g)', 60.0, 0.0, 1.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 2.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Bread, banana, prepared from recipe, made with margarine
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('לחם בננה עם מרגרינה', 'Bread, banana, prepared from recipe, made with margarine', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('פרוסה (~30 גרם)'::text, '1 slice (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('2 פרוסות (~60 גרם)', '2 slices (~60g)', 60.0, 0.0, 1.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 2.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Bread, boston brown, canned
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('לחם חום בוסטוני שמור בפחית', 'Bread, boston brown, canned', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('פרוסה (~30 גרם)'::text, '1 slice (~30g)'::text, 30.0::numeric, 0.0::numeric, 0.5::numeric, true::boolean, 1::integer),
  ('2 פרוסות (~60 גרם)', '2 slices (~60g)', 60.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 2.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Bread, chapati or roti, plain, commercially prepared
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('לחם צ''פאטי או רוטי רגיל', 'Bread, chapati or roti, plain, commercially prepared', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('פרוסה (~30 גרם)'::text, '1 slice (~30g)'::text, 30.0::numeric, 0.0::numeric, 0.5::numeric, true::boolean, 1::integer),
  ('2 פרוסות (~60 גרם)', '2 slices (~60g)', 60.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 2.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Bread, chapati or roti, whole wheat, commercially prepared, frozen
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('לחם צ''פאטי או רוטי קמח מלא קפוא', 'Bread, chapati or roti, whole wheat, commercially prepared, frozen', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('פרוסה (~30 גרם)'::text, '1 slice (~30g)'::text, 30.0::numeric, 0.0::numeric, 0.5::numeric, true::boolean, 1::integer),
  ('2 פרוסות (~60 גרם)', '2 slices (~60g)', 60.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 2.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Bread, cheese
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('לחם גבינה', 'Bread, cheese', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('פרוסה (~30 גרם)'::text, '1 slice (~30g)'::text, 30.0::numeric, 0.0::numeric, 0.5::numeric, true::boolean, 1::integer),
  ('2 פרוסות (~60 גרם)', '2 slices (~60g)', 60.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 2.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Bread, cinnamon
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('לחם קינמון', 'Bread, cinnamon', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('פרוסה (~30 גרם)'::text, '1 slice (~30g)'::text, 30.0::numeric, 0.0::numeric, 0.5::numeric, true::boolean, 1::integer),
  ('2 פרוסות (~60 גרם)', '2 slices (~60g)', 60.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 2.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Bread, cornbread, dry mix, enriched (includes corn muffin mix)
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('לחם תירס תערובת יבשה מועשרת', 'Bread, cornbread, dry mix, enriched (includes corn muffin mix)', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (~25 גרם)'::text, '1 portion (~25g)'::text, 25.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.0, 3.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Bread, cornbread, dry mix, prepared with 2% milk, 80% margarine, and eggs
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('לחם תירס מוכן עם חלב 2% ומרגרינה', 'Bread, cornbread, dry mix, prepared with 2% milk, 80% margarine, and eggs', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('פרוסה (~30 גרם)'::text, '1 slice (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('2 פרוסות (~60 גרם)', '2 slices (~60g)', 60.0, 0.0, 1.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 2.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Bread, cornbread, dry mix, unenriched (includes corn muffin mix)
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('לחם תירס תערובת יבשה', 'Bread, cornbread, dry mix, unenriched (includes corn muffin mix)', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (~25 גרם)'::text, '1 portion (~25g)'::text, 25.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.0, 3.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Bread, cornbread, prepared from recipe, made with low fat (2%) milk
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('לחם תירס מוכן עם חלב נמוך שומן', 'Bread, cornbread, prepared from recipe, made with low fat (2%) milk', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('פרוסה (~30 גרם)'::text, '1 slice (~30g)'::text, 30.0::numeric, 0.0::numeric, 0.5::numeric, true::boolean, 1::integer),
  ('2 פרוסות (~60 גרם)', '2 slices (~60g)', 60.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 2.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Bread, cracked-wheat
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('לחם חיטה קרועה', 'Bread, cracked-wheat', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('פרוסה (~30 גרם)'::text, '1 slice (~30g)'::text, 30.0::numeric, 0.0::numeric, 0.5::numeric, true::boolean, 1::integer),
  ('2 פרוסות (~60 גרם)', '2 slices (~60g)', 60.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 2.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Bread, crumbs, dry, grated, plain
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('פירורי לחם יבשים', 'Bread, crumbs, dry, grated, plain', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('פרוסה (~30 גרם)'::text, '1 slice (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('2 פרוסות (~60 גרם)', '2 slices (~60g)', 60.0, 0.0, 2.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 3.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Bread, crumbs, dry, grated, seasoned
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('פירורי לחם יבשים מתובלים', 'Bread, crumbs, dry, grated, seasoned', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('פרוסה (~30 גרם)'::text, '1 slice (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('2 פרוסות (~60 גרם)', '2 slices (~60g)', 60.0, 0.0, 2.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 3.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Bread, egg
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('לחם ביצה', 'Bread, egg', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('פרוסה (~30 גרם)'::text, '1 slice (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('2 פרוסות (~60 גרם)', '2 slices (~60g)', 60.0, 0.0, 1.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 2.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Bread, egg, toasted
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('לחם עם ביצה, קלוי', 'Bread, egg, toasted', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('פרוסה (~30 גרם)'::text, '1 slice (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('2 פרוסות (~60 גרם)', '2 slices (~60g)', 60.0, 0.0, 1.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 2.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Bread, french or vienna (includes sourdough)
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('לחם צרפתי', 'Bread, french or vienna (includes sourdough)', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('פרוסה (~30 גרם)'::text, '1 slice (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('2 פרוסות (~60 גרם)', '2 slices (~60g)', 60.0, 0.0, 1.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 2.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Bread, french or vienna, toasted (includes sourdough)
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('לחם צרפתי, קלוי', 'Bread, french or vienna, toasted (includes sourdough)', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('פרוסה (~30 גרם)'::text, '1 slice (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('2 פרוסות (~60 גרם)', '2 slices (~60g)', 60.0, 0.0, 2.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 3.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Bread, french or vienna, whole wheat
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('לחם צרפתי מחיטה מלאה', 'Bread, french or vienna, whole wheat', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('פרוסה (~30 גרם)'::text, '1 slice (~30g)'::text, 30.0::numeric, 0.0::numeric, 0.5::numeric, true::boolean, 1::integer),
  ('2 פרוסות (~60 גרם)', '2 slices (~60g)', 60.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 2.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Bread, gluten-free, white, made with potato extract, rice starch, and rice flour
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('לחם ללא גלוטן, לבן, עם תמצית תפוח אדמה וקמח אורז', 'Bread, gluten-free, white, made with potato extract, rice starch, and rice flour', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('פרוסה (~30 גרם)'::text, '1 slice (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('2 פרוסות (~60 גרם)', '2 slices (~60g)', 60.0, 0.0, 1.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 2.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Bread, gluten-free, white, made with rice flour, corn starch, and/or tapioca
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('לחם ללא גלוטן, לבן, עם קמח אורז ועמילן תירס', 'Bread, gluten-free, white, made with rice flour, corn starch, and/or tapioca', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('פרוסה (~30 גרם)'::text, '1 slice (~30g)'::text, 30.0::numeric, 0.0::numeric, 0.5::numeric, true::boolean, 1::integer),
  ('2 פרוסות (~60 גרם)', '2 slices (~60g)', 60.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 2.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Bread, gluten-free, white, made with tapioca starch and brown rice flour
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('לחם ללא גלוטן, לבן, עם עמילן טפיוקה וקמח אורז חום', 'Bread, gluten-free, white, made with tapioca starch and brown rice flour', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('פרוסה (~30 גרם)'::text, '1 slice (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('2 פרוסות (~60 גרם)', '2 slices (~60g)', 60.0, 0.0, 1.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 2.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Bread, gluten-free, whole grain, made with tapioca starch and brown rice flour
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('לחם ללא גלוטן, דגנים שלמים, עם עמילן טפיוקה וקמח אורז חום', 'Bread, gluten-free, whole grain, made with tapioca starch and brown rice flour', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('פרוסה (~30 גרם)'::text, '1 slice (~30g)'::text, 30.0::numeric, 0.0::numeric, 0.5::numeric, true::boolean, 1::integer),
  ('2 פרוסות (~60 גרם)', '2 slices (~60g)', 60.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 2.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Bread, irish soda, prepared from recipe
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('לחם אירי סודה, ביתי', 'Bread, irish soda, prepared from recipe', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('פרוסה (~30 גרם)'::text, '1 slice (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('2 פרוסות (~60 גרם)', '2 slices (~60g)', 60.0, 0.0, 1.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 2.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Bread, multi-grain (includes whole-grain)
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('לחם דגנים מרובים', 'Bread, multi-grain (includes whole-grain)', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('פרוסה (~30 גרם)'::text, '1 slice (~30g)'::text, 30.0::numeric, 0.0::numeric, 0.5::numeric, true::boolean, 1::integer),
  ('2 פרוסות (~60 גרם)', '2 slices (~60g)', 60.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 2.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Bread, multi-grain, toasted (includes whole-grain)
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('לחם דגנים מרובים, קלוי', 'Bread, multi-grain, toasted (includes whole-grain)', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('פרוסה (~30 גרם)'::text, '1 slice (~30g)'::text, 30.0::numeric, 0.0::numeric, 0.5::numeric, true::boolean, 1::integer),
  ('2 פרוסות (~60 גרם)', '2 slices (~60g)', 60.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 2.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Bread, naan, plain, commercially prepared, refrigerated
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('לחם נאן פשוט, מקומי, מקורר', 'Bread, naan, plain, commercially prepared, refrigerated', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('פרוסה (~30 גרם)'::text, '1 slice (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('2 פרוסות (~60 גרם)', '2 slices (~60g)', 60.0, 0.0, 1.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 2.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Bread, naan, whole wheat, commercially prepared, refrigerated
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('לחם נאן מחיטה מלאה, מקומי, מקורר', 'Bread, naan, whole wheat, commercially prepared, refrigerated', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('פרוסה (~30 גרם)'::text, '1 slice (~30g)'::text, 30.0::numeric, 0.0::numeric, 0.5::numeric, true::boolean, 1::integer),
  ('2 פרוסות (~60 גרם)', '2 slices (~60g)', 60.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 2.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Bread, oat bran
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('לחם סלילת שיבולת שועל', 'Bread, oat bran', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('פרוסה (~30 גרם)'::text, '1 slice (~30g)'::text, 30.0::numeric, 0.0::numeric, 0.5::numeric, true::boolean, 1::integer),
  ('2 פרוסות (~60 גרם)', '2 slices (~60g)', 60.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 2.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Bread, oat bran, toasted
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('לחם סלילת שיבולת שועל, קלוי', 'Bread, oat bran, toasted', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('פרוסה (~30 גרם)'::text, '1 slice (~30g)'::text, 30.0::numeric, 0.0::numeric, 0.5::numeric, true::boolean, 1::integer),
  ('2 פרוסות (~60 גרם)', '2 slices (~60g)', 60.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 2.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Bread, oatmeal
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('לחם שיבולת שועל', 'Bread, oatmeal', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('פרוסה (~30 גרם)'::text, '1 slice (~30g)'::text, 30.0::numeric, 0.0::numeric, 0.5::numeric, true::boolean, 1::integer),
  ('2 פרוסות (~60 גרם)', '2 slices (~60g)', 60.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 2.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Bread, oatmeal, toasted
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('לחם שיבולת שועל, קלוי', 'Bread, oatmeal, toasted', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('פרוסה (~30 גרם)'::text, '1 slice (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('2 פרוסות (~60 גרם)', '2 slices (~60g)', 60.0, 0.0, 1.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 2.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Bread, pan dulce, sweet yeast bread
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('לחם מתוק, בצק שמרים', 'Bread, pan dulce, sweet yeast bread', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('פרוסה (~30 גרם)'::text, '1 slice (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('2 פרוסות (~60 גרם)', '2 slices (~60g)', 60.0, 0.0, 1.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 2.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Bread, paratha, whole wheat, commercially prepared, frozen
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('לחם פראתה מחיטה מלאה, מקומי, קפוא', 'Bread, paratha, whole wheat, commercially prepared, frozen', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('פרוסה (~30 גרם)'::text, '1 slice (~30g)'::text, 30.0::numeric, 0.0::numeric, 0.5::numeric, true::boolean, 1::integer),
  ('2 פרוסות (~60 גרם)', '2 slices (~60g)', 60.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 2.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Bread, pita, white, enriched
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('לחם פיתה לבן', 'Bread, pita, white, enriched', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('פרוסה (~30 גרם)'::text, '1 slice (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.5::numeric, true::boolean, 1::integer),
  ('2 פרוסות (~60 גרם)', '2 slices (~60g)', 60.0, 0.0, 2.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 4.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Bread, pita, white, unenriched
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('לחם פיתה לבן, ללא העשרה', 'Bread, pita, white, unenriched', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('פרוסה (~30 גרם)'::text, '1 slice (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.5::numeric, true::boolean, 1::integer),
  ('2 פרוסות (~60 גרם)', '2 slices (~60g)', 60.0, 0.0, 2.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 4.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Bread, pita, whole-wheat
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('לחם פיתה מחיטה מלאה', 'Bread, pita, whole-wheat', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('פרוסה (~30 גרם)'::text, '1 slice (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.5::numeric, true::boolean, 1::integer),
  ('2 פרוסות (~60 גרם)', '2 slices (~60g)', 60.0, 0.0, 2.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 4.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Bread, potato
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('לחם תפוח אדמה', 'Bread, potato', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('פרוסה (~30 גרם)'::text, '1 slice (~30g)'::text, 30.0::numeric, 0.0::numeric, 0.5::numeric, true::boolean, 1::integer),
  ('2 פרוסות (~60 גרם)', '2 slices (~60g)', 60.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 2.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Bread, pound cake type, pan de torta salvadoran
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('לחם, עוגת קילופונד', 'Bread, pound cake type, pan de torta salvadoran', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (~25 גרם)'::text, '1 portion (~25g)'::text, 25.0::numeric, 0.0::numeric, 0.5::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.0, 2.5, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Bread, protein (includes gluten)
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('לחם חלבון', 'Bread, protein (includes gluten)', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('פרוסה (~30 גרם)'::text, '1 slice (~30g)'::text, 30.0::numeric, 0.0::numeric, 0.5::numeric, true::boolean, 1::integer),
  ('2 פרוסות (~60 גרם)', '2 slices (~60g)', 60.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 2.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Cereals ready-to-eat, ALPEN
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('דגני בוקר מוכנים, ALPEN', 'Cereals ready-to-eat, ALPEN', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('קערה (~40 גרם)'::text, '1 bowl (~40g)'::text, 40.0::numeric, 0.0::numeric, 1.5::numeric, true::boolean, 1::integer),
  ('3 כפות (~25 גרם)', '3 tbsp (~25g)', 25.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 3.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Cereals ready-to-eat, BARBARA'S PUFFINS, original
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('דגני בוקר מוכנים, BARBARA''S PUFFINS, מקורי', 'Cereals ready-to-eat, BARBARA''S PUFFINS, original', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('קערה (~40 גרם)'::text, '1 bowl (~40g)'::text, 40.0::numeric, 0.0::numeric, 1.5::numeric, true::boolean, 1::integer),
  ('3 כפות (~25 גרם)', '3 tbsp (~25g)', 25.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 3.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Cereals ready-to-eat, FAMILIA
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('דגני בוקר מוכנים, FAMILIA', 'Cereals ready-to-eat, FAMILIA', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('קערה (~40 גרם)'::text, '1 bowl (~40g)'::text, 40.0::numeric, 0.0::numeric, 1.5::numeric, true::boolean, 1::integer),
  ('3 כפות (~25 גרם)', '3 tbsp (~25g)', 25.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 3.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Cereals ready-to-eat, GENERAL MILLS, CHEERIOS
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('דגני בוקר מוכנים, GENERAL MILLS, CHEERIOS', 'Cereals ready-to-eat, GENERAL MILLS, CHEERIOS', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('קערה (~40 גרם)'::text, '1 bowl (~40g)'::text, 40.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('3 כפות (~25 גרם)', '3 tbsp (~25g)', 25.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 3.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Cereals ready-to-eat, HEALTH VALLEY, FIBER 7 Flakes
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('דגני בוקר מוכנים, HEALTH VALLEY, FIBER 7 Flakes', 'Cereals ready-to-eat, HEALTH VALLEY, FIBER 7 Flakes', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('קערה (~40 גרם)'::text, '1 bowl (~40g)'::text, 40.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('3 כפות (~25 גרם)', '3 tbsp (~25g)', 25.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 3.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Cereals ready-to-eat, MALT-O-MEAL, Apple ZINGS
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('דגני בוקר מוכנים, MALT-O-MEAL, Apple ZINGS', 'Cereals ready-to-eat, MALT-O-MEAL, Apple ZINGS', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('קערה (~40 גרם)'::text, '1 bowl (~40g)'::text, 40.0::numeric, 0.0::numeric, 2.0::numeric, true::boolean, 1::integer),
  ('3 כפות (~25 גרם)', '3 tbsp (~25g)', 25.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 4.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Cereals ready-to-eat, MALT-O-MEAL, BERRY COLOSSAL CRUNCH
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('דגני בוקר מוכנים, MALT-O-MEAL, BERRY COLOSSAL CRUNCH', 'Cereals ready-to-eat, MALT-O-MEAL, BERRY COLOSSAL CRUNCH', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('קערה (~40 גרם)'::text, '1 bowl (~40g)'::text, 40.0::numeric, 0.0::numeric, 1.5::numeric, true::boolean, 1::integer),
  ('3 כפות (~25 גרם)', '3 tbsp (~25g)', 25.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 4.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Cereals ready-to-eat, MALT-O-MEAL, Blueberry MUFFIN TOPS Cereal
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('דגני בוקר מוכנים, MALT-O-MEAL, Blueberry MUFFIN TOPS', 'Cereals ready-to-eat, MALT-O-MEAL, Blueberry MUFFIN TOPS Cereal', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('קערה (~40 גרם)'::text, '1 bowl (~40g)'::text, 40.0::numeric, 0.0::numeric, 1.5::numeric, true::boolean, 1::integer),
  ('3 כפות (~25 גרם)', '3 tbsp (~25g)', 25.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 4.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Cereals ready-to-eat, MALT-O-MEAL, CHOCOLATE MARSHMALLOW MATEYS
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('דגני בוקר מוכנים, MALT-O-MEAL, CHOCOLATE MARSHMALLOW MATEYS', 'Cereals ready-to-eat, MALT-O-MEAL, CHOCOLATE MARSHMALLOW MATEYS', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('קערה (~40 גרם)'::text, '1 bowl (~40g)'::text, 40.0::numeric, 0.0::numeric, 2.0::numeric, true::boolean, 1::integer),
  ('3 כפות (~25 גרם)', '3 tbsp (~25g)', 25.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 4.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Cereals ready-to-eat, MALT-O-MEAL, CINNAMON TOASTERS
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('דגני בוקר מוכנים, MALT-O-MEAL, CINNAMON TOASTERS', 'Cereals ready-to-eat, MALT-O-MEAL, CINNAMON TOASTERS', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('קערה (~40 גרם)'::text, '1 bowl (~40g)'::text, 40.0::numeric, 0.0::numeric, 1.5::numeric, true::boolean, 1::integer),
  ('3 כפות (~25 גרם)', '3 tbsp (~25g)', 25.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 3.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Cereals ready-to-eat, MALT-O-MEAL, COCO-ROOS
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('דגני בוקר מוכנים, MALT-O-MEAL, COCO-ROOS', 'Cereals ready-to-eat, MALT-O-MEAL, COCO-ROOS', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('קערה (~40 גרם)'::text, '1 bowl (~40g)'::text, 40.0::numeric, 0.0::numeric, 1.5::numeric, true::boolean, 1::integer),
  ('3 כפות (~25 גרם)', '3 tbsp (~25g)', 25.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 4.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Cereals ready-to-eat, MALT-O-MEAL, COLOSSAL CRUNCH
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('דגני בוקר מוכנים, MALT-O-MEAL, COLOSSAL CRUNCH', 'Cereals ready-to-eat, MALT-O-MEAL, COLOSSAL CRUNCH', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('קערה (~40 גרם)'::text, '1 bowl (~40g)'::text, 40.0::numeric, 0.0::numeric, 1.5::numeric, true::boolean, 1::integer),
  ('3 כפות (~25 גרם)', '3 tbsp (~25g)', 25.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 4.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Cereals ready-to-eat, MALT-O-MEAL, CORN BURSTS
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('דגני בוקר מוכנים, MALT-O-MEAL, CORN BURSTS', 'Cereals ready-to-eat, MALT-O-MEAL, CORN BURSTS', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('קערה (~40 גרם)'::text, '1 bowl (~40g)'::text, 40.0::numeric, 0.0::numeric, 2.0::numeric, true::boolean, 1::integer),
  ('3 כפות (~25 גרם)', '3 tbsp (~25g)', 25.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 4.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Cereals ready-to-eat, MALT-O-MEAL, Cocoa DYNO-BITES
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('דגני בוקר מוכנים, MALT-O-MEAL, Cocoa DYNO-BITES', 'Cereals ready-to-eat, MALT-O-MEAL, Cocoa DYNO-BITES', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('קערה (~40 גרם)'::text, '1 bowl (~40g)'::text, 40.0::numeric, 0.0::numeric, 2.0::numeric, true::boolean, 1::integer),
  ('3 כפות (~25 גרם)', '3 tbsp (~25g)', 25.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 4.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Cereals ready-to-eat, MALT-O-MEAL, Crispy Rice
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('דגני בוקר מוכנים, MALT-O-MEAL, Crispy Rice', 'Cereals ready-to-eat, MALT-O-MEAL, Crispy Rice', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('קערה (~40 גרם)'::text, '1 bowl (~40g)'::text, 40.0::numeric, 0.0::numeric, 2.0::numeric, true::boolean, 1::integer),
  ('3 כפות (~25 גרם)', '3 tbsp (~25g)', 25.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 4.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Cereals ready-to-eat, MALT-O-MEAL, Frosted Flakes
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('דגני בוקר מוכנים, MALT-O-MEAL, Frosted Flakes', 'Cereals ready-to-eat, MALT-O-MEAL, Frosted Flakes', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('קערה (~40 גרם)'::text, '1 bowl (~40g)'::text, 40.0::numeric, 0.0::numeric, 2.0::numeric, true::boolean, 1::integer),
  ('3 כפות (~25 גרם)', '3 tbsp (~25g)', 25.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 4.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Cereals ready-to-eat, MALT-O-MEAL, Frosted Mini SPOONERS
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('דגני בוקר מוכנים, MALT-O-MEAL, Frosted Mini SPOONERS', 'Cereals ready-to-eat, MALT-O-MEAL, Frosted Mini SPOONERS', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('קערה (~40 גרם)'::text, '1 bowl (~40g)'::text, 40.0::numeric, 0.0::numeric, 1.5::numeric, true::boolean, 1::integer),
  ('3 כפות (~25 גרם)', '3 tbsp (~25g)', 25.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 3.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Cereals ready-to-eat, MALT-O-MEAL, Fruity DYNO-BITES
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('דגני בוקר מוכנים, MALT-O-MEAL, Fruity DYNO-BITES', 'Cereals ready-to-eat, MALT-O-MEAL, Fruity DYNO-BITES', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('קערה (~40 גרם)'::text, '1 bowl (~40g)'::text, 40.0::numeric, 0.0::numeric, 2.0::numeric, true::boolean, 1::integer),
  ('3 כפות (~25 גרם)', '3 tbsp (~25g)', 25.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 4.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Cereals ready-to-eat, MALT-O-MEAL, GOLDEN PUFFS
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('דגני בוקר מוכנים, MALT-O-MEAL, GOLDEN PUFFS', 'Cereals ready-to-eat, MALT-O-MEAL, GOLDEN PUFFS', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('קערה (~40 גרם)'::text, '1 bowl (~40g)'::text, 40.0::numeric, 0.0::numeric, 2.0::numeric, true::boolean, 1::integer),
  ('3 כפות (~25 גרם)', '3 tbsp (~25g)', 25.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 4.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

COMMIT;
