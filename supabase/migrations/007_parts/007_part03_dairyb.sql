BEGIN;

-- [DAIRY] Cheese, parmesan, grated -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גבינה פרמזן מגורדת', 'Cheese, parmesan, grated', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 4.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (~120 גרם)', '1/2 cup (~120g)', 120.0, 5.0, 0.0, false, 2),
  ('כוס (~240 מ"ל)', '1 cup (~240ml)', 240.0, 9.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Cheese, parmesan, hard -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גבינה פרמזן קשה', 'Cheese, parmesan, hard', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 4.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (~120 גרם)', '1/2 cup (~120g)', 120.0, 5.0, 0.0, false, 2),
  ('כוס (~240 מ"ל)', '1 cup (~240ml)', 240.0, 9.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Cheese, parmesan, low sodium -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גבינה פרמזן מעוטת נתרן', 'Cheese, parmesan, low sodium', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 4.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (~120 גרם)', '1/2 cup (~120g)', 120.0, 5.5, 0.0, false, 2),
  ('כוס (~240 מ"ל)', '1 cup (~240ml)', 240.0, 11.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Cheese, parmesan, shredded -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גבינה פרמזן קצוצה', 'Cheese, parmesan, shredded', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 4.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (~120 גרם)', '1/2 cup (~120g)', 120.0, 5.0, 0.0, false, 2),
  ('כוס (~240 מ"ל)', '1 cup (~240ml)', 240.0, 9.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Cheese, pasteurized process, American, fortified with vitamin D -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גבינה מעובדת אמריקאית מועשרת בוויטמין D', 'Cheese, pasteurized process, American, fortified with vitamin D', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 3.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (~120 גרם)', '1/2 cup (~120g)', 120.0, 4.0, 0.0, false, 2),
  ('כוס (~240 מ"ל)', '1 cup (~240ml)', 240.0, 8.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Cheese, pasteurized process, American, low fat
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גבינה מעובדת אמריקאית מעוטת שומן', 'Cheese, pasteurized process, American, low fat', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (~120 גרם)', '1/2 cup (~120g)', 120.0, 2.5, 0.0, false, 2),
  ('כוס (~240 מ"ל)', '1 cup (~240ml)', 240.0, 5.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Cheese, pasteurized process, American, vitamin D fortified -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גבינה מעובדת אמריקאית מועשרת בוויטמין D', 'Cheese, pasteurized process, American, vitamin D fortified', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 3.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (~120 גרם)', '1/2 cup (~120g)', 120.0, 4.0, 0.0, false, 2),
  ('כוס (~240 מ"ל)', '1 cup (~240ml)', 240.0, 8.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Cheese, pasteurized process, American, without added vitamin D -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גבינה מעובדת אמריקאית ללא וויטמין D מוסף', 'Cheese, pasteurized process, American, without added vitamin D', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 3.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (~120 גרם)', '1/2 cup (~120g)', 120.0, 4.0, 0.0, false, 2),
  ('כוס (~240 מ"ל)', '1 cup (~240ml)', 240.0, 8.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Cheese, pasteurized process, cheddar or American, low sodium -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גבינה מעובדת צ''דר או אמריקאית מעוטת נתרן', 'Cheese, pasteurized process, cheddar or American, low sodium', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 4.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (~120 גרם)', '1/2 cup (~120g)', 120.0, 5.0, 0.0, false, 2),
  ('כוס (~240 מ"ל)', '1 cup (~240ml)', 240.0, 9.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Cheese, pasteurized process, pimento -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גבינה מעובדת פימנטו', 'Cheese, pasteurized process, pimento', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 4.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (~120 גרם)', '1/2 cup (~120g)', 120.0, 5.0, 0.0, false, 2),
  ('כוס (~240 מ"ל)', '1 cup (~240ml)', 240.0, 9.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Cheese, pasteurized process, swiss -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גבינה מעובדת שווייצרית', 'Cheese, pasteurized process, swiss', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 3.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (~120 גרם)', '1/2 cup (~120g)', 120.0, 4.0, 0.0, false, 2),
  ('כוס (~240 מ"ל)', '1 cup (~240ml)', 240.0, 8.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Cheese, port de salut -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גבינה פור דה סלו', 'Cheese, port de salut', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 3.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (~120 גרם)', '1/2 cup (~120g)', 120.0, 4.0, 0.0, false, 2),
  ('כוס (~240 מ"ל)', '1 cup (~240ml)', 240.0, 8.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Cheese, provolone -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גבינה פרובולונה', 'Cheese, provolone', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 3.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (~120 גרם)', '1/2 cup (~120g)', 120.0, 4.0, 0.0, false, 2),
  ('כוס (~240 מ"ל)', '1 cup (~240ml)', 240.0, 8.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Cheese, provolone, reduced fat
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גבינה פרובולונה מוקטנת שומן', 'Cheese, provolone, reduced fat', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 2.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (~120 גרם)', '1/2 cup (~120g)', 120.0, 3.0, 0.0, false, 2),
  ('כוס (~240 מ"ל)', '1 cup (~240ml)', 240.0, 6.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Cheese, ricotta, part skim milk
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גבינה ריקוטה חלקית שומן', 'Cheese, ricotta, part skim milk', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (~120 גרם)', '1/2 cup (~120g)', 120.0, 2.0, 0.0, false, 2),
  ('כוס (~240 מ"ל)', '1 cup (~240ml)', 240.0, 3.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Cheese, ricotta, whole milk
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גבינה ריקוטה שלמה שומן', 'Cheese, ricotta, whole milk', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 0.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (~120 גרם)', '1/2 cup (~120g)', 120.0, 0.5, 0.0, false, 2),
  ('כוס (~240 מ"ל)', '1 cup (~240ml)', 240.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Cheese, romano -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גבינה רומנו', 'Cheese, romano', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 4.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (~120 גרם)', '1/2 cup (~120g)', 120.0, 5.0, 0.0, false, 2),
  ('כוס (~240 מ"ל)', '1 cup (~240ml)', 240.0, 9.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Cheese, roquefort -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גבינה רוקפור', 'Cheese, roquefort', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 3.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (~120 גרם)', '1/2 cup (~120g)', 120.0, 4.0, 0.0, false, 2),
  ('כוס (~240 מ"ל)', '1 cup (~240ml)', 240.0, 8.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Cheese, swiss -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גבינה שווייצרית', 'Cheese, swiss', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 4.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (~120 גרם)', '1/2 cup (~120g)', 120.0, 5.0, 0.0, false, 2),
  ('כוס (~240 מ"ל)', '1 cup (~240ml)', 240.0, 9.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Cheese, swiss, low fat
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גבינה שווייצרית מעוטת שומן', 'Cheese, swiss, low fat', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (~120 גרם)', '1/2 cup (~120g)', 120.0, 2.5, 0.0, false, 2),
  ('כוס (~240 מ"ל)', '1 cup (~240ml)', 240.0, 5.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Cheese, swiss, low sodium -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גבינה שווייצרית מעוטת נתרן', 'Cheese, swiss, low sodium', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 3.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (~120 גרם)', '1/2 cup (~120g)', 120.0, 4.0, 0.0, false, 2),
  ('כוס (~240 מ"ל)', '1 cup (~240ml)', 240.0, 8.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Cheese, tilsit -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גבינה טילסיט', 'Cheese, tilsit', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 3.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (~120 גרם)', '1/2 cup (~120g)', 120.0, 4.0, 0.0, false, 2),
  ('כוס (~240 מ"ל)', '1 cup (~240ml)', 240.0, 8.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Cheese, white, queso blanco
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גבינה לבנה קואזו בלנקו', 'Cheese, white, queso blanco', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 3.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (~120 גרם)', '1/2 cup (~120g)', 120.0, 3.5, 0.0, false, 2),
  ('כוס (~240 מ"ל)', '1 cup (~240ml)', 240.0, 7.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Cream substitute, flavored, liquid
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('תחליף קרם בטעם נוזלי', 'Cream substitute, flavored, liquid', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 2.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (~120 גרם)', '1/2 cup (~120g)', 120.0, 3.0, 0.0, false, 2),
  ('כוס (~240 מ"ל)', '1 cup (~240ml)', 240.0, 6.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Cream substitute, flavored, powdered
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('תחליף קרם בטעם אבקה', 'Cream substitute, flavored, powdered', 'dairy', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 0.0::numeric, 3.5::numeric, true::boolean, 1::integer),
  ('חצי כוס (~120 גרם)', '1/2 cup (~120g)', 120.0, 0.0, 4.0, false, 2),
  ('כוס (~240 מ"ל)', '1 cup (~240ml)', 240.0, 0.0, 8.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Cream substitute, liquid, light
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('תחליף קרם נוזלי קל', 'Cream substitute, liquid, light', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 0.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (~120 גרם)', '1/2 cup (~120g)', 120.0, 0.5, 0.0, false, 2),
  ('כוס (~240 מ"ל)', '1 cup (~240ml)', 240.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Cream substitute, liquid, with hydrogenated vegetable oil and soy protein
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('תחליף קרם נוזלי עם שומן צמחי מהוdrogenised וחלבון סויה', 'Cream substitute, liquid, with hydrogenated vegetable oil and soy protein', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (~120 גרם)', '1/2 cup (~120g)', 120.0, 2.0, 0.0, false, 2),
  ('כוס (~240 מ"ל)', '1 cup (~240ml)', 240.0, 3.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Cream substitute, liquid, with lauric acid oil and sodium caseinate
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('תחליף קרם נוזלי עם שומן חומצה לאוריק וקזאינט נתרן', 'Cream substitute, liquid, with lauric acid oil and sodium caseinate', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (~120 גרם)', '1/2 cup (~120g)', 120.0, 2.0, 0.0, false, 2),
  ('כוס (~240 מ"ל)', '1 cup (~240ml)', 240.0, 3.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Cream substitute, powdered
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('תחליף שמנת בודר', 'Cream substitute, powdered', 'dairy', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 0.0::numeric, 3.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (~120 גרם)', '1/2 cup (~120g)', 120.0, 0.0, 3.5, false, 2),
  ('כוס (~240 מ"ל)', '1 cup (~240ml)', 240.0, 0.0, 7.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Cream substitute, powdered, light
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('תחליף שמנת בודר, קל', 'Cream substitute, powdered, light', 'dairy', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 0.0::numeric, 3.5::numeric, true::boolean, 1::integer),
  ('חצי כוס (~120 גרם)', '1/2 cup (~120g)', 120.0, 0.0, 4.0, false, 2),
  ('כוס (~240 מ"ל)', '1 cup (~240ml)', 240.0, 0.0, 8.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Cream, fluid, half and half
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שמנת נוזלית, חצי חצי', 'Cream, fluid, half and half', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (~120 גרם)', '1/2 cup (~120g)', 120.0, 2.0, 0.0, false, 2),
  ('כוס (~240 מ"ל)', '1 cup (~240ml)', 240.0, 3.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Cream, fluid, heavy whipping -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שמנת כבדה להקצפה', 'Cream, fluid, heavy whipping', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 3.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (~120 גרם)', '1/2 cup (~120g)', 120.0, 4.0, 0.0, false, 2),
  ('כוס (~240 מ"ל)', '1 cup (~240ml)', 240.0, 8.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Cream, fluid, light (coffee cream or table cream)
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שמנת קלה לקפה', 'Cream, fluid, light (coffee cream or table cream)', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (~120 גרם)', '1/2 cup (~120g)', 120.0, 2.5, 0.0, false, 2),
  ('כוס (~240 מ"ל)', '1 cup (~240ml)', 240.0, 5.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Cream, fluid, light whipping
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שמנת קלה להקצפה', 'Cream, fluid, light whipping', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 3.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (~120 גרם)', '1/2 cup (~120g)', 120.0, 3.5, 0.0, false, 2),
  ('כוס (~240 מ"ל)', '1 cup (~240ml)', 240.0, 7.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Cream, half and half, fat free
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שמנת חצי חצי, חסרת שומן', 'Cream, half and half, fat free', 'dairy', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 0.0::numeric, 0.5::numeric, true::boolean, 1::integer),
  ('חצי כוס (~120 גרם)', '1/2 cup (~120g)', 120.0, 0.0, 0.5, false, 2),
  ('כוס (~240 מ"ל)', '1 cup (~240ml)', 240.0, 0.0, 1.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Cream, half and half, lowfat
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שמנת חצי חצי, מעט שומן', 'Cream, half and half, lowfat', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 0.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (~120 גרם)', '1/2 cup (~120g)', 120.0, 0.5, 0.0, false, 2),
  ('כוס (~240 מ"ל)', '1 cup (~240ml)', 240.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Cream, sour, cultured
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שמנת חמוצה מעובדת', 'Cream, sour, cultured', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (~120 גרם)', '1/2 cup (~120g)', 120.0, 2.5, 0.0, false, 2),
  ('כוס (~240 מ"ל)', '1 cup (~240ml)', 240.0, 5.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Cream, sour, reduced fat, cultured
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שמנת חמוצה מעובדת, שומן מופחת', 'Cream, sour, reduced fat, cultured', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (~120 גרם)', '1/2 cup (~120g)', 120.0, 2.0, 0.0, false, 2),
  ('כוס (~240 מ"ל)', '1 cup (~240ml)', 240.0, 3.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Cream, whipped, cream topping, pressurized
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שמנת מוקצפת, בלון שמנת', 'Cream, whipped, cream topping, pressurized', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 2.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (~120 גרם)', '1/2 cup (~120g)', 120.0, 3.0, 0.0, false, 2),
  ('כוס (~240 מ"ל)', '1 cup (~240ml)', 240.0, 6.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Dessert topping, powdered
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('ממתק טופינג בודר', 'Dessert topping, powdered', 'dairy', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 0.0::numeric, 2.5::numeric, true::boolean, 1::integer),
  ('חצי כוס (~120 גרם)', '1/2 cup (~120g)', 120.0, 0.0, 3.0, false, 2),
  ('כוס (~240 מ"ל)', '1 cup (~240ml)', 240.0, 0.0, 6.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Dessert topping, powdered, 1.5 ounce prepared with 1/2 cup milk
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('ממתק טופינג בודר, מוכן עם חצי כוס חלב', 'Dessert topping, powdered, 1.5 ounce prepared with 1/2 cup milk', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (~120 גרם)', '1/2 cup (~120g)', 120.0, 2.5, 0.0, false, 2),
  ('כוס (~240 מ"ל)', '1 cup (~240ml)', 240.0, 5.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Dessert topping, pressurized
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('ממתק טופינג בלון', 'Dessert topping, pressurized', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 2.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (~120 גרם)', '1/2 cup (~120g)', 120.0, 3.0, 0.0, false, 2),
  ('כוס (~240 מ"ל)', '1 cup (~240ml)', 240.0, 6.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Dessert topping, semi solid, frozen
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('ממתק טופינג, קפוא למחצה', 'Dessert topping, semi solid, frozen', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 3.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (~120 גרם)', '1/2 cup (~120g)', 120.0, 3.5, 0.0, false, 2),
  ('כוס (~240 מ"ל)', '1 cup (~240ml)', 240.0, 7.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Dulce de Leche
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('דולצה דה לקה', 'Dulce de Leche', 'dairy', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 0.0::numeric, 3.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (~120 גרם)', '1/2 cup (~120g)', 120.0, 0.0, 3.5, false, 2),
  ('כוס (~240 מ"ל)', '1 cup (~240ml)', 240.0, 0.0, 7.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Egg substitute, liquid or frozen, fat free
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('תחליף ביצה, נוזלי או קפוא, חסר שומן', 'Egg substitute, liquid or frozen, fat free', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('ביצה אחת (~50 גרם)'::text, '1 egg (~50g)'::text, 50.0::numeric, 0.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('2 ביצים (~100 גרם)', '2 eggs (~100g)', 100.0, 0.5, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Egg substitute, powder
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('תחליף ביצה, בודר', 'Egg substitute, powder', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('ביצה אחת (~50 גרם)'::text, '1 egg (~50g)'::text, 50.0::numeric, 2.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('2 ביצים (~100 גרם)', '2 eggs (~100g)', 100.0, 4.5, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 4.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Egg, duck, whole, fresh, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('ביצת ברווז, שלמה, טרייה, גולמית', 'Egg, duck, whole, fresh, raw', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('ביצה אחת (~50 גרם)'::text, '1 egg (~50g)'::text, 50.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('2 ביצים (~100 גרם)', '2 eggs (~100g)', 100.0, 2.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 2.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Egg, goose, whole, fresh, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('ביצת אווז, שלמה, טרייה, גולמית', 'Egg, goose, whole, fresh, raw', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('ביצה אחת (~50 גרם)'::text, '1 egg (~50g)'::text, 50.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('2 ביצים (~100 גרם)', '2 eggs (~100g)', 100.0, 2.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 2.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Egg, quail, whole, fresh, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('ביצת שליו, שלמה, טרייה, גולמית', 'Egg, quail, whole, fresh, raw', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('ביצה אחת (~50 גרם)'::text, '1 egg (~50g)'::text, 50.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('2 ביצים (~100 גרם)', '2 eggs (~100g)', 100.0, 2.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 2.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Egg, turkey, whole, fresh, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('ביצת הודו, שלמה, טרייה, גולמית', 'Egg, turkey, whole, fresh, raw', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('ביצה אחת (~50 גרם)'::text, '1 egg (~50g)'::text, 50.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('2 ביצים (~100 גרם)', '2 eggs (~100g)', 100.0, 2.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 2.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Egg, white, dried
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('חלבון ביצה, יבש', 'Egg, white, dried', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('ביצה אחת (~50 גרם)'::text, '1 egg (~50g)'::text, 50.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('2 ביצים (~100 גרם)', '2 eggs (~100g)', 100.0, 4.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 4.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Egg, white, dried, flakes, stabilized, glucose reduced
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('חלבון ביצה, יבש, פתיתים, מיוצב, ללא גלוקוז', 'Egg, white, dried, flakes, stabilized, glucose reduced', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('ביצה אחת (~50 גרם)'::text, '1 egg (~50g)'::text, 50.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('2 ביצים (~100 גרם)', '2 eggs (~100g)', 100.0, 3.5, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 3.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Egg, white, dried, powder, stabilized, glucose reduced
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('חלבון ביצה, יבש, בודר, מיוצב, ללא גלוקוז', 'Egg, white, dried, powder, stabilized, glucose reduced', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('ביצה אחת (~50 גרם)'::text, '1 egg (~50g)'::text, 50.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('2 ביצים (~100 גרם)', '2 eggs (~100g)', 100.0, 4.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 4.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Egg, white, dried, stabilized, glucose reduced
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('חלבון ביצה, יבש, מיוצב, ללא גלוקוז', 'Egg, white, dried, stabilized, glucose reduced', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('ביצה אחת (~50 גרם)'::text, '1 egg (~50g)'::text, 50.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('2 ביצים (~100 גרם)', '2 eggs (~100g)', 100.0, 3.5, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 3.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Egg, white, raw, fresh
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('חלבון ביצה, גולמי, טרי', 'Egg, white, raw, fresh', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('ביצה אחת (~50 גרם)'::text, '1 egg (~50g)'::text, 50.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('2 ביצים (~100 גרם)', '2 eggs (~100g)', 100.0, 2.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 2.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Egg, white, raw, frozen, pasteurized
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('חלבון ביצה, גולמי, קפוא, מפוסטר', 'Egg, white, raw, frozen, pasteurized', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('ביצה אחת (~50 גרם)'::text, '1 egg (~50g)'::text, 50.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('2 ביצים (~100 גרם)', '2 eggs (~100g)', 100.0, 2.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 2.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Egg, whole, cooked, fried
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('ביצה שלמה, מבושלת, מטוגנת', 'Egg, whole, cooked, fried', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('ביצה אחת (~50 גרם)'::text, '1 egg (~50g)'::text, 50.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('2 ביצים (~100 גרם)', '2 eggs (~100g)', 100.0, 2.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 2.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Egg, whole, cooked, hard-boiled
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('ביצה שלמה, מבושלת, קשה', 'Egg, whole, cooked, hard-boiled', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('ביצה אחת (~50 גרם)'::text, '1 egg (~50g)'::text, 50.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('2 ביצים (~100 גרם)', '2 eggs (~100g)', 100.0, 2.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 2.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Egg, whole, cooked, omelet
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('ביצה שלמה, בישול, חביתה', 'Egg, whole, cooked, omelet', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('ביצה אחת (~50 גרם)'::text, '1 egg (~50g)'::text, 50.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('2 ביצים (~100 גרם)', '2 eggs (~100g)', 100.0, 2.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 2.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Egg, whole, cooked, poached
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('ביצה שלמה, בישול, ביצה משומשמת', 'Egg, whole, cooked, poached', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('ביצה אחת (~50 גרם)'::text, '1 egg (~50g)'::text, 50.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('2 ביצים (~100 גרם)', '2 eggs (~100g)', 100.0, 2.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 2.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Egg, whole, cooked, scrambled
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('ביצה שלמה, בישול, ביצים מערבבות', 'Egg, whole, cooked, scrambled', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('ביצה אחת (~50 גרם)'::text, '1 egg (~50g)'::text, 50.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('2 ביצים (~100 גרם)', '2 eggs (~100g)', 100.0, 2.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 2.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Egg, whole, dried
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('ביצה שלמה, מיובשת', 'Egg, whole, dried', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('ביצה אחת (~50 גרם)'::text, '1 egg (~50g)'::text, 50.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('2 ביצים (~100 גרם)', '2 eggs (~100g)', 100.0, 2.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 2.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Tnuva Cottage Cheese 5%
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('קוטג'' תנובה 5%', 'Tnuva Cottage Cheese 5%', 'dairy', 'yellow', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי מכל (~125 גרם)', 'Half container (~125g)', 125.0, 1.0, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Tnuva Cottage Cheese 3%
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('קוטג'' תנובה 3%', 'Tnuva Cottage Cheese 3%', 'dairy', 'yellow', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 0.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי מכל (~125 גרם)', 'Half container (~125g)', 125.0, 1.0, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Tnuva Bulgarian Cheese 5%
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גבינה בולגרית תנובה 5%', 'Tnuva Bulgarian Cheese 5%', 'dairy', 'yellow', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('פרוסה (~30 גרם)'::text, '1 slice (~30g)'::text, 30.0::numeric, 0.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Tnuva Bulgarian Cheese 3%
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גבינה בולגרית תנובה 3%', 'Tnuva Bulgarian Cheese 3%', 'dairy', 'yellow', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('פרוסה (~30 גרם)'::text, '1 slice (~30g)'::text, 30.0::numeric, 0.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.5, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Tnuva Labane 5%
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('לבנה תנובה 5%', 'Tnuva Labane 5%', 'dairy', 'yellow', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('2 כפות (~30 גרם)', '2 tbsp (~30g)', 30.0, 0.5, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Tnuva Labane 9%
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('לבנה תנובה 9%', 'Tnuva Labane 9%', 'dairy', 'yellow', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('2 כפות (~30 גרם)', '2 tbsp (~30g)', 30.0, 0.5, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Tnuva White Cheese 5%
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גבינה לבנה תנובה 5%', 'Tnuva White Cheese 5%', 'dairy', 'yellow', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('200 גרם', '200g', 200.0, 2.0, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Tnuva White Cheese 9%
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גבינה לבנה תנובה 9%', 'Tnuva White Cheese 9%', 'dairy', 'yellow', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('200 גרם', '200g', 200.0, 3.0, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Tnuva Yellow Cheese 9%
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גבינה צהובה תנובה 9%', 'Tnuva Yellow Cheese 9%', 'dairy', 'yellow', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('פרוסה (~30 גרם)'::text, '1 slice (~30g)'::text, 30.0::numeric, 0.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Tnuva Yellow Cheese 28%
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גבינה צהובה תנובה 28%', 'Tnuva Yellow Cheese 28%', 'dairy', 'yellow', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('פרוסה (~30 גרם)'::text, '1 slice (~30g)'::text, 30.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 3.0, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Tnuva Milk 3%
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('חלב תנובה 3%', 'Tnuva Milk 3%', 'dairy', 'yellow', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס (~200 מ"ל)'::text, '1 glass (~200ml)'::text, 200.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 מ"ל', '100ml', 100.0, 0.5, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Tnuva Milk 1%
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('חלב תנובה 1%', 'Tnuva Milk 1%', 'dairy', 'yellow', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס (~200 מ"ל)'::text, '1 glass (~200ml)'::text, 200.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 מ"ל', '100ml', 100.0, 0.5, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Tnuva Chocolate Milk 1%
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שוקו תנובה 1%', 'Tnuva Chocolate Milk 1%', 'dairy', 'yellow', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('קרטון (~200 מ"ל)'::text, 'Carton (~200ml)'::text, 200.0::numeric, 1.5::numeric, 0.5::numeric, true::boolean, 1::integer)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Tnuva Yogurt 3%
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('יוגורט תנובה 3%', 'Tnuva Yogurt 3%', 'dairy', 'yellow', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (~125 גרם)'::text, '1 serving (~125g)'::text, 125.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.5, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Tnuva Yogurt 0%
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('יוגורט תנובה 0%', 'Tnuva Yogurt 0%', 'dairy', 'yellow', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (~125 גרם)'::text, '1 serving (~125g)'::text, 125.0::numeric, 0.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.5, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Tnuva Sour Cream 15%
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שמנת חמוצה תנובה 15%', 'Tnuva Sour Cream 15%', 'dairy', 'yellow', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('2 כפות (~30 גרם)'::text, '2 tbsp (~30g)'::text, 30.0::numeric, 0.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.5, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Tnuva Heavy Cream 38%
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שמנת מתוקה תנובה 38%', 'Tnuva Heavy Cream 38%', 'dairy', 'yellow', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('2 כפות (~30 גרם)'::text, '2 tbsp (~30g)'::text, 30.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 3.5, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Strauss Greek Yogurt 0%
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('יוגורט יווני סטראוס 0%', 'Strauss Greek Yogurt 0%', 'dairy', 'yellow', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (~150 גרם)'::text, '1 serving (~150g)'::text, 150.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.5, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

COMMIT;
