BEGIN;

-- ============================================================
-- SNACK (123 foods)
-- ============================================================
-- [SNACK] Breakfast bar, corn flake crust with fruit
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('חטיף ארוחת בוקר, קרום פלוקס תירס עם פרי', 'Breakfast bar, corn flake crust with fruit', 'snack', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (~30 גרם)'::text, '1 portion (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.0, 3.5, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [SNACK] Breakfast bars, oats, sugar, raisins, coconut (include granola bar)
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('חטיפי ארוחת בוקר, שיבולת שועל, סוכר, צימוקים, קוקוס', 'Breakfast bars, oats, sugar, raisins, coconut (include granola bar)', 'snack', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (~30 גרם)'::text, '1 portion (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.0, 3.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [SNACK] Cheese puffs and twists, corn based, baked, low fat
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('פופקורן שיפודים מתוקים, בסיס תירס, אפוי, שומן נמוך', 'Cheese puffs and twists, corn based, baked, low fat', 'snack', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (~30 גרם)'::text, '1 portion (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.0, 3.5, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [SNACK] Formulated Bar, SOUTH BEACH protein bar -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('חטיף חלבון מעוצב, SOUTH BEACH', 'Formulated Bar, SOUTH BEACH protein bar', 'snack', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (~30 גרם)'::text, '1 portion (~30g)'::text, 30.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 4.0, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [SNACK] Formulated bar, LUNA BAR, NUTZ OVER CHOCOLATE -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('חטיף מעוצב, LUNA BAR, NUTZ OVER CHOCOLATE', 'Formulated bar, LUNA BAR, NUTZ OVER CHOCOLATE', 'snack', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (~30 גרם)'::text, '1 portion (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.0, 2.5, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [SNACK] Formulated bar, MARS SNACKFOOD US, COCOAVIA, Chocolate Almond Snack Bar -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('חטיף מעוצב, COCOAVIA, שוקולד ושקדים', 'Formulated bar, MARS SNACKFOOD US, COCOAVIA, Chocolate Almond Snack Bar', 'snack', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (~30 גרם)'::text, '1 portion (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.0, 2.5, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [SNACK] Formulated bar, MARS SNACKFOOD US, COCOAVIA, Chocolate Blueberry Snack Bar
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('חטיף מעוצב, COCOAVIA, שוקולד וטוויברי', 'Formulated bar, MARS SNACKFOOD US, COCOAVIA, Chocolate Blueberry Snack Bar', 'snack', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (~30 גרם)'::text, '1 portion (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.0, 2.5, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [SNACK] Formulated bar, MARS SNACKFOOD US, SNICKERS MARATHON Chewy Chocolate Peanut Bar -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('חטיף מעוצב, SNICKERS MARATHON, שוקולד בוטנים רך', 'Formulated bar, MARS SNACKFOOD US, SNICKERS MARATHON Chewy Chocolate Peanut Bar', 'snack', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (~30 גרם)'::text, '1 portion (~30g)'::text, 30.0::numeric, 0.0::numeric, 0.5::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.0, 2.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [SNACK] Formulated bar, MARS SNACKFOOD US, SNICKERS MARATHON Double Chocolate Nut Bar -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('חטיף מעוצב, SNICKERS MARATHON, שוקולד כפול אגוזים', 'Formulated bar, MARS SNACKFOOD US, SNICKERS MARATHON Double Chocolate Nut Bar', 'snack', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (~30 גרם)'::text, '1 portion (~30g)'::text, 30.0::numeric, 0.0::numeric, 0.5::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.0, 2.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [SNACK] Formulated bar, MARS SNACKFOOD US, SNICKERS MARATHON Energy Bar, all flavors -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('חטיף אנרגיה מעוצב, SNICKERS MARATHON, כל הטעמים', 'Formulated bar, MARS SNACKFOOD US, SNICKERS MARATHON Energy Bar, all flavors', 'snack', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (~30 גרם)'::text, '1 portion (~30g)'::text, 30.0::numeric, 0.0::numeric, 0.5::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.0, 2.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [SNACK] Formulated bar, MARS SNACKFOOD US, SNICKERS MARATHON Honey Nut Oat Bar -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('חטיף מעוצב, SNICKERS MARATHON, דבש אגוז שיבולת שועל', 'Formulated bar, MARS SNACKFOOD US, SNICKERS MARATHON Honey Nut Oat Bar', 'snack', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (~30 גרם)'::text, '1 portion (~30g)'::text, 30.0::numeric, 0.0::numeric, 0.5::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.0, 2.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [SNACK] Formulated bar, MARS SNACKFOOD US, SNICKERS MARATHON MULTIGRAIN CRUNCH BAR
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('חטיף מעוצב, SNICKERS MARATHON, דגנים מרובים', 'Formulated bar, MARS SNACKFOOD US, SNICKERS MARATHON MULTIGRAIN CRUNCH BAR', 'snack', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (~30 גרם)'::text, '1 portion (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.0, 2.5, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [SNACK] Formulated bar, MARS SNACKFOOD US, SNICKERS MARATHON Protein Performance Bar, Caramel Nut Rush -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('חטיף חלבון מעוצב, SNICKERS MARATHON, קרמל אגוז', 'Formulated bar, MARS SNACKFOOD US, SNICKERS MARATHON Protein Performance Bar, Caramel Nut Rush', 'snack', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (~30 גרם)'::text, '1 portion (~30g)'::text, 30.0::numeric, 0.0::numeric, 0.5::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.0, 2.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [SNACK] Formulated bar, POWER BAR, chocolate
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('חטיף מעוצב, POWER BAR, שוקולד', 'Formulated bar, POWER BAR, chocolate', 'snack', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (~30 גרם)'::text, '1 portion (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.0, 3.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [SNACK] Formulated bar, SLIM-FAST OPTIMA meal bar, milk chocolate peanut
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('חטיף ארוחה מעוצב, SLIM-FAST OPTIMA, שוקולד חלב בוטנים', 'Formulated bar, SLIM-FAST OPTIMA meal bar, milk chocolate peanut', 'snack', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (~30 גרם)'::text, '1 portion (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.0, 3.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [SNACK] Formulated bar, ZONE PERFECT CLASSIC CRUNCH BAR, mixed flavors -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('חטיף מעוצב, ZONE PERFECT, טעמים מעורבים', 'Formulated bar, ZONE PERFECT CLASSIC CRUNCH BAR, mixed flavors', 'snack', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (~30 גרם)'::text, '1 portion (~30g)'::text, 30.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 4.5, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [SNACK] Formulated bar, high fiber, chewy, oats and chocolate -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('חטיף מעוצב, סיבים תזונתיים, שיבולת שועל ושוקולד רך', 'Formulated bar, high fiber, chewy, oats and chocolate', 'snack', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (~30 גרם)'::text, '1 portion (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.0, 2.5, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [SNACK] Granola bar, soft, milk chocolate coated, peanut butter
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('חטיף גרנולה, רך, מצופה שוקולד חלב, חמאת בוטנים', 'Granola bar, soft, milk chocolate coated, peanut butter', 'snack', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (~30 גרם)'::text, '1 portion (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.0, 2.5, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [SNACK] Milk and cereal bar
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('חטיף חלב ודגנים', 'Milk and cereal bar', 'snack', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (~30 גרם)'::text, '1 portion (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.0, 3.5, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [SNACK] Popcorn, microwave, low fat and sodium
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('פופקורן, מיקרוגל, שומן וסודיום נמוכים', 'Popcorn, microwave, low fat and sodium', 'snack', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (~30 גרם)'::text, '1 portion (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.0, 3.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [SNACK] Popcorn, microwave, regular (butter) flavor, made with palm oil -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('פופקורן, מיקרוגל, חמאה רגילה, בשמן דקל', 'Popcorn, microwave, regular (butter) flavor, made with palm oil', 'snack', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (~30 גרם)'::text, '1 portion (~30g)'::text, 30.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 5.5, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [SNACK] Popcorn, sugar syrup/caramel, fat-free
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('פופקורן, קרמל, ללא שומן', 'Popcorn, sugar syrup/caramel, fat-free', 'snack', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (~30 גרם)'::text, '1 portion (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.5::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.0, 4.5, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [SNACK] Potato chips, without salt, reduced fat
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('צ''יפס תפוחי אדמה, ללא מלח, שומן מופחת', 'Potato chips, without salt, reduced fat', 'snack', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (~30 גרם)'::text, '1 portion (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.0, 3.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [SNACK] Pretzels, soft
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('מלחי עדין', 'Pretzels, soft', 'snack', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (~30 גרם)'::text, '1 portion (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.0, 3.5, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [SNACK] Pretzels, soft, unsalted
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('מלחי עדין, ללא מלח', 'Pretzels, soft, unsalted', 'snack', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (~30 גרם)'::text, '1 portion (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.0, 3.5, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [SNACK] Rice and Wheat cereal bar
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('חטיף אורז וחיטה', 'Rice and Wheat cereal bar', 'snack', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (~30 גרם)'::text, '1 portion (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.0, 3.5, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [SNACK] Rice cake, cracker (include hain mini rice cakes)
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('עוגיית אורז, קרקר', 'Rice cake, cracker (include hain mini rice cakes)', 'snack', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (~30 גרם)'::text, '1 portion (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.0, 4.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [SNACK] Rice crackers
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('קרקרי אורז', 'Rice crackers', 'snack', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (~30 גרם)'::text, '1 portion (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.0, 4.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [SNACK] Snack, BALANCE, original bar -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('חטיף מעוצב, BALANCE, מקורי', 'Snack, BALANCE, original bar', 'snack', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (~30 גרם)'::text, '1 portion (~30g)'::text, 30.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 4.0, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [SNACK] Snack, Mixed Berry Bar
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('חטיף, פירות יער מעורבים', 'Snack, Mixed Berry Bar', 'snack', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (~30 גרם)'::text, '1 portion (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.0, 2.5, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [SNACK] Snack, Pretzel, hard chocolate coated
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('חטיף, מלח קשה מצופה שוקולד', 'Snack, Pretzel, hard chocolate coated', 'snack', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (~30 גרם)'::text, '1 portion (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.0, 3.5, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [SNACK] Snack, potato chips, made from dried potatoes, plain
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('חטיף, צ''יפס תפוחי אדמה, מתפוחי אדמה מיובשים, טבעי', 'Snack, potato chips, made from dried potatoes, plain', 'snack', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (~30 גרם)'::text, '1 portion (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.0, 2.5, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [SNACK] Snacks, CLIF BAR, mixed flavors
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('חטיף מעוצב, CLIF BAR, טעמים מעורבים', 'Snacks, CLIF BAR, mixed flavors', 'snack', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (~30 גרם)'::text, '1 portion (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.0, 3.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [SNACK] Snacks, FARLEY CANDY, FARLEY Fruit Snacks, with vitamins A, C, and E
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('חטיף פירות פארלי עם ויטמינים A, C ו-E', 'Snacks, FARLEY CANDY, FARLEY Fruit Snacks, with vitamins A, C, and E', 'snack', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (~30 גרם)'::text, '1 portion (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.0, 4.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [SNACK] Snacks, FRITOLAY, SUNCHIPS, Multigrain Snack, Harvest Cheddar flavor
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('סאנצ''יפס מולטיגריין בטעם צ''דר', 'Snacks, FRITOLAY, SUNCHIPS, Multigrain Snack, Harvest Cheddar flavor', 'snack', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (~30 גרם)'::text, '1 portion (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.0, 3.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [SNACK] Snacks, FRITOLAY, SUNCHIPS, Multigrain Snack, original flavor
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('סאנצ''יפס מולטיגריין בטעם מקורי', 'Snacks, FRITOLAY, SUNCHIPS, Multigrain Snack, original flavor', 'snack', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (~30 גרם)'::text, '1 portion (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.0, 3.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [SNACK] Snacks, FRITOLAY, SUNCHIPS, multigrain, French onion flavor
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('סאנצ''יפס מולטיגריין בטעם בצל צרפתי', 'Snacks, FRITOLAY, SUNCHIPS, multigrain, French onion flavor', 'snack', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (~30 גרם)'::text, '1 portion (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.0, 3.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [SNACK] Snacks, GENERAL MILLS, BETTY CROCKER Fruit Roll Ups, berry flavored, with vitamin C
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('פירות רולד-אפ בטעם ברי עם ויטמין C', 'Snacks, GENERAL MILLS, BETTY CROCKER Fruit Roll Ups, berry flavored, with vitamin C', 'snack', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (~30 גרם)'::text, '1 portion (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.5::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.0, 4.5, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [SNACK] Snacks, KELLOGG, KELLOGG'S Low Fat Granola Bar, Crunchy Almond/Brown Sugar
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בר גרנולה דל שומן קלוג''ס בטעם שקדים וסוכר חום', 'Snacks, KELLOGG, KELLOGG''S Low Fat Granola Bar, Crunchy Almond/Brown Sugar', 'snack', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (~30 גרם)'::text, '1 portion (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.0, 3.5, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [SNACK] Snacks, KELLOGG, KELLOGG'S RICE KRISPIES TREATS Squares
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('ריס קריספיס טריטס ריבועים', 'Snacks, KELLOGG, KELLOGG''S RICE KRISPIES TREATS Squares', 'snack', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (~30 גרם)'::text, '1 portion (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.0, 4.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [SNACK] Snacks, KELLOGG, KELLOGG'S, NUTRI-GRAIN Cereal Bars, fruit
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בר ניוטריגריין דגנים בטעם פירות', 'Snacks, KELLOGG, KELLOGG''S, NUTRI-GRAIN Cereal Bars, fruit', 'snack', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (~30 גרם)'::text, '1 portion (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.0, 3.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [SNACK] Snacks, KRAFT, CORNNUTS, plain
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('קורן נאטס פשוט', 'Snacks, KRAFT, CORNNUTS, plain', 'snack', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (~30 גרם)'::text, '1 portion (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.0, 3.5, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [SNACK] Snacks, M&M MARS, COMBOS Snacks Cheddar Cheese Pretzel
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('קומבוס צ''דר שיז ופריץ', 'Snacks, M&M MARS, COMBOS Snacks Cheddar Cheese Pretzel', 'snack', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (~30 גרם)'::text, '1 portion (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.0, 3.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [SNACK] Snacks, M&M MARS, KUDOS Whole Grain Bar, M&M's milk chocolate -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בר קודוס דגנים שלמים עם M&M''s שוקולד חלב', 'Snacks, M&M MARS, KUDOS Whole Grain Bar, M&M''s milk chocolate', 'snack', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (~30 גרם)'::text, '1 portion (~30g)'::text, 30.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.5, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [SNACK] Snacks, M&M MARS, KUDOS Whole Grain Bar, chocolate chip
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בר קודוס דגנים שלמים בטעם שוקולד צ''יפס', 'Snacks, M&M MARS, KUDOS Whole Grain Bar, chocolate chip', 'snack', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (~30 גרם)'::text, '1 portion (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.0, 3.5, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [SNACK] Snacks, M&M MARS, KUDOS Whole Grain Bars, peanut butter
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בר קודוס דגנים שלמים בטעם חמאת בוטנים', 'Snacks, M&M MARS, KUDOS Whole Grain Bars, peanut butter', 'snack', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (~30 גרם)'::text, '1 portion (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.0, 3.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [SNACK] Snacks, NUTRI-GRAIN FRUIT AND NUT BAR
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בר ניוטריגריין פירות ואגוזים', 'Snacks, NUTRI-GRAIN FRUIT AND NUT BAR', 'snack', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (~30 גרם)'::text, '1 portion (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.0, 3.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [SNACK] Snacks, Pretzels, gluten- free made with cornstarch and potato flour
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('פרצלים ללא גלוטן מעשי עמילן תפוח אדמה', 'Snacks, Pretzels, gluten- free made with cornstarch and potato flour', 'snack', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (~30 גרם)'::text, '1 portion (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.0, 4.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [SNACK] Snacks, SUNKIST, SUNKIST Fruit Roll, strawberry, with vitamins A, C, and E
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('פירות רולד סאנקיסט בטעם תות עם ויטמינים A, C ו-E', 'Snacks, SUNKIST, SUNKIST Fruit Roll, strawberry, with vitamins A, C, and E', 'snack', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (~30 גרם)'::text, '1 portion (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.0, 4.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [SNACK] Snacks, bagel chips, plain
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('צ''יפס בייגל פשוט', 'Snacks, bagel chips, plain', 'snack', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (~30 גרם)'::text, '1 portion (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.0, 3.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [SNACK] Snacks, banana chips
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('צ''יפס בננה', 'Snacks, banana chips', 'snack', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (~30 גרם)'::text, '1 portion (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.0, 2.5, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [SNACK] Snacks, beef jerky, chopped and formed
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בשר מומסק חתוך ויצור מחדש', 'Snacks, beef jerky, chopped and formed', 'snack', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (~30 גרם)'::text, '1 portion (~30g)'::text, 30.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 4.0, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [SNACK] Snacks, beef sticks, smoked
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('מקלות בשר מעושנים', 'Snacks, beef sticks, smoked', 'snack', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (~30 גרם)'::text, '1 portion (~30g)'::text, 30.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 5.5, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [SNACK] Snacks, brown rice chips
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('צ''יפס אורז חום', 'Snacks, brown rice chips', 'snack', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (~30 גרם)'::text, '1 portion (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.0, 4.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [SNACK] Snacks, candy bits, yogurt covered with vitamin C
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('סוכריות עם ציפוי יוגורט עם ויטמין C', 'Snacks, candy bits, yogurt covered with vitamin C', 'snack', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (~30 גרם)'::text, '1 portion (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.5::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.0, 4.5, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [SNACK] Snacks, candy rolls, yogurt-covered, fruit flavored with high vitamin C
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('רולים סוכריות עם ציפוי יוגורט בטעם פירות עם ויטמין C גבוה', 'Snacks, candy rolls, yogurt-covered, fruit flavored with high vitamin C', 'snack', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (~30 גרם)'::text, '1 portion (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.0, 3.5, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [SNACK] Snacks, corn cakes
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('עוגות תירס', 'Snacks, corn cakes', 'snack', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (~30 גרם)'::text, '1 portion (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.0, 4.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [SNACK] Snacks, corn cakes, very low sodium
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('עוגות תירס נמוכות מאוד בנתרן', 'Snacks, corn cakes, very low sodium', 'snack', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (~30 גרם)'::text, '1 portion (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.0, 4.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [SNACK] Snacks, corn-based, extruded, chips, barbecue-flavor
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('צ''יפס על בסיס תירס בטעם ברביקיו', 'Snacks, corn-based, extruded, chips, barbecue-flavor', 'snack', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (~30 גרם)'::text, '1 portion (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.0, 2.5, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [SNACK] Snacks, corn-based, extruded, chips, barbecue-flavor, made with enriched masa flour
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('צ''יפס על בסיס תירס בטעם ברביקיו מקמח תירס מועשר', 'Snacks, corn-based, extruded, chips, barbecue-flavor, made with enriched masa flour', 'snack', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (~30 גרם)'::text, '1 portion (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.0, 3.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [SNACK] Snacks, corn-based, extruded, chips, plain
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('צ''יפס על בסיס תירס פשוט', 'Snacks, corn-based, extruded, chips, plain', 'snack', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (~30 גרם)'::text, '1 portion (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.0, 2.5, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [SNACK] Snacks, corn-based, extruded, chips, unsalted
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('צ''יפס על בסיס תירס ללא מלח', 'Snacks, corn-based, extruded, chips, unsalted', 'snack', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (~30 גרם)'::text, '1 portion (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.0, 2.5, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [SNACK] Snacks, corn-based, extruded, cones, plain
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('קונוסים על בסיס תירס פשוט', 'Snacks, corn-based, extruded, cones, plain', 'snack', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (~30 גרם)'::text, '1 portion (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.0, 3.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [SNACK] Snacks, corn-based, extruded, onion-flavor
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('חטיפים, תירס מוקפץ, טעם בצל', 'Snacks, corn-based, extruded, onion-flavor', 'snack', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (~30 גרם)'::text, '1 portion (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.0, 3.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [SNACK] Snacks, corn-based, extruded, puffs or twists, cheese-flavor
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('חטיפים, תירס מוקפץ, כדורים או טוויסטים, טעם גבינה', 'Snacks, corn-based, extruded, puffs or twists, cheese-flavor', 'snack', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (~30 גרם)'::text, '1 portion (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.0, 2.5, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [SNACK] Snacks, corn-based, extruded, puffs or twists, cheese-flavor, unenriched
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('חטיפים, תירס מוקפץ, כדורים או טוויסטים, טעם גבינה, ללא העשרה', 'Snacks, corn-based, extruded, puffs or twists, cheese-flavor, unenriched', 'snack', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (~30 גרם)'::text, '1 portion (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.0, 2.5, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [SNACK] Snacks, cornnuts, barbecue-flavor
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('חטיפים, אגרול תירס, טעם ברביקיו', 'Snacks, cornnuts, barbecue-flavor', 'snack', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (~30 גרם)'::text, '1 portion (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.0, 3.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [SNACK] Snacks, crisped rice bar, almond
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('חטיף אורז מוקשח, שקדים', 'Snacks, crisped rice bar, almond', 'snack', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (~30 גרם)'::text, '1 portion (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.0, 3.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [SNACK] Snacks, crisped rice bar, chocolate chip
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('חטיף אורז מוקשח, שוקולד צ''יפס', 'Snacks, crisped rice bar, chocolate chip', 'snack', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (~30 גרם)'::text, '1 portion (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.0, 3.5, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [SNACK] Snacks, fruit leather, pieces, with vitamin C
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('עור פרי, חתיכות, עם ויטמין C', 'Snacks, fruit leather, pieces, with vitamin C', 'snack', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (~30 גרם)'::text, '1 portion (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.0, 4.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [SNACK] Snacks, granola bar, GENERAL MILLS NATURE VALLEY, SWEET&SALTY NUT, peanut
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('חטיף גרנולה, GENERAL MILLS NATURE VALLEY, SWEET&SALTY NUT, בוטנים', 'Snacks, granola bar, GENERAL MILLS NATURE VALLEY, SWEET&SALTY NUT, peanut', 'snack', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (~30 גרם)'::text, '1 portion (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.0, 3.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [SNACK] Snacks, granola bar, GENERAL MILLS, NATURE VALLEY, CHEWY TRAIL MIX
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('חטיף גרנולה, GENERAL MILLS NATURE VALLEY, CHEWY TRAIL MIX', 'Snacks, granola bar, GENERAL MILLS, NATURE VALLEY, CHEWY TRAIL MIX', 'snack', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (~30 גרם)'::text, '1 portion (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.0, 3.5, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [SNACK] Snacks, granola bar, GENERAL MILLS, NATURE VALLEY, with yogurt coating
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('חטיף גרנולה, GENERAL MILLS NATURE VALLEY, עם ציפוי יוגורט', 'Snacks, granola bar, GENERAL MILLS, NATURE VALLEY, with yogurt coating', 'snack', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (~30 גרם)'::text, '1 portion (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.0, 3.5, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [SNACK] Snacks, granola bar, KASHI GOLEAN, chewy, mixed flavors
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('חטיף גרנולה, KASHI GOLEAN, רך, טעמים מעורבים', 'Snacks, granola bar, KASHI GOLEAN, chewy, mixed flavors', 'snack', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (~30 גרם)'::text, '1 portion (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.0, 3.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [SNACK] Snacks, granola bar, KASHI GOLEAN, crunchy, mixed flavors
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('חטיף גרנולה, KASHI GOLEAN, פריך, טעמים מעורבים', 'Snacks, granola bar, KASHI GOLEAN, crunchy, mixed flavors', 'snack', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (~30 גרם)'::text, '1 portion (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.0, 2.5, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [SNACK] Snacks, granola bar, KASHI TLC Bar, chewy, mixed flavors -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('חטיף גרנולה, KASHI TLC, רך, טעמים מעורבים', 'Snacks, granola bar, KASHI TLC Bar, chewy, mixed flavors', 'snack', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (~30 גרם)'::text, '1 portion (~30g)'::text, 30.0::numeric, 0.0::numeric, 0.5::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.0, 2.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [SNACK] Snacks, granola bar, KASHI TLC Bar, crunchy, mixed flavors
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('חטיף גרנולה, KASHI TLC, פריך, טעמים מעורבים', 'Snacks, granola bar, KASHI TLC Bar, crunchy, mixed flavors', 'snack', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (~30 גרם)'::text, '1 portion (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.0, 2.5, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [SNACK] Snacks, granola bar, QUAKER, DIPPS, all flavors
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('חטיף גרנולה, QUAKER DIPPS, כל הטעמים', 'Snacks, granola bar, QUAKER, DIPPS, all flavors', 'snack', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (~30 גרם)'::text, '1 portion (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.0, 3.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [SNACK] Snacks, granola bar, QUAKER, chewy, 90 Calorie Bar
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('חטיף גרנולה, QUAKER, רך, 90 קלוריות', 'Snacks, granola bar, QUAKER, chewy, 90 Calorie Bar', 'snack', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (~30 גרם)'::text, '1 portion (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.0, 4.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

COMMIT;
