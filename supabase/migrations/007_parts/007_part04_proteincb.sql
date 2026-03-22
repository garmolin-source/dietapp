BEGIN;

-- [PROTEIN] Pork, cured, bacon, cooked, broiled, pan-fried or roasted, reduced sodium -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בייקון חזיר מלוח, מבושל, גריל, נתוך נתרן מופחת', 'Pork, cured, bacon, cooked, broiled, pan-fried or roasted, reduced sodium', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 6.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 4.0, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 2.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Pork, cured, bacon, cooked, microwaved -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בייקון חזיר מלוח, מבושל, מיקרוגל', 'Pork, cured, bacon, cooked, microwaved', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 5.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 3.5, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 2.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Pork, cured, bacon, cooked, restaurant -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בייקון חזיר מלוח, מבושל, מסעדה', 'Pork, cured, bacon, cooked, restaurant', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 6.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 4.0, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 2.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Pork, cured, bacon, pre-sliced, cooked, pan-fried -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בייקון חזיר מלוח, פרוסות, מבושל, טיגון', 'Pork, cured, bacon, pre-sliced, cooked, pan-fried', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 5.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 3.5, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 2.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Pork, cured, bacon, unprepared -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בייקון חזיר מלוח, לא מבושל', 'Pork, cured, bacon, unprepared', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 4.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 3.0, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 1.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Pork, cured, breakfast strips, raw or unheated -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('פסי בייקון הארוחה, חזיר מלוח, גולמי', 'Pork, cured, breakfast strips, raw or unheated', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 4.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 3.0, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 1.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Pork, cured, feet, pickled
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('חזיר, מלוח, רגליים, כבושים', 'Pork, cured, feet, pickled', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Pork, cured, ham -- water added, rump, bone-in, separable lean and fat, heated, roasted
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('חזיר, מלוח, ווקום, אלייה, עם עצם, בשר ושומן, קלוי', 'Pork, cured, ham -- water added, rump, bone-in, separable lean and fat, heated, roasted', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Pork, cured, ham -- water added, rump, bone-in, separable lean and fat, unheated
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('חזיר, מלוח, ווקום, אלייה, עם עצם, בשר ושומן, גולמי', 'Pork, cured, ham -- water added, rump, bone-in, separable lean and fat, unheated', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 2.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.5, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Pork, cured, ham -- water added, rump, bone-in, separable lean only, heated, roasted
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('חזיר, מלוח, ווקום, אלייה, עם עצם, בשר בלבד, קלוי', 'Pork, cured, ham -- water added, rump, bone-in, separable lean only, heated, roasted', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Pork, cured, ham -- water added, rump, bone-in, separable lean only, unheated
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('חזיר, מלוח, ווקום, אלייה, עם עצם, בשר בלבד, גולמי', 'Pork, cured, ham -- water added, rump, bone-in, separable lean only, unheated', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.5, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Pork, cured, ham -- water added, shank, bone-in, separable lean and fat, heated, roasted
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('חזיר, מלוח, ווקום, שוק, עם עצם, בשר ושומן, קלוי', 'Pork, cured, ham -- water added, shank, bone-in, separable lean and fat, heated, roasted', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 2.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.5, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Pork, cured, ham -- water added, shank, bone-in, separable lean and fat, unheated
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('חזיר, מלוח, ווקום, שוק, עם עצם, בשר ושומן, גולמי', 'Pork, cured, ham -- water added, shank, bone-in, separable lean and fat, unheated', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 2.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.5, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Pork, cured, ham -- water added, shank, bone-in, separable lean only, heated, roasted
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('חזיר, מלוח, ווקום, שוק, עם עצם, בשר בלבד, קלוי', 'Pork, cured, ham -- water added, shank, bone-in, separable lean only, heated, roasted', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Pork, cured, ham -- water added, shank, bone-in, separable lean only, unheated
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('חזיר, מלוח, ווקום, שוק, עם עצם, בשר בלבד, גולמי', 'Pork, cured, ham -- water added, shank, bone-in, separable lean only, unheated', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.5, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Pork, cured, ham -- water added, slice, bone-in, separable lean and fat, heated, pan-broil
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('חזיר, מלוח, ווקום, פרוסה, עם עצם, בשר ושומן, מטוגן', 'Pork, cured, ham -- water added, slice, bone-in, separable lean and fat, heated, pan-broil', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Pork, cured, ham -- water added, slice, bone-in, separable lean and fat, unheated
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('חזיר, מלוח, ווקום, פרוסה, עם עצם, בשר ושומן, גולמי', 'Pork, cured, ham -- water added, slice, bone-in, separable lean and fat, unheated', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Pork, cured, ham -- water added, slice, bone-in, separable lean only, heated, pan-broil
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('חזיר, מלוח, ווקום, פרוסה, עם עצם, בשר בלבד, מטוגן', 'Pork, cured, ham -- water added, slice, bone-in, separable lean only, heated, pan-broil', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Pork, cured, ham -- water added, slice, bone-in, separable lean only, unheated
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('חזיר, מלוח, ווקום, פרוסה, עם עצם, בשר בלבד, גולמי', 'Pork, cured, ham -- water added, slice, bone-in, separable lean only, unheated', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.5, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Pork, cured, ham -- water added, slice, boneless, separable lean and fat, heated, pan-broil
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('חזיר, מלוח, ווקום, פרוסה, ללא עצם, בשר ושומן, מטוגן', 'Pork, cured, ham -- water added, slice, boneless, separable lean and fat, heated, pan-broil', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Pork, cured, ham -- water added, slice, boneless, separable lean only, heated, pan-broil
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('חזיר, מלוח, ווקום, פרוסה, ללא עצם, בשר בלבד, מטוגן', 'Pork, cured, ham -- water added, slice, boneless, separable lean only, heated, pan-broil', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Pork, cured, ham -- water added, whole, boneless, separable lean and fat, heated, roasted
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('חזיר, מלוח, ווקום, שלם, ללא עצם, בשר ושומן, קלוי', 'Pork, cured, ham -- water added, whole, boneless, separable lean and fat, heated, roasted', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Pork, cured, ham -- water added, whole, boneless, separable lean and fat, unheated
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('חזיר, מלוח, ווקום, שלם, ללא עצם, בשר ושומן, גולמי', 'Pork, cured, ham -- water added, whole, boneless, separable lean and fat, unheated', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Pork, cured, ham -- water added, whole, boneless, separable lean only, heated, roasted
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('חזיר, מלוח, ווקום, שלם, ללא עצם, בשר בלבד, קלוי', 'Pork, cured, ham -- water added, whole, boneless, separable lean only, heated, roasted', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Pork, cured, ham -- water added, whole, boneless, separable lean only, unheated
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('חזיר, מלוח, ווקום, שלם, ללא עצם, בשר בלבד, גולמי', 'Pork, cured, ham -- water added, whole, boneless, separable lean only, unheated', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Pork, cured, ham and water product, rump, bone-in, separable lean and fat, heated, roasted
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('חזיר, מלוח, תערובת ווקום, אלייה, עם עצם, בשר ושומן, קלוי', 'Pork, cured, ham and water product, rump, bone-in, separable lean and fat, heated, roasted', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 2.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.5, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Pork, cured, ham and water product, rump, bone-in, separable lean and fat, unheated
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('חזיר, מלוח, תערובת ווקום, אלייה, עם עצם, בשר ושומן, גולמי', 'Pork, cured, ham and water product, rump, bone-in, separable lean and fat, unheated', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 2.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.5, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Pork, cured, ham and water product, rump, bone-in, separable lean only, heated, roasted
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('חזיר, מלוח, תערובת ווקום, אלייה, עם עצם, בשר בלבד, קלוי', 'Pork, cured, ham and water product, rump, bone-in, separable lean only, heated, roasted', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Pork, cured, ham and water product, rump, bone-in, separable lean only, unheated
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('חזיר, מלוח, תערובת ווקום, אלייה, עם עצם, בשר בלבד, גולמי', 'Pork, cured, ham and water product, rump, bone-in, separable lean only, unheated', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Bison, ground, grass-fed, cooked
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('ביזון, טחון, דשא, מבושל', 'Bison, ground, grass-fed, cooked', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 2.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.5, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Bison, ground, grass-fed, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('ביזון, טחון, דשא, גולמי', 'Bison, ground, grass-fed, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Game meat , bison, ground, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בשר ציד, ביזון, טחון, גולמי', 'Game meat , bison, ground, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 2.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.5, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Game meat , bison, top sirloin, separable lean only, 1" steak, cooked, broiled
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בשר ציד, ביזון, סטייק סירלואין עליון, בשר בלבד, מבושל', 'Game meat , bison, top sirloin, separable lean only, 1" steak, cooked, broiled', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 2.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.5, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Game meat, antelope, cooked, roasted
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בשר ציד, אנטילופה, קלויה', 'Game meat, antelope, cooked, roasted', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Game meat, antelope, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בשר ציד, אנטילופה, גולמית', 'Game meat, antelope, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Game meat, bear, cooked, simmered
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בשר ציד, דוב, מבושל', 'Game meat, bear, cooked, simmered', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 3.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 2.0, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Game meat, bear, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בשר גיבוני, דב, חי', 'Game meat, bear, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Game meat, beaver, cooked, roasted
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בשר גיבוני, בונדר, קלוי', 'Game meat, beaver, cooked, roasted', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 2.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.5, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Game meat, beaver, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בשר גיבוני, בונדר, חי', 'Game meat, beaver, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Game meat, beefalo, composite of cuts, cooked, roasted
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בשר גיבוני, ביפלו, תערובת חתיכות, קלוי', 'Game meat, beefalo, composite of cuts, cooked, roasted', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 2.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.5, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

COMMIT;
