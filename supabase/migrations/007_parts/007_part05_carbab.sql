BEGIN;

-- [CARB] Pasta, dry, unenriched -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('פסטה יבשה לא מועשרת', 'Pasta, dry, unenriched', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~200 גרם)'::text, '1 cup cooked (~200g)'::text, 200.0::numeric, 0.0::numeric, 7.0::numeric, true::boolean, 1::integer),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 3.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Pasta, fresh-refrigerated, plain, as purchased -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('פסטה טרייה קרורה חלקה כרכישה', 'Pasta, fresh-refrigerated, plain, as purchased', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~200 גרם)'::text, '1 cup cooked (~200g)'::text, 200.0::numeric, 0.0::numeric, 5.0::numeric, true::boolean, 1::integer),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 2.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Pasta, fresh-refrigerated, plain, cooked
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('פסטה טרייה קרורה חלקה מבושלת', 'Pasta, fresh-refrigerated, plain, cooked', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~200 גרם)'::text, '1 cup cooked (~200g)'::text, 200.0::numeric, 0.0::numeric, 2.0::numeric, true::boolean, 1::integer),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.0, 0.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 1.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Pasta, fresh-refrigerated, spinach, as purchased -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('פסטה טרייה קרורה תרד כרכישה', 'Pasta, fresh-refrigerated, spinach, as purchased', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~200 גרם)'::text, '1 cup cooked (~200g)'::text, 200.0::numeric, 0.0::numeric, 6.0::numeric, true::boolean, 1::integer),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 3.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Pasta, fresh-refrigerated, spinach, cooked
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('פסטה טרייה קרורה תרד מבושלת', 'Pasta, fresh-refrigerated, spinach, cooked', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~200 גרם)'::text, '1 cup cooked (~200g)'::text, 200.0::numeric, 0.0::numeric, 3.0::numeric, true::boolean, 1::integer),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.0, 0.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 1.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Pasta, gluten-free, brown rice flour, cooked, TINKYADA
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('פסטה ללא גלוטן קמח אורז חום מבושלת', 'Pasta, gluten-free, brown rice flour, cooked, TINKYADA', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~200 גרם)'::text, '1 cup cooked (~200g)'::text, 200.0::numeric, 0.0::numeric, 3.0::numeric, true::boolean, 1::integer),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.0, 0.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 1.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Pasta, gluten-free, corn and rice flour, cooked
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('פסטה ללא גלוטן קמח תירס ואורז מבושלת', 'Pasta, gluten-free, corn and rice flour, cooked', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~200 גרם)'::text, '1 cup cooked (~200g)'::text, 200.0::numeric, 0.0::numeric, 4.0::numeric, true::boolean, 1::integer),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.0, 0.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 2.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Pasta, gluten-free, corn flour and quinoa flour, cooked, ANCIENT HARVEST
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('פסטה ללא גלוטן קמח תירס וקינואה מבושלת', 'Pasta, gluten-free, corn flour and quinoa flour, cooked, ANCIENT HARVEST', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~200 גרם)'::text, '1 cup cooked (~200g)'::text, 200.0::numeric, 0.0::numeric, 3.0::numeric, true::boolean, 1::integer),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.0, 0.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 1.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Pasta, gluten-free, corn, cooked
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('פסטה ללא גלוטן תירס מבושלת', 'Pasta, gluten-free, corn, cooked', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~200 גרם)'::text, '1 cup cooked (~200g)'::text, 200.0::numeric, 0.0::numeric, 2.0::numeric, true::boolean, 1::integer),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.0, 0.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 1.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Pasta, gluten-free, corn, dry -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('פסטה ללא גלוטן תירס יבשה', 'Pasta, gluten-free, corn, dry', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~200 גרם)'::text, '1 cup cooked (~200g)'::text, 200.0::numeric, 0.0::numeric, 7.0::numeric, true::boolean, 1::integer),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 3.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Pasta, gluten-free, rice flour and rice bran extract, cooked, DE BOLES
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('פסטה ללא גלוטן קמח אורז וגרעיני אורז מבושלת', 'Pasta, gluten-free, rice flour and rice bran extract, cooked, DE BOLES', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~200 גרם)'::text, '1 cup cooked (~200g)'::text, 200.0::numeric, 0.0::numeric, 4.0::numeric, true::boolean, 1::integer),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.0, 0.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 2.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Pasta, homemade, made with egg, cooked
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('פסטה ביתית עם ביצה מבושלת', 'Pasta, homemade, made with egg, cooked', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~200 גרם)'::text, '1 cup cooked (~200g)'::text, 200.0::numeric, 0.0::numeric, 2.0::numeric, true::boolean, 1::integer),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.0, 0.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 1.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Pasta, homemade, made without egg, cooked
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('פסטה ביתית ללא ביצה מבושלת', 'Pasta, homemade, made without egg, cooked', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~200 גרם)'::text, '1 cup cooked (~200g)'::text, 200.0::numeric, 0.0::numeric, 3.0::numeric, true::boolean, 1::integer),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.0, 0.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 1.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Pasta, whole grain, 51% whole wheat, remaining enriched semolina, cooked (Includes foods for USDA's Food Distribution Program)
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('פסטה תבואה שלמה חיטה 51% מועשרת מבושלת', 'Pasta, whole grain, 51% whole wheat, remaining enriched semolina, cooked (Includes foods for USDA''s Food Distribution Program)', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~200 גרם)'::text, '1 cup cooked (~200g)'::text, 200.0::numeric, 0.0::numeric, 3.0::numeric, true::boolean, 1::integer),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.0, 0.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 1.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Pasta, whole grain, 51% whole wheat, remaining enriched semolina, dry (Includes foods for USDA's Food Distribution Program) -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('פסטה תבואה שלמה חיטה 51% מועשרת יבשה', 'Pasta, whole grain, 51% whole wheat, remaining enriched semolina, dry (Includes foods for USDA''s Food Distribution Program)', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~200 גרם)'::text, '1 cup cooked (~200g)'::text, 200.0::numeric, 0.0::numeric, 6.0::numeric, true::boolean, 1::integer),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 3.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Pasta, whole grain, 51% whole wheat, remaining unenriched semolina, cooked
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('פסטה תבואה שלמה חיטה 51% לא מועשרת מבושלת', 'Pasta, whole grain, 51% whole wheat, remaining unenriched semolina, cooked', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~200 גרם)'::text, '1 cup cooked (~200g)'::text, 200.0::numeric, 0.0::numeric, 3.0::numeric, true::boolean, 1::integer),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.0, 0.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 1.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Pasta, whole grain, 51% whole wheat, remaining unenriched semolina, dry -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('פסטה, דגנים מלאים, 51% חיטה מלאה, סמולינה לא מועשרת שנותרה, יבשה', 'Pasta, whole grain, 51% whole wheat, remaining unenriched semolina, dry', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~200 גרם)'::text, '1 cup cooked (~200g)'::text, 200.0::numeric, 0.0::numeric, 6.0::numeric, true::boolean, 1::integer),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 3.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Pasta, whole-wheat, cooked (Includes foods for USDA's Food Distribution Program)
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('פסטה, חיטה מלאה, מבושלת', 'Pasta, whole-wheat, cooked (Includes foods for USDA''s Food Distribution Program)', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~200 גרם)'::text, '1 cup cooked (~200g)'::text, 200.0::numeric, 0.0::numeric, 3.0::numeric, true::boolean, 1::integer),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.0, 0.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 1.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Pasta, whole-wheat, dry (Includes foods for USDA's Food Distribution Program) -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('פסטה, חיטה מלאה, יבשה', 'Pasta, whole-wheat, dry (Includes foods for USDA''s Food Distribution Program)', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~200 גרם)'::text, '1 cup cooked (~200g)'::text, 200.0::numeric, 0.0::numeric, 6.0::numeric, true::boolean, 1::integer),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 3.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Quinoa, cooked
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('קינואה, מבושלת', 'Quinoa, cooked', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~200 גרם)'::text, '1 cup cooked (~200g)'::text, 200.0::numeric, 0.0::numeric, 2.0::numeric, true::boolean, 1::integer),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.0, 0.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 1.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Quinoa, uncooked -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('קינואה, יבשה', 'Quinoa, uncooked', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~200 גרם)'::text, '1 cup cooked (~200g)'::text, 200.0::numeric, 0.0::numeric, 6.0::numeric, true::boolean, 1::integer),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 3.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Andrea's, Gluten Free Soft Dinner Roll
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('לחם בוואקואום ללא גלוטן של אנדראה', 'Andrea''s, Gluten Free Soft Dinner Roll', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('פרוסה (~30 גרם)'::text, '1 slice (~30g)'::text, 30.0::numeric, 0.0::numeric, 0.5::numeric, true::boolean, 1::integer),
  ('2 פרוסות (~60 גרם)', '2 slices (~60g)', 60.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 2.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Archway Home Style Cookies, Chocolate Chip Ice Box
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('עוגיות בסגנון ביתי ארצ''וויי, שוקולד צ''יפס', 'Archway Home Style Cookies, Chocolate Chip Ice Box', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('פרוסה (~30 גרם)'::text, '1 slice (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('2 פרוסות (~60 גרם)', '2 slices (~60g)', 60.0, 0.0, 2.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 3.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Archway Home Style Cookies, Coconut Macaroon
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('עוגיות בסגנון ביתי ארצ''וויי, מקרון קוקוס', 'Archway Home Style Cookies, Coconut Macaroon', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('פרוסה (~30 גרם)'::text, '1 slice (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('2 פרוסות (~60 גרם)', '2 slices (~60g)', 60.0, 0.0, 2.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 3.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Archway Home Style Cookies, Date Filled Oatmeal
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('עוגיות בסגנון ביתי ארצ''וויי, שיבולת שועל ממולאת תמרים', 'Archway Home Style Cookies, Date Filled Oatmeal', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('פרוסה (~30 גרם)'::text, '1 slice (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('2 פרוסות (~60 גרם)', '2 slices (~60g)', 60.0, 0.0, 2.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 3.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Archway Home Style Cookies, Dutch Cocoa
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('עוגיות בסגנון ביתי ארצ''וויי, קקאו הולנדי', 'Archway Home Style Cookies, Dutch Cocoa', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('פרוסה (~30 גרם)'::text, '1 slice (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('2 פרוסות (~60 גרם)', '2 slices (~60g)', 60.0, 0.0, 2.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 3.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Archway Home Style Cookies, Frosty Lemon
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('עוגיות בסגנון ביתי ארצ''וויי, לימון מוקפח', 'Archway Home Style Cookies, Frosty Lemon', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('פרוסה (~30 גרם)'::text, '1 slice (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('2 פרוסות (~60 גרם)', '2 slices (~60g)', 60.0, 0.0, 2.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 3.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Archway Home Style Cookies, Iced Molasses
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('עוגיות בסגנון ביתי ארצ''וויי, מולסס מוקפח', 'Archway Home Style Cookies, Iced Molasses', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('פרוסה (~30 גרם)'::text, '1 slice (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('2 פרוסות (~60 גרם)', '2 slices (~60g)', 60.0, 0.0, 2.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 3.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Archway Home Style Cookies, Iced Oatmeal
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('עוגיות בסגנון ביתי ארצ''וויי, שיבולת שועל מוקפחת', 'Archway Home Style Cookies, Iced Oatmeal', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('פרוסה (~30 גרם)'::text, '1 slice (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('2 פרוסות (~60 גרם)', '2 slices (~60g)', 60.0, 0.0, 2.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 3.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Archway Home Style Cookies, Molasses
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('עוגיות בסגנון ביתי ארצ''וויי, מולסס', 'Archway Home Style Cookies, Molasses', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('פרוסה (~30 גרם)'::text, '1 slice (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('2 פרוסות (~60 גרם)', '2 slices (~60g)', 60.0, 0.0, 2.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 3.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Archway Home Style Cookies, Oatmeal
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('עוגיות בסגנון ביתי ארצ''וויי, שיבולת שועל', 'Archway Home Style Cookies, Oatmeal', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('פרוסה (~30 גרם)'::text, '1 slice (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('2 פרוסות (~60 גרם)', '2 slices (~60g)', 60.0, 0.0, 2.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 3.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Archway Home Style Cookies, Oatmeal Raisin
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('עוגיות בסגנון ביתי ארצ''וויי, שיבולת שועל וצימוקים', 'Archway Home Style Cookies, Oatmeal Raisin', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('פרוסה (~30 גרם)'::text, '1 slice (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('2 פרוסות (~60 גרם)', '2 slices (~60g)', 60.0, 0.0, 2.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 3.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Archway Home Style Cookies, Old Fashioned Molasses
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('עוגיות בסגנון ביתי ארצ''וויי, מולסס בסגנון קלאסי', 'Archway Home Style Cookies, Old Fashioned Molasses', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('פרוסה (~30 גרם)'::text, '1 slice (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('2 פרוסות (~60 גרם)', '2 slices (~60g)', 60.0, 0.0, 2.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 3.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Archway Home Style Cookies, Old Fashioned Windmill Cookies
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('עוגיות בסגנון ביתי ארצ''וויי, טחנות קלאסיות', 'Archway Home Style Cookies, Old Fashioned Windmill Cookies', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('פרוסה (~30 גרם)'::text, '1 slice (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('2 פרוסות (~60 גרם)', '2 slices (~60g)', 60.0, 0.0, 2.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 3.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Archway Home Style Cookies, Peanut Butter
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('עוגיות בסגנון ביתי ארצ''וויי, חמאת בוטנים', 'Archway Home Style Cookies, Peanut Butter', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('פרוסה (~30 גרם)'::text, '1 slice (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('2 פרוסות (~60 גרם)', '2 slices (~60g)', 60.0, 0.0, 2.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 3.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Archway Home Style Cookies, Raspberry Filled
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('עוגיות בסגנון ביתי ארצ''וויי, ממולאת פטל', 'Archway Home Style Cookies, Raspberry Filled', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('פרוסה (~30 גרם)'::text, '1 slice (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('2 פרוסות (~60 גרם)', '2 slices (~60g)', 60.0, 0.0, 2.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 3.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Archway Home Style Cookies, Reduced Fat Ginger Snaps
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('עוגיות בסגנון ביתי ארצ''וויי, ג''ינג''ר סנפס דל שומן', 'Archway Home Style Cookies, Reduced Fat Ginger Snaps', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('פרוסה (~30 גרם)'::text, '1 slice (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('2 פרוסות (~60 גרם)', '2 slices (~60g)', 60.0, 0.0, 2.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 4.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Archway Home Style Cookies, Strawberry Filled
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('עוגיות בסגנון ביתי ארצ''וויי, ממולאת תות', 'Archway Home Style Cookies, Strawberry Filled', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('פרוסה (~30 גרם)'::text, '1 slice (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('2 פרוסות (~60 גרם)', '2 slices (~60g)', 60.0, 0.0, 2.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 3.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Archway Home Style Cookies, Sugar Free Oatmeal
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('עוגיות בסגנון ביתי ארצ''וויי, שיבולת שועל ללא סוכר', 'Archway Home Style Cookies, Sugar Free Oatmeal', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('פרוסה (~30 גרם)'::text, '1 slice (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('2 פרוסות (~60 גרם)', '2 slices (~60g)', 60.0, 0.0, 2.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 3.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Artificial Blueberry Muffin Mix, dry
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('תערובת מאפין בלובריז כחול מלאכותי, יבשה', 'Artificial Blueberry Muffin Mix, dry', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (~25 גרם)'::text, '1 portion (~25g)'::text, 25.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.0, 4.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

COMMIT;
