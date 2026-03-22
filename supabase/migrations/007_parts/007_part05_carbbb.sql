BEGIN;

-- [CARB] Cereals ready-to-eat, MALT-O-MEAL, HONEY GRAHAM SQUARES
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('דגני בוקר מוכנים, MALT-O-MEAL, HONEY GRAHAM SQUARES', 'Cereals ready-to-eat, MALT-O-MEAL, HONEY GRAHAM SQUARES', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('קערה (~40 גרם)'::text, '1 bowl (~40g)'::text, 40.0::numeric, 0.0::numeric, 1.5::numeric, true::boolean, 1::integer),
  ('3 כפות (~25 גרם)', '3 tbsp (~25g)', 25.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 3.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Cereals ready-to-eat, MALT-O-MEAL, Honey BUZZERS
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('דגני בוקר מוכנים, MALT-O-MEAL, Honey BUZZERS', 'Cereals ready-to-eat, MALT-O-MEAL, Honey BUZZERS', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('קערה (~40 גרם)'::text, '1 bowl (~40g)'::text, 40.0::numeric, 0.0::numeric, 2.0::numeric, true::boolean, 1::integer),
  ('3 כפות (~25 גרם)', '3 tbsp (~25g)', 25.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 4.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Cereals ready-to-eat, MALT-O-MEAL, Honey Nut SCOOTERS
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('דגני בוקר מוכנים, MALT-O-MEAL, Honey Nut SCOOTERS', 'Cereals ready-to-eat, MALT-O-MEAL, Honey Nut SCOOTERS', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('קערה (~40 גרם)'::text, '1 bowl (~40g)'::text, 40.0::numeric, 0.0::numeric, 1.5::numeric, true::boolean, 1::integer),
  ('3 כפות (~25 גרם)', '3 tbsp (~25g)', 25.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 3.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Cereals ready-to-eat, MALT-O-MEAL, MARSHMALLOW MATEYS
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('דגני בוקר מוכנים, MALT-O-MEAL, MARSHMALLOW MATEYS', 'Cereals ready-to-eat, MALT-O-MEAL, MARSHMALLOW MATEYS', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('קערה (~40 גרם)'::text, '1 bowl (~40g)'::text, 40.0::numeric, 0.0::numeric, 1.5::numeric, true::boolean, 1::integer),
  ('3 כפות (~25 גרם)', '3 tbsp (~25g)', 25.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 4.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Cereals ready-to-eat, MALT-O-MEAL, OAT BLENDERS with honey
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('דגני בוקר מוכנים, MALT-O-MEAL, OAT BLENDERS עם דבש', 'Cereals ready-to-eat, MALT-O-MEAL, OAT BLENDERS with honey', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('קערה (~40 גרם)'::text, '1 bowl (~40g)'::text, 40.0::numeric, 0.0::numeric, 1.5::numeric, true::boolean, 1::integer),
  ('3 כפות (~25 גרם)', '3 tbsp (~25g)', 25.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 4.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Cereals ready-to-eat, MALT-O-MEAL, OAT BLENDERS with honey & almonds
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('דגני בוקר מוכנים, MALT-O-MEAL, OAT BLENDERS עם דבש ושקדים', 'Cereals ready-to-eat, MALT-O-MEAL, OAT BLENDERS with honey & almonds', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('קערה (~40 גרם)'::text, '1 bowl (~40g)'::text, 40.0::numeric, 0.0::numeric, 1.5::numeric, true::boolean, 1::integer),
  ('3 כפות (~25 גרם)', '3 tbsp (~25g)', 25.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 3.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Cereals ready-to-eat, MALT-O-MEAL, Raisin Bran Cereal
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('דגני בוקר מוכנים, MALT-O-MEAL, Raisin Bran', 'Cereals ready-to-eat, MALT-O-MEAL, Raisin Bran Cereal', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('קערה (~40 גרם)'::text, '1 bowl (~40g)'::text, 40.0::numeric, 0.0::numeric, 1.5::numeric, true::boolean, 1::integer),
  ('3 כפות (~25 גרם)', '3 tbsp (~25g)', 25.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 3.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Cereals ready-to-eat, MALT-O-MEAL, TOOTIE FRUITIES
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('דגני בוקר מוכנים, MALT-O-MEAL, TOOTIE FRUITIES', 'Cereals ready-to-eat, MALT-O-MEAL, TOOTIE FRUITIES', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('קערה (~40 גרם)'::text, '1 bowl (~40g)'::text, 40.0::numeric, 0.0::numeric, 1.5::numeric, true::boolean, 1::integer),
  ('3 כפות (~25 גרם)', '3 tbsp (~25g)', 25.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 4.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Cereals ready-to-eat, MOM'S BEST, Honey Nut TOASTY O'S
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('דגני בוקר מוכנים, MOM''S BEST, Honey Nut TOASTY O''S', 'Cereals ready-to-eat, MOM''S BEST, Honey Nut TOASTY O''S', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('קערה (~40 גרם)'::text, '1 bowl (~40g)'::text, 40.0::numeric, 0.0::numeric, 1.5::numeric, true::boolean, 1::integer),
  ('3 כפות (~25 גרם)', '3 tbsp (~25g)', 25.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 3.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Cereals ready-to-eat, MOM'S BEST, Sweetened WHEAT-FULS
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('דגני בוקר מוכנים, MOM''S BEST, Sweetened WHEAT-FULS', 'Cereals ready-to-eat, MOM''S BEST, Sweetened WHEAT-FULS', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('קערה (~40 גרם)'::text, '1 bowl (~40g)'::text, 40.0::numeric, 0.0::numeric, 1.5::numeric, true::boolean, 1::integer),
  ('3 כפות (~25 גרם)', '3 tbsp (~25g)', 25.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 3.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Cereals ready-to-eat, NATURE'S PATH, Organic FLAX PLUS flakes
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('דגני בוקר מוכנים, NATURE''S PATH, Organic FLAX PLUS פתיתים', 'Cereals ready-to-eat, NATURE''S PATH, Organic FLAX PLUS flakes', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('קערה (~40 גרם)'::text, '1 bowl (~40g)'::text, 40.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('3 כפות (~25 גרם)', '3 tbsp (~25g)', 25.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 3.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Cereals ready-to-eat, NATURE'S PATH, Organic FLAX PLUS, Pumpkin Granola
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('דגני בוקר מוכנים, NATURE''S PATH, Organic FLAX PLUS, Pumpkin Granola', 'Cereals ready-to-eat, NATURE''S PATH, Organic FLAX PLUS, Pumpkin Granola', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('קערה (~40 גרם)'::text, '1 bowl (~40g)'::text, 40.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('3 כפות (~25 גרם)', '3 tbsp (~25g)', 25.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 3.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Cereals ready-to-eat, OAT BRAN FLAKES, HEALTH VALLEY
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('דגני בוקר מוכנים, OAT BRAN FLAKES, HEALTH VALLEY', 'Cereals ready-to-eat, OAT BRAN FLAKES, HEALTH VALLEY', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('קערה (~40 גרם)'::text, '1 bowl (~40g)'::text, 40.0::numeric, 0.0::numeric, 1.5::numeric, true::boolean, 1::integer),
  ('3 כפות (~25 גרם)', '3 tbsp (~25g)', 25.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 3.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Cereals ready-to-eat, POST Bran Flakes
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('דגני בוקר מוכנים, POST Bran Flakes', 'Cereals ready-to-eat, POST Bran Flakes', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('קערה (~40 גרם)'::text, '1 bowl (~40g)'::text, 40.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('3 כפות (~25 גרם)', '3 tbsp (~25g)', 25.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 3.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Cereals ready-to-eat, POST GREAT GRAINS Banana Nut Crunch
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('דגני בוקר מוכנים, POST GREAT GRAINS Banana Nut Crunch', 'Cereals ready-to-eat, POST GREAT GRAINS Banana Nut Crunch', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('קערה (~40 גרם)'::text, '1 bowl (~40g)'::text, 40.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('3 כפות (~25 גרם)', '3 tbsp (~25g)', 25.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 3.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Cereals ready-to-eat, POST GREAT GRAINS Cranberry Almond Crunch
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('דגני בוקר מוכנים, POST GREAT GRAINS Cranberry Almond Crunch', 'Cereals ready-to-eat, POST GREAT GRAINS Cranberry Almond Crunch', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('קערה (~40 גרם)'::text, '1 bowl (~40g)'::text, 40.0::numeric, 0.0::numeric, 1.5::numeric, true::boolean, 1::integer),
  ('3 כפות (~25 גרם)', '3 tbsp (~25g)', 25.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 3.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Cereals ready-to-eat, POST HONEY BUNCHES OF OATS with cinnamon bunches
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('דגנים מוכנים לאכילה, POST HONEY BUNCHES OF OATS עם קנלה', 'Cereals ready-to-eat, POST HONEY BUNCHES OF OATS with cinnamon bunches', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('קערה (~40 גרם)'::text, '1 bowl (~40g)'::text, 40.0::numeric, 0.0::numeric, 1.5::numeric, true::boolean, 1::integer),
  ('3 כפות (~25 גרם)', '3 tbsp (~25g)', 25.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 4.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Cereals ready-to-eat, POST Raisin Bran Cereal
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('דגנים מוכנים לאכילה, POST Raisin Bran', 'Cereals ready-to-eat, POST Raisin Bran Cereal', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('קערה (~40 גרם)'::text, '1 bowl (~40g)'::text, 40.0::numeric, 0.0::numeric, 1.5::numeric, true::boolean, 1::integer),
  ('3 כפות (~25 גרם)', '3 tbsp (~25g)', 25.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 3.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Cereals ready-to-eat, POST SELECTS Blueberry Morning
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('דגנים מוכנים לאכילה, POST SELECTS Blueberry Morning', 'Cereals ready-to-eat, POST SELECTS Blueberry Morning', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('קערה (~40 גרם)'::text, '1 bowl (~40g)'::text, 40.0::numeric, 0.0::numeric, 1.5::numeric, true::boolean, 1::integer),
  ('3 כפות (~25 גרם)', '3 tbsp (~25g)', 25.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 4.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Cereals ready-to-eat, POST SELECTS Maple Pecan Crunch
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('דגנים מוכנים לאכילה, POST SELECTS Maple Pecan Crunch', 'Cereals ready-to-eat, POST SELECTS Maple Pecan Crunch', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('קערה (~40 גרם)'::text, '1 bowl (~40g)'::text, 40.0::numeric, 0.0::numeric, 1.5::numeric, true::boolean, 1::integer),
  ('3 כפות (~25 גרם)', '3 tbsp (~25g)', 25.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 3.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Cereals ready-to-eat, POST, ALPHA-BITS
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('דגנים מוכנים לאכילה, POST ALPHA-BITS', 'Cereals ready-to-eat, POST, ALPHA-BITS', 'carb', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('קערה (~40 גרם)'::text, '1 bowl (~40g)'::text, 40.0::numeric, 0.0::numeric, 1.5::numeric, true::boolean, 1::integer),
  ('3 כפות (~25 גרם)', '3 tbsp (~25g)', 25.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 3.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Osem 100% Whole Wheat Crackers
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('קרקרים אוסם 100% מחיטה מלאה', 'Osem 100% Whole Wheat Crackers', 'carb', 'red', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('3 קרקרים (~20 גרם)'::text, '3 crackers (~20g)'::text, 20.0::numeric, 0.0::numeric, 0.5::numeric, true::boolean, 1::integer),
  ('6 קרקרים (~40 גרם)', '6 crackers (~40g)', 40.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 3.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Osem Regular Crackers
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('קרקרים אוסם רגילים', 'Osem Regular Crackers', 'carb', 'red', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('3 קרקרים (~20 גרם)'::text, '3 crackers (~20g)'::text, 20.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.0, 3.5, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Osem Spaghetti
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('פסטה ספגטי אוסם', 'Osem Spaghetti', 'carb', 'red', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~200 גרם)'::text, '1 cup cooked (~200g)'::text, 200.0::numeric, 0.0::numeric, 2.5::numeric, true::boolean, 1::integer),
  ('100 גרם מבושל', '100g cooked', 100.0, 0.0, 1.5, false, 2),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.0, 1.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Osem Elbow Pasta
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('פסטה מרפק אוסם', 'Osem Elbow Pasta', 'carb', 'red', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~200 גרם)'::text, '1 cup cooked (~200g)'::text, 200.0::numeric, 0.0::numeric, 2.5::numeric, true::boolean, 1::integer),
  ('100 גרם מבושל', '100g cooked', 100.0, 0.0, 1.5, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Osem Fusilli Pasta
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('פסטה פוזילי אוסם', 'Osem Fusilli Pasta', 'carb', 'red', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~200 גרם)'::text, '1 cup cooked (~200g)'::text, 200.0::numeric, 0.0::numeric, 2.5::numeric, true::boolean, 1::integer),
  ('100 גרם מבושל', '100g cooked', 100.0, 0.0, 1.5, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Osem Couscous
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('קוסקוס אוסם', 'Osem Couscous', 'carb', 'red', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~200 גרם)'::text, '1 cup cooked (~200g)'::text, 200.0::numeric, 0.0::numeric, 2.0::numeric, true::boolean, 1::integer),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.0, 1.0, false, 2),
  ('100 גרם מבושל', '100g cooked', 100.0, 0.0, 1.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Osem Soup Nuts (Mandeln)
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שקדי מרק אוסם', 'Osem Soup Nuts (Mandeln)', 'carb', 'red', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כף (~10 גרם)'::text, '1 tbsp (~10g)'::text, 10.0::numeric, 0.0::numeric, 0.5::numeric, true::boolean, 1::integer),
  ('3 כפות (~30 גרם)', '3 tbsp (~30g)', 30.0, 0.0, 1.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Osem Egg Noodles
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('אטריות ביצים אוסם', 'Osem Egg Noodles', 'carb', 'red', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~200 גרם)'::text, '1 cup cooked (~200g)'::text, 200.0::numeric, 0.0::numeric, 2.0::numeric, true::boolean, 1::integer),
  ('100 גרם מבושל', '100g cooked', 100.0, 0.0, 1.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Osem White Rice
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('אורז אוסם לבן', 'Osem White Rice', 'carb', 'red', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~200 גרם)'::text, '1 cup cooked (~200g)'::text, 200.0::numeric, 0.0::numeric, 2.5::numeric, true::boolean, 1::integer),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.0, 1.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Osem Mini Pita Chips
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('פיתות מיני אוסם', 'Osem Mini Pita Chips', 'carb', 'red', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('חופן (~20 גרם)'::text, '1 handful (~20g)'::text, 20.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.0, 4.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Telma Cornflakes
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('קורנפלקס טלמה', 'Telma Cornflakes', 'carb', 'red', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('קערה (~40 גרם)'::text, '1 bowl (~40g)'::text, 40.0::numeric, 0.0::numeric, 1.5::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.0, 4.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Telma Quick Oats
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שיבולת שועל מהירה טלמה', 'Telma Quick Oats', 'carb', 'red', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('3 כפות יבש (~25 גרם)'::text, '3 tbsp dry (~25g)'::text, 25.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('6 כפות יבש (~50 גרם)', '6 tbsp dry (~50g)', 50.0, 0.0, 2.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 4.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Telma Honey Granola
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גרנולה טלמה דבש', 'Telma Honey Granola', 'carb', 'red', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('קערה (~40 גרם)'::text, '1 bowl (~40g)'::text, 40.0::numeric, 0.0::numeric, 1.5::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.0, 3.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Cheese Burekas
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בורקס גבינה', 'Cheese Burekas', 'carb', 'red', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('בורקס אחד (~80 גרם)'::text, '1 burekas (~80g)'::text, 80.0::numeric, 0.5::numeric, 2.0::numeric, true::boolean, 1::integer)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Butter Croissant
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('קרואסון חמאה', 'Butter Croissant', 'carb', 'red', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('קרואסון אחד (~60 גרם)'::text, '1 croissant (~60g)'::text, 60.0::numeric, 0.0::numeric, 2.0::numeric, true::boolean, 1::integer)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Bagel
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בייגל', 'Bagel', 'carb', 'red', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('בייגל אחד (~100 גרם)'::text, '1 bagel (~100g)'::text, 100.0::numeric, 0.0::numeric, 2.5::numeric, true::boolean, 1::integer)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Wheat Tortilla Wrap
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('טורטייה חיטה', 'Wheat Tortilla Wrap', 'carb', 'red', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('עלה אחד (~40 גרם)'::text, '1 wrap (~40g)'::text, 40.0::numeric, 0.0::numeric, 1.5::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.0, 3.5, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Gluten-Free Rice Bread
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('לחם אורז ללא גלוטן', 'Gluten-Free Rice Bread', 'carb', 'red', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('פרוסה (~30 גרם)'::text, '1 slice (~30g)'::text, 30.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 0.0, 3.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Cooked Basmati Rice
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('אורז בסמטי מבושל', 'Cooked Basmati Rice', 'carb', 'red', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~200 גרם)'::text, '1 cup cooked (~200g)'::text, 200.0::numeric, 0.0::numeric, 2.5::numeric, true::boolean, 1::integer),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.0, 1.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

COMMIT;
