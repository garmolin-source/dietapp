BEGIN;

-- [CARB] Cooked Jasmine Rice
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('אורז יסמין מבושל', 'Cooked Jasmine Rice', 'carb', 'red', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~200 גרם)'::text, '1 cup cooked (~200g)'::text, 200.0::numeric, 0.0::numeric, 2.5::numeric, true::boolean, 1::integer),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.0, 1.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Cooked Quinoa (Brand)
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('קינואה מבושלת', 'Cooked Quinoa (Brand)', 'carb', 'red', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~200 גרם)'::text, '1 cup cooked (~200g)'::text, 200.0::numeric, 0.5::numeric, 2.0::numeric, true::boolean, 1::integer),
  ('100 גרם מבושל', '100g cooked', 100.0, 0.5, 1.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [CARB] Cooked Whole Wheat Penne
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('פסטה פנה מלאה מבושלת', 'Cooked Whole Wheat Penne', 'carb', 'red', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~200 גרם)'::text, '1 cup cooked (~200g)'::text, 200.0::numeric, 0.0::numeric, 2.5::numeric, true::boolean, 1::integer),
  ('100 גרם מבושל', '100g cooked', 100.0, 0.0, 1.5, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

COMMIT;
