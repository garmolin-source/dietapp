-- Add olives to the food database
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('זיתים ירוקים', 'Green Olives', 'fat', 'yellow', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('5 זיתים (~25 גרם)'::text, '5 olives (~25g)'::text, 25::numeric, 0.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('10 זיתים (~50 גרם)', '10 olives (~50g)', 50, 0.5, 0.0, false, 2),
  ('20 זיתים (~100 גרם)', '20 olives (~100g)', 100, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('זיתים שחורים', 'Black Olives', 'fat', 'yellow', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('5 זיתים (~30 גרם)'::text, '5 olives (~30g)'::text, 30::numeric, 0.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('10 זיתים (~60 גרם)', '10 olives (~60g)', 60, 0.5, 0.0, false, 2),
  ('20 זיתים (~120 גרם)', '20 olives (~120g)', 120, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
