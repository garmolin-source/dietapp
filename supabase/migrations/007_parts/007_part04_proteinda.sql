BEGIN;

-- [PROTEIN] Game meat, beefalo, composite of cuts, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בשר גיבוני, ביפלו, תערובת חתיכות, חי', 'Game meat, beefalo, composite of cuts, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Game meat, bison, chuck, shoulder clod, separable lean only, cooked, braised
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בשר גיבוני, ביזון, צוואר, רך בלבד, תבשיל', 'Game meat, bison, chuck, shoulder clod, separable lean only, cooked, braised', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 2.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.5, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Game meat, bison, chuck, shoulder clod, separable lean only, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בשר גיבוני, ביזון, צוואר, רך בלבד, חי', 'Game meat, bison, chuck, shoulder clod, separable lean only, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Game meat, bison, ground, cooked, pan-broiled
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בשר גיבוני, ביזון, טחון, מטוגן בפנים', 'Game meat, bison, ground, cooked, pan-broiled', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 3.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 2.0, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Game meat, bison, ribeye, separable lean only, 1" steak, cooked, broiled
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בשר גיבוני, ביזון, ריביי, רך בלבד, סטייק, צלוי', 'Game meat, bison, ribeye, separable lean only, 1" steak, cooked, broiled', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 2.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.5, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Game meat, bison, ribeye, separable lean only, trimmed to 0" fat, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בשר גיבוני, ביזון, ריביי, רך בלבד, חי', 'Game meat, bison, ribeye, separable lean only, trimmed to 0" fat, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Game meat, bison, separable lean only, cooked, roasted
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בשר גיבוני, ביזון, רך בלבד, קלוי', 'Game meat, bison, separable lean only, cooked, roasted', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Game meat, bison, separable lean only, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בשר גיבוני, ביזון, רך בלבד, חי', 'Game meat, bison, separable lean only, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Game meat, bison, shoulder clod, separable lean only, trimmed to 0" fat, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בשר גיבוני, ביזון, צוואר, רך בלבד, חי', 'Game meat, bison, shoulder clod, separable lean only, trimmed to 0" fat, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Game meat, bison, top round, separable lean only, 1" steak, cooked, broiled
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בשר גיבוני, ביזון, סטייק עליון, רך בלבד, סטייק, צלוי', 'Game meat, bison, top round, separable lean only, 1" steak, cooked, broiled', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 2.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.5, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Game meat, bison, top round, separable lean only, 1" steak, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בשר גיבוני, ביזון, סטייק עליון, רך בלבד, סטייק, חי', 'Game meat, bison, top round, separable lean only, 1" steak, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Game meat, bison, top sirloin, separable lean only, trimmed to 0" fat, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בשר גיבוני, ביזון, סטייק יוקי, רך בלבד, חי', 'Game meat, bison, top sirloin, separable lean only, trimmed to 0" fat, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Game meat, boar, wild, cooked, roasted
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בשר גיבוני, חזיר בר, קלוי', 'Game meat, boar, wild, cooked, roasted', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Game meat, boar, wild, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בשר גיבוני, חזיר בר, חי', 'Game meat, boar, wild, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Game meat, buffalo, water, cooked, roasted
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בשר גיבוני, במבו מימי, קלוי', 'Game meat, buffalo, water, cooked, roasted', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Game meat, buffalo, water, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בשר גיבוני, במבו מימי, חי', 'Game meat, buffalo, water, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.5, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Game meat, caribou, cooked, roasted
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בשר גיבוני, קריבו, קלוי', 'Game meat, caribou, cooked, roasted', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 2.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.5, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Game meat, caribou, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בשר גיבוני, קריבו, חי', 'Game meat, caribou, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Game meat, deer, cooked, roasted
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בשר גיבוני, איל, קלוי', 'Game meat, deer, cooked, roasted', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Game meat, deer, ground, cooked, pan-broiled
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בשר גיבוני, איל, טחון, מטוגן בפנים', 'Game meat, deer, ground, cooked, pan-broiled', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 2.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.5, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Game meat, deer, ground, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בשר גיבוני, איל, טחון, חי', 'Game meat, deer, ground, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Game meat, deer, loin, separable lean only, 1" steak, cooked, broiled
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בשר גיבוני, איל, סטייק סינדרלוין, צלוי', 'Game meat, deer, loin, separable lean only, 1" steak, cooked, broiled', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Game meat, deer, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בשר גיבוני, איל, חי', 'Game meat, deer, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Game meat, deer, shoulder clod, separable lean only, cooked, braised
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בשר גיבוני, איל, צוואר, רך בלבד, תבשיל', 'Game meat, deer, shoulder clod, separable lean only, cooked, braised', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 2.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.5, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Game meat, deer, tenderloin, separable lean only, cooked, broiled
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בשר גיבוני, איל, טנדרלוין, רך בלבד, צלוי', 'Game meat, deer, tenderloin, separable lean only, cooked, broiled', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Game meat, deer, top round, separable lean only, 1" steak, cooked, broiled
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בשר גיבוני, איל, סטייק עליון, צלוי', 'Game meat, deer, top round, separable lean only, 1" steak, cooked, broiled', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Game meat, elk, cooked, roasted
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בשר אייל, צלוי', 'Game meat, elk, cooked, roasted', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Game meat, elk, ground, cooked, pan-broiled
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בשר אייל טחון, טוגן בחרטום', 'Game meat, elk, ground, cooked, pan-broiled', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 2.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.5, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Game meat, elk, ground, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בשר אייל טחון, גולמי', 'Game meat, elk, ground, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 2.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.5, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Game meat, elk, loin, separable lean only, cooked, broiled
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בשר אייל, פילה, צלוי', 'Game meat, elk, loin, separable lean only, cooked, broiled', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 2.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.5, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Game meat, elk, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בשר אייל, גולמי', 'Game meat, elk, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Game meat, elk, round, separable lean only, cooked, broiled
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בשר אייל, חזה, צלוי', 'Game meat, elk, round, separable lean only, cooked, broiled', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Game meat, elk, tenderloin, separable lean only, cooked, broiled
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בשר אייל, טנדרלוין, צלוי', 'Game meat, elk, tenderloin, separable lean only, cooked, broiled', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Game meat, goat, cooked, roasted
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בשר עז, צלוי', 'Game meat, goat, cooked, roasted', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Game meat, goat, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בשר עז, גולמי', 'Game meat, goat, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Game meat, horse, cooked, roasted
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בשר סוס, צלוי', 'Game meat, horse, cooked, roasted', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 2.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.5, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Game meat, horse, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בשר סוס, גולמי', 'Game meat, horse, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Game meat, moose, cooked, roasted
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בשר איל, צלוי', 'Game meat, moose, cooked, roasted', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Game meat, moose, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בשר איל, גולמי', 'Game meat, moose, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Bacon bits, meatless -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('ביטס בייקון טבעוני', 'Bacon bits, meatless', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~180 גרם)'::text, '1 cup cooked (~180g)'::text, 180.0::numeric, 9.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם מבושל', '100g cooked', 100.0, 5.0, 0.0, false, 2),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 1.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Bacon, meatless -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בייקון טבעוני', 'Bacon, meatless', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~180 גרם)'::text, '1 cup cooked (~180g)'::text, 180.0::numeric, 5.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם מבושל', '100g cooked', 100.0, 3.0, 0.0, false, 2),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beans, adzuki, mature seed, cooked, boiled, with salt
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('עדשים אדוקי, מבושלות, במלח', 'Beans, adzuki, mature seed, cooked, boiled, with salt', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~180 גרם)'::text, '1 cup cooked (~180g)'::text, 180.0::numeric, 2.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם מבושל', '100g cooked', 100.0, 1.5, 0.0, false, 2),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beans, adzuki, mature seeds, canned, sweetened -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('עדשים אדוקי, משומרות, מתוקות', 'Beans, adzuki, mature seeds, canned, sweetened', 'protein', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~180 גרם)'::text, '1 cup cooked (~180g)'::text, 180.0::numeric, 0.0::numeric, 5.5::numeric, true::boolean, 1::integer),
  ('100 גרם מבושל', '100g cooked', 100.0, 0.0, 3.0, false, 2),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.0, 1.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beans, adzuki, mature seeds, cooked, boiled, without salt
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('עדשים אדוקי, מבושלות, ללא מלח', 'Beans, adzuki, mature seeds, cooked, boiled, without salt', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~180 גרם)'::text, '1 cup cooked (~180g)'::text, 180.0::numeric, 2.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם מבושל', '100g cooked', 100.0, 1.5, 0.0, false, 2),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beans, adzuki, mature seeds, raw -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('עדשים אדוקי, גולמיות', 'Beans, adzuki, mature seeds, raw', 'protein', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~180 גרם)'::text, '1 cup cooked (~180g)'::text, 180.0::numeric, 0.0::numeric, 4.5::numeric, true::boolean, 1::integer),
  ('100 גרם מבושל', '100g cooked', 100.0, 0.0, 2.5, false, 2),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.0, 1.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beans, baked, canned, no salt added
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שעועית אפויה, משומרת, ללא מלח', 'Beans, baked, canned, no salt added', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~180 גרם)'::text, '1 cup cooked (~180g)'::text, 180.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם מבושל', '100g cooked', 100.0, 1.0, 0.0, false, 2),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beans, baked, canned, plain or vegetarian
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שעועית אפויה, משומרת, פשוטה', 'Beans, baked, canned, plain or vegetarian', 'protein', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~180 גרם)'::text, '1 cup cooked (~180g)'::text, 180.0::numeric, 0.0::numeric, 2.0::numeric, true::boolean, 1::integer),
  ('100 גרם מבושל', '100g cooked', 100.0, 0.0, 1.0, false, 2),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.0, 0.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beans, baked, canned, with beef
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שעועית אפויה, משומרת, עם בשר', 'Beans, baked, canned, with beef', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~180 גרם)'::text, '1 cup cooked (~180g)'::text, 180.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם מבושל', '100g cooked', 100.0, 1.0, 0.0, false, 2),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beans, baked, canned, with franks
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שעועית אפויה, משומרת, עם נקניקיות', 'Beans, baked, canned, with franks', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~180 גרם)'::text, '1 cup cooked (~180g)'::text, 180.0::numeric, 2.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם מבושל', '100g cooked', 100.0, 1.5, 0.0, false, 2),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beans, baked, canned, with pork
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שעועית אפויה, משומרת, עם חזיר', 'Beans, baked, canned, with pork', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~180 גרם)'::text, '1 cup cooked (~180g)'::text, 180.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם מבושל', '100g cooked', 100.0, 1.0, 0.0, false, 2),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beans, baked, canned, with pork and sweet sauce
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שעועית אפויה, משומרת, עם חזיר וציפוי מתוק', 'Beans, baked, canned, with pork and sweet sauce', 'protein', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~180 גרם)'::text, '1 cup cooked (~180g)'::text, 180.0::numeric, 0.0::numeric, 2.0::numeric, true::boolean, 1::integer),
  ('100 גרם מבושל', '100g cooked', 100.0, 0.0, 1.0, false, 2),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.0, 0.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beans, baked, canned, with pork and tomato sauce
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שעועית אפויה, משומרת, עם חזיר וציפוי עגבניה', 'Beans, baked, canned, with pork and tomato sauce', 'protein', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~180 גרם)'::text, '1 cup cooked (~180g)'::text, 180.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 גרם מבושל', '100g cooked', 100.0, 0.0, 0.5, false, 2),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beans, baked, home prepared
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שעועית אפויה, ביתית', 'Beans, baked, home prepared', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~180 גרם)'::text, '1 cup cooked (~180g)'::text, 180.0::numeric, 2.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם מבושל', '100g cooked', 100.0, 1.5, 0.0, false, 2),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beans, black turtle, mature seeds, canned
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שעועית שחורה, משומרת', 'Beans, black turtle, mature seeds, canned', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~180 גרם)'::text, '1 cup cooked (~180g)'::text, 180.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם מבושל', '100g cooked', 100.0, 1.0, 0.0, false, 2),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beans, black turtle, mature seeds, cooked, boiled, with salt
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שעועית שחורה, מבושלת, במלח', 'Beans, black turtle, mature seeds, cooked, boiled, with salt', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~180 גרם)'::text, '1 cup cooked (~180g)'::text, 180.0::numeric, 2.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם מבושל', '100g cooked', 100.0, 1.5, 0.0, false, 2),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beans, black turtle, mature seeds, cooked, boiled, without salt
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שעועית שחורה, מבושלת, ללא מלח', 'Beans, black turtle, mature seeds, cooked, boiled, without salt', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~180 גרם)'::text, '1 cup cooked (~180g)'::text, 180.0::numeric, 2.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם מבושל', '100g cooked', 100.0, 1.5, 0.0, false, 2),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beans, black turtle, mature seeds, raw -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שעועית שחורה גסה, זרעים בשלים, גולמית', 'Beans, black turtle, mature seeds, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~180 גרם)'::text, '1 cup cooked (~180g)'::text, 180.0::numeric, 6.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם מבושל', '100g cooked', 100.0, 3.5, 0.0, false, 2),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beans, black, mature seeds, canned, low sodium
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שעועית שחורה גסה, זרעים בשלים, משומרת בפחית, נמוכה בנתרן', 'Beans, black, mature seeds, canned, low sodium', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~180 גרם)'::text, '1 cup cooked (~180g)'::text, 180.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם מבושל', '100g cooked', 100.0, 1.0, 0.0, false, 2),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beans, black, mature seeds, cooked, boiled, with salt
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שעועית שחורה גסה, זרעים בשלים, מבושלת, עם מלח', 'Beans, black, mature seeds, cooked, boiled, with salt', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~180 גרם)'::text, '1 cup cooked (~180g)'::text, 180.0::numeric, 2.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם מבושל', '100g cooked', 100.0, 1.5, 0.0, false, 2),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beans, black, mature seeds, cooked, boiled, without salt
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שעועית שחורה גסה, זרעים בשלים, מבושלת, ללא מלח', 'Beans, black, mature seeds, cooked, boiled, without salt', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~180 גרם)'::text, '1 cup cooked (~180g)'::text, 180.0::numeric, 2.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם מבושל', '100g cooked', 100.0, 1.5, 0.0, false, 2),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beans, black, mature seeds, raw -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שעועית שחורה גסה, זרעים בשלים, גולמית', 'Beans, black, mature seeds, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~180 גרם)'::text, '1 cup cooked (~180g)'::text, 180.0::numeric, 6.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם מבושל', '100g cooked', 100.0, 3.5, 0.0, false, 2),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beans, chili, barbecue, ranch style, cooked
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שעועית צ''ילי גסה, בארבקיו, סגנון חוות', 'Beans, chili, barbecue, ranch style, cooked', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~180 גרם)'::text, '1 cup cooked (~180g)'::text, 180.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם מבושל', '100g cooked', 100.0, 1.0, 0.0, false, 2),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beans, cranberry (roman), mature seeds, canned
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שעועית קראנברי גסה, זרעים בשלים, משומרת בפחית', 'Beans, cranberry (roman), mature seeds, canned', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~180 גרם)'::text, '1 cup cooked (~180g)'::text, 180.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם מבושל', '100g cooked', 100.0, 1.0, 0.0, false, 2),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beans, cranberry (roman), mature seeds, cooked, boiled, with salt
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שעועית קראנברי גסה, זרעים בשלים, מבושלת, עם מלח', 'Beans, cranberry (roman), mature seeds, cooked, boiled, with salt', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~180 גרם)'::text, '1 cup cooked (~180g)'::text, 180.0::numeric, 2.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם מבושל', '100g cooked', 100.0, 1.5, 0.0, false, 2),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beans, cranberry (roman), mature seeds, cooked, boiled, without salt
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שעועית קראנברי גסה, זרעים בשלים, מבושלת, ללא מלח', 'Beans, cranberry (roman), mature seeds, cooked, boiled, without salt', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~180 גרם)'::text, '1 cup cooked (~180g)'::text, 180.0::numeric, 2.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם מבושל', '100g cooked', 100.0, 1.5, 0.0, false, 2),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beans, cranberry (roman), mature seeds, raw -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שעועית קראנברי גסה, זרעים בשלים, גולמית', 'Beans, cranberry (roman), mature seeds, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~180 גרם)'::text, '1 cup cooked (~180g)'::text, 180.0::numeric, 6.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם מבושל', '100g cooked', 100.0, 3.5, 0.0, false, 2),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beans, french, mature seeds, cooked, boiled, with salt
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שעועית צרפתית גסה, זרעים בשלים, מבושלת, עם מלח', 'Beans, french, mature seeds, cooked, boiled, with salt', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~180 גרם)'::text, '1 cup cooked (~180g)'::text, 180.0::numeric, 2.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם מבושל', '100g cooked', 100.0, 1.5, 0.0, false, 2),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beans, french, mature seeds, cooked, boiled, without salt
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שעועית צרפתית גסה, זרעים בשלים, מבושלת, ללא מלח', 'Beans, french, mature seeds, cooked, boiled, without salt', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~180 גרם)'::text, '1 cup cooked (~180g)'::text, 180.0::numeric, 2.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם מבושל', '100g cooked', 100.0, 1.5, 0.0, false, 2),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beans, french, mature seeds, raw -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שעועית צרפתית גסה, זרעים בשלים, גולמית', 'Beans, french, mature seeds, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~180 גרם)'::text, '1 cup cooked (~180g)'::text, 180.0::numeric, 6.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם מבושל', '100g cooked', 100.0, 3.5, 0.0, false, 2),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beans, great northern, mature seeds, canned
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שעועית צפונית גדולה גסה, זרעים בשלים, משומרת בפחית', 'Beans, great northern, mature seeds, canned', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~180 גרם)'::text, '1 cup cooked (~180g)'::text, 180.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם מבושל', '100g cooked', 100.0, 1.0, 0.0, false, 2),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beans, great northern, mature seeds, canned, low sodium
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שעועית צפונית גדולה גסה, זרעים בשלים, משומרת בפחית, נמוכה בנתרן', 'Beans, great northern, mature seeds, canned, low sodium', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~180 גרם)'::text, '1 cup cooked (~180g)'::text, 180.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם מבושל', '100g cooked', 100.0, 1.0, 0.0, false, 2),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beans, great northern, mature seeds, cooked, boiled, with salt
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שעועית צפונית גדולה גסה, זרעים בשלים, מבושלת, עם מלח', 'Beans, great northern, mature seeds, cooked, boiled, with salt', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~180 גרם)'::text, '1 cup cooked (~180g)'::text, 180.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם מבושל', '100g cooked', 100.0, 1.0, 0.0, false, 2),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beans, great northern, mature seeds, cooked, boiled, without salt
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שעועית צפונית גדולה גסה, זרעים בשלים, מבושלת, ללא מלח', 'Beans, great northern, mature seeds, cooked, boiled, without salt', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~180 גרם)'::text, '1 cup cooked (~180g)'::text, 180.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם מבושל', '100g cooked', 100.0, 1.0, 0.0, false, 2),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beans, great northern, mature seeds, raw (Includes foods for USDA's Food Distribution Program) -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שעועית צפונית גדולה גסה, זרעים בשלים, גולמית', 'Beans, great northern, mature seeds, raw (Includes foods for USDA''s Food Distribution Program)', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~180 גרם)'::text, '1 cup cooked (~180g)'::text, 180.0::numeric, 6.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם מבושל', '100g cooked', 100.0, 3.5, 0.0, false, 2),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beans, kidney, all types, mature seeds, canned
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שעועית כליה גסה, כל הסוגים, זרעים בשלים, משומרת בפחית', 'Beans, kidney, all types, mature seeds, canned', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~180 גרם)'::text, '1 cup cooked (~180g)'::text, 180.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם מבושל', '100g cooked', 100.0, 1.0, 0.0, false, 2),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beans, kidney, all types, mature seeds, cooked, boiled, with salt
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שעועית כליה גסה, כל הסוגים, זרעים בשלים, מבושלת, עם מלח', 'Beans, kidney, all types, mature seeds, cooked, boiled, with salt', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~180 גרם)'::text, '1 cup cooked (~180g)'::text, 180.0::numeric, 2.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם מבושל', '100g cooked', 100.0, 1.5, 0.0, false, 2),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beans, kidney, all types, mature seeds, cooked, boiled, without salt
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שעועית כליה גסה, כל הסוגים, זרעים בשלים, מבושלת, ללא מלח', 'Beans, kidney, all types, mature seeds, cooked, boiled, without salt', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~180 גרם)'::text, '1 cup cooked (~180g)'::text, 180.0::numeric, 2.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם מבושל', '100g cooked', 100.0, 1.5, 0.0, false, 2),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beans, kidney, all types, mature seeds, raw -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שעועית כליה גסה, כל הסוגים, זרעים בשלים, גולמית', 'Beans, kidney, all types, mature seeds, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~180 גרם)'::text, '1 cup cooked (~180g)'::text, 180.0::numeric, 6.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם מבושל', '100g cooked', 100.0, 3.5, 0.0, false, 2),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beans, kidney, california red, mature seeds, cooked, boiled, with salt
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שעועית כליה אדומה קליפורנית גסה, זרעים בשלים, מבושלת, עם מלח', 'Beans, kidney, california red, mature seeds, cooked, boiled, with salt', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~180 גרם)'::text, '1 cup cooked (~180g)'::text, 180.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם מבושל', '100g cooked', 100.0, 1.0, 0.0, false, 2),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beans, kidney, california red, mature seeds, cooked, boiled, without salt
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שעועית כליה אדומה קליפורנית גסה, זרעים בשלים, מבושלת, ללא מלח', 'Beans, kidney, california red, mature seeds, cooked, boiled, without salt', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~180 גרם)'::text, '1 cup cooked (~180g)'::text, 180.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם מבושל', '100g cooked', 100.0, 1.0, 0.0, false, 2),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

COMMIT;
