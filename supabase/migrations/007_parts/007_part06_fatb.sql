BEGIN;

-- [FAT] Animal fat, bacon grease
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שומן בקר, שומן בייקון', 'Animal fat, bacon grease', 'fat', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כף (~13 גרם)'::text, '1 tbsp (~13g)'::text, 13.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כפית (~5 גרם)', '1 tsp (~5g)', 5.0, 0.5, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 9.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FAT] Butter replacement, without fat, powder
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('תחליף חמאה, ללא שומן, אבקה', 'Butter replacement, without fat, powder', 'fat', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כף (~13 גרם)'::text, '1 tbsp (~13g)'::text, 13.0::numeric, 0.0::numeric, 0.5::numeric, true::boolean, 1::integer),
  ('כפית (~5 גרם)', '1 tsp (~5g)', 5.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 4.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FAT] Butter, light, stick, with salt
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('חמאה קלה, בחפיסה, עם מלח', 'Butter, light, stick, with salt', 'fat', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כף (~13 גרם)'::text, '1 tbsp (~13g)'::text, 13.0::numeric, 0.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כפית (~5 גרם)', '1 tsp (~5g)', 5.0, 0.5, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 5.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FAT] Butter, light, stick, without salt
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('חמאה קלה, בחפיסה, ללא מלח', 'Butter, light, stick, without salt', 'fat', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כף (~13 גרם)'::text, '1 tbsp (~13g)'::text, 13.0::numeric, 0.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כפית (~5 גרם)', '1 tsp (~5g)', 5.0, 0.5, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 5.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FAT] Creamy dressing, made with sour cream and/or buttermilk and oil, reduced calorie -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('רוטב קרים, עם שמנת חמוצה ו/או חלב חמוץ ושמן, קלורי מופחת', 'Creamy dressing, made with sour cream and/or buttermilk and oil, reduced calorie', 'fat', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כף (~13 גרם)'::text, '1 tbsp (~13g)'::text, 13.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כפית (~5 גרם)', '1 tsp (~5g)', 5.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 1.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FAT] Creamy dressing, made with sour cream and/or buttermilk and oil, reduced calorie, cholesterol-free -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('רוטב קרים, עם שמנת חמוצה ו/או חלב חמוץ ושמן, קלורי מופחת, ללא כולסטרול', 'Creamy dressing, made with sour cream and/or buttermilk and oil, reduced calorie, cholesterol-free', 'fat', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כף (~13 גרם)'::text, '1 tbsp (~13g)'::text, 13.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כפית (~5 גרם)', '1 tsp (~5g)', 5.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 1.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FAT] Creamy dressing, made with sour cream and/or buttermilk and oil, reduced calorie, fat-free -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('רוטב קרים, עם שמנת חמוצה ו/או חלב חמוץ ושמן, קלורי מופחת, ללא שומן', 'Creamy dressing, made with sour cream and/or buttermilk and oil, reduced calorie, fat-free', 'fat', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כף (~13 גרם)'::text, '1 tbsp (~13g)'::text, 13.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כפית (~5 גרם)', '1 tsp (~5g)', 5.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 1.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FAT] Dressing, honey mustard, fat-free
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('רוטב, חרדל דבש, ללא שומן', 'Dressing, honey mustard, fat-free', 'fat', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כף (~13 גרם)'::text, '1 tbsp (~13g)'::text, 13.0::numeric, 0.0::numeric, 0.5::numeric, true::boolean, 1::integer),
  ('כפית (~5 גרם)', '1 tsp (~5g)', 5.0, 0.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 2.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FAT] Fat, beef tallow
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שומן, שומן בקר', 'Fat, beef tallow', 'fat', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כף (~13 גרם)'::text, '1 tbsp (~13g)'::text, 13.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כפית (~5 גרם)', '1 tsp (~5g)', 5.0, 0.5, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 9.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FAT] Fat, chicken
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שומן, שומן עוף', 'Fat, chicken', 'fat', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כף (~13 גרם)'::text, '1 tbsp (~13g)'::text, 13.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כפית (~5 גרם)', '1 tsp (~5g)', 5.0, 0.5, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 9.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FAT] Fat, goose
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שומן, שומן אווז', 'Fat, goose', 'fat', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כף (~13 גרם)'::text, '1 tbsp (~13g)'::text, 13.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כפית (~5 גרם)', '1 tsp (~5g)', 5.0, 0.5, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 9.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FAT] Fat, turkey
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שומן, שומן הודו', 'Fat, turkey', 'fat', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כף (~13 גרם)'::text, '1 tbsp (~13g)'::text, 13.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כפית (~5 גרם)', '1 tsp (~5g)', 5.0, 0.5, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 9.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FAT] Fish oil, cod liver
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שמן דגים, כבד סקולריט', 'Fish oil, cod liver', 'fat', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כף (~13 גרם)'::text, '1 tbsp (~13g)'::text, 13.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כפית (~5 גרם)', '1 tsp (~5g)', 5.0, 0.5, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 9.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FAT] Fish oil, herring
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שמן דגים, הרינג', 'Fish oil, herring', 'fat', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כף (~13 גרם)'::text, '1 tbsp (~13g)'::text, 13.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כפית (~5 גרם)', '1 tsp (~5g)', 5.0, 0.5, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 9.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FAT] Raw Tahini - Grains Brand
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('טחינה גולמית גרעינים', 'Raw Tahini - Grains Brand', 'fat', 'yellow', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כף (~15 גרם)'::text, '1 tbsp (~15g)'::text, 15.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('2 כפות (~30 גרם)', '2 tbsp (~30g)', 30.0, 2.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 6.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FAT] Ready Tahini (Prepared)
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('טחינה מוכנה', 'Ready Tahini (Prepared)', 'fat', 'yellow', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('2 כפות (~30 גרם)'::text, '2 tbsp (~30g)'::text, 30.0::numeric, 0.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 2.0, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FAT] Natural Peanut Butter - Brand
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('חמאת בוטנים טבעית', 'Natural Peanut Butter - Brand', 'fat', 'yellow', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כף (~15 גרם)'::text, '1 tbsp (~15g)'::text, 15.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 6.0, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FAT] Extra Virgin Olive Oil
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שמן זית כתית מעולה', 'Extra Virgin Olive Oil', 'fat', 'yellow', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כף (~13 גרם)'::text, '1 tbsp (~13g)'::text, 13.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כפית (~4 גרם)', '1 tsp (~4g)', 4.0, 0.5, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FAT] Canola Oil
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שמן קנולה', 'Canola Oil', 'fat', 'yellow', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כף (~13 גרם)'::text, '1 tbsp (~13g)'::text, 13.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כפית (~4 גרם)', '1 tsp (~4g)', 4.0, 0.5, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FAT] Avocado Spread (Guacamole)
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('אבוקדו (ממרח)', 'Avocado Spread (Guacamole)', 'fat', 'yellow', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('2 כפות (~30 גרם)'::text, '2 tbsp (~30g)'::text, 30.0::numeric, 0.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי אבוקדו (~80 גרם)', 'Half avocado (~80g)', 80.0, 1.0, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FAT] Roasted Almonds
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שקדים קלויים', 'Roasted Almonds', 'fat', 'yellow', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('חופן (~30 גרם)'::text, '1 handful (~30g)'::text, 30.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 5.0, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FAT] Pistachios
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('פיסטוקים', 'Pistachios', 'fat', 'yellow', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('חופן (~30 גרם)'::text, '1 handful (~30g)'::text, 30.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 5.5, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FAT] Roasted Peanuts
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בוטנים קלויים', 'Roasted Peanuts', 'fat', 'yellow', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('חופן (~30 גרם)'::text, '1 handful (~30g)'::text, 30.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 5.5, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FAT] Roasted Sunflower Seeds
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גרעיני חמנייה קלויים', 'Roasted Sunflower Seeds', 'fat', 'yellow', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('3 כפות (~30 גרם)'::text, '3 tbsp (~30g)'::text, 30.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 5.5, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FAT] Pumpkin Seeds
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גרעיני דלעת', 'Pumpkin Seeds', 'fat', 'yellow', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('3 כפות (~30 גרם)'::text, '3 tbsp (~30g)'::text, 30.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 5.5, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FAT] Mayonnaise
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('מיונז', 'Mayonnaise', 'fat', 'yellow', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כף (~15 גרם)'::text, '1 tbsp (~15g)'::text, 15.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כפית (~5 גרם)', '1 tsp (~5g)', 5.0, 0.5, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FAT] Light Mayonnaise
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('מיונז קל', 'Light Mayonnaise', 'fat', 'yellow', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כף (~15 גרם)'::text, '1 tbsp (~15g)'::text, 15.0::numeric, 0.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('2 כפות (~30 גרם)', '2 tbsp (~30g)', 30.0, 1.0, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FAT] Almond Flour
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('קמח שקדים', 'Almond Flour', 'fat', 'yellow', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס (~100 גרם)'::text, '1 cup (~100g)'::text, 100.0::numeric, 5.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('3 כפות (~30 גרם)', '3 tbsp (~30g)', 30.0, 1.5, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

COMMIT;
