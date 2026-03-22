BEGIN;

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
-- [DAIRY] Mozzarella Cheese
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גבינה מוצרלה', 'Mozzarella Cheese', 'dairy', 'yellow', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('פרוסה (~30 גרם)'::text, '1 slice (~30g)'::text, 30.0::numeric, 0.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 2.5, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Feta Cheese
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גבינת פטה', 'Feta Cheese', 'dairy', 'yellow', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('50 גרם'::text, '50g'::text, 50.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
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

COMMIT;
