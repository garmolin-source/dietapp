BEGIN;

-- ============================================================
-- BEVERAGE (52 foods)
-- ============================================================

-- [BEVERAGE] Alcoholic beverage, whiskey sour, prepared with water, whiskey and powder mix -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('משקה אלכוהולי, וויסקי סאור, מוכן עם מים, וויסקי ותערובת אבקה', 'Alcoholic beverage, whiskey sour, prepared with water, whiskey and powder mix', 'beverage', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס (~240 מ"ל)'::text, '1 cup (~240ml)'::text, 240.0::numeric, 0.0::numeric, 2.5::numeric, true::boolean, 1::integer),
  ('100 מ"ל', '100ml', 100.0, 0.0, 1.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [BEVERAGE] Beverages, Energy drink, Citrus
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('משקאות, משקה אנרגיה, ציטרוס', 'Beverages, Energy drink, Citrus', 'beverage', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס (~240 מ"ל)'::text, '1 cup (~240ml)'::text, 240.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 מ"ל', '100ml', 100.0, 0.0, 0.5, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [BEVERAGE] Beverages, ABBOTT, ENSURE PLUS, ready-to-drink -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('משקאות, ABBOTT, ENSURE PLUS, מוכן לשתייה', 'Beverages, ABBOTT, ENSURE PLUS, ready-to-drink', 'beverage', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס (~240 מ"ל)'::text, '1 cup (~240ml)'::text, 240.0::numeric, 0.0::numeric, 2.5::numeric, true::boolean, 1::integer),
  ('100 מ"ל', '100ml', 100.0, 0.0, 1.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [BEVERAGE] Beverages, ABBOTT, ENSURE, Nutritional Shake, Ready-to-Drink
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('משקאות, ABBOTT, ENSURE, שייק תזונתי, מוכן לשתייה', 'Beverages, ABBOTT, ENSURE, Nutritional Shake, Ready-to-Drink', 'beverage', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס (~240 מ"ל)'::text, '1 cup (~240ml)'::text, 240.0::numeric, 0.0::numeric, 2.5::numeric, true::boolean, 1::integer),
  ('100 מ"ל', '100ml', 100.0, 0.0, 1.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [BEVERAGE] Beverages, ARIZONA, tea, ready-to-drink, lemon
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('משקאות, ARIZONA, תה, מוכן לשתייה, לימון', 'Beverages, ARIZONA, tea, ready-to-drink, lemon', 'beverage', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס (~240 מ"ל)'::text, '1 cup (~240ml)'::text, 240.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 מ"ל', '100ml', 100.0, 0.0, 0.5, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [BEVERAGE] Beverages, Acai berry drink, fortified
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('משקאות, משקה אקאי בארי, מועשר', 'Beverages, Acai berry drink, fortified', 'beverage', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס (~240 מ"ל)'::text, '1 cup (~240ml)'::text, 240.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 מ"ל', '100ml', 100.0, 0.0, 0.5, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [BEVERAGE] Beverages, Apple juice drink, light, fortified with vitamin C
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('משקאות, משקה מיץ תפוח, קל, מועשר בוויטמין C', 'Beverages, Apple juice drink, light, fortified with vitamin C', 'beverage', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס (~240 מ"ל)'::text, '1 cup (~240ml)'::text, 240.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 מ"ל', '100ml', 100.0, 0.0, 0.5, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [BEVERAGE] Beverages, COCA-COLA, POWERADE, lemon-lime flavored, ready-to-drink
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('משקאות, COCA-COLA, POWERADE, בטעם לימון-לימה, מוכן לשתייה', 'Beverages, COCA-COLA, POWERADE, lemon-lime flavored, ready-to-drink', 'beverage', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס (~240 מ"ל)'::text, '1 cup (~240ml)'::text, 240.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 מ"ל', '100ml', 100.0, 0.0, 0.5, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [BEVERAGE] Beverages, CYTOSPORT, Muscle Milk, ready-to-drink -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('משקאות, CYTOSPORT, Muscle Milk, מוכן לשתייה', 'Beverages, CYTOSPORT, Muscle Milk, ready-to-drink', 'beverage', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס (~240 מ"ל)'::text, '1 cup (~240ml)'::text, 240.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 מ"ל', '100ml', 100.0, 0.5, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [BEVERAGE] Beverages, Chocolate-flavored drink, whey and milk based
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('משקאות, משקה בטעם שוקולד, בבסיס חלבון מי גבינה וחלב', 'Beverages, Chocolate-flavored drink, whey and milk based', 'beverage', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס (~240 מ"ל)'::text, '1 cup (~240ml)'::text, 240.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 מ"ל', '100ml', 100.0, 0.0, 0.5, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [BEVERAGE] Beverages, Clam and tomato juice, canned
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('משקאות, מיץ סרטן וטומטם, בקופסה', 'Beverages, Clam and tomato juice, canned', 'beverage', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס (~240 מ"ל)'::text, '1 cup (~240ml)'::text, 240.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 מ"ל', '100ml', 100.0, 0.0, 0.5, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [BEVERAGE] Beverages, Cocoa mix, powder, prepared with water
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('משקאות, תערובת קקאו, אבקה, מוכנה עם מים', 'Beverages, Cocoa mix, powder, prepared with water', 'beverage', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס (~240 מ"ל)'::text, '1 cup (~240ml)'::text, 240.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 מ"ל', '100ml', 100.0, 0.0, 0.5, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [BEVERAGE] Beverages, Coconut water, ready-to-drink, unsweetened
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('משקאות, מי קוקוס, מוכן לשתייה, ללא תוספת סוכר', 'Beverages, Coconut water, ready-to-drink, unsweetened', 'beverage', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס (~240 מ"ל)'::text, '1 cup (~240ml)'::text, 240.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 מ"ל', '100ml', 100.0, 0.0, 0.5, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [BEVERAGE] Beverages, Cranberry juice cocktail
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('משקאות, קוקטייל מיץ חרוך', 'Beverages, Cranberry juice cocktail', 'beverage', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס (~240 מ"ל)'::text, '1 cup (~240ml)'::text, 240.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 מ"ל', '100ml', 100.0, 0.0, 0.5, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [BEVERAGE] Beverages, Dairy drink mix, chocolate, reduced calorie, with low-calorie sweeteners, powder -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('משקאות, תערובת משקה חלבי, שוקולד, קלוריות מופחתות, עם מותקנים בקלוריות נמוכות, אבקה', 'Beverages, Dairy drink mix, chocolate, reduced calorie, with low-calorie sweeteners, powder', 'beverage', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס (~240 מ"ל)'::text, '1 cup (~240ml)'::text, 240.0::numeric, 8.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 מ"ל', '100ml', 100.0, 3.5, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [BEVERAGE] Beverages, Energy Drink with carbonated water and high fructose corn syrup
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('משקאות, משקה אנרגיה עם מים גזוזים וסירופ תירס עתיר פרוקטוז', 'Beverages, Energy Drink with carbonated water and high fructose corn syrup', 'beverage', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס (~240 מ"ל)'::text, '1 cup (~240ml)'::text, 240.0::numeric, 0.0::numeric, 2.5::numeric, true::boolean, 1::integer),
  ('100 מ"ל', '100ml', 100.0, 0.0, 1.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [BEVERAGE] Beverages, Energy Drink, Monster, fortified with vitamins C, B2, B3, B6, B12
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('משקאות, משקה אנרגיה, Monster, מועשר בוויטמינים C, B2, B3, B6, B12', 'Beverages, Energy Drink, Monster, fortified with vitamins C, B2, B3, B6, B12', 'beverage', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס (~240 מ"ל)'::text, '1 cup (~240ml)'::text, 240.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 מ"ל', '100ml', 100.0, 0.0, 0.5, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [BEVERAGE] Beverages, Energy Drink, sugar free -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('משקאות, משקה אנרגיה, ללא סוכר', 'Beverages, Energy Drink, sugar free', 'beverage', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס (~240 מ"ל)'::text, '1 cup (~240ml)'::text, 240.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 מ"ל', '100ml', 100.0, 0.5, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [BEVERAGE] Beverages, Energy drink, AMP
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('משקאות, משקה אנרגיה, AMP', 'Beverages, Energy drink, AMP', 'beverage', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס (~240 מ"ל)'::text, '1 cup (~240ml)'::text, 240.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 מ"ל', '100ml', 100.0, 0.0, 0.5, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [BEVERAGE] Beverages, Energy drink, AMP, sugar free
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('משקאות, משקה אנרגיה, AMP, ללא סוכר', 'Beverages, Energy drink, AMP, sugar free', 'beverage', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס (~240 מ"ל)'::text, '1 cup (~240ml)'::text, 240.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 מ"ל', '100ml', 100.0, 0.0, 0.5, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [BEVERAGE] Beverages, Energy drink, FULL THROTTLE
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('משקאות, משקה אנרגיה, FULL THROTTLE', 'Beverages, Energy drink, FULL THROTTLE', 'beverage', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס (~240 מ"ל)'::text, '1 cup (~240ml)'::text, 240.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 מ"ל', '100ml', 100.0, 0.0, 0.5, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [BEVERAGE] Beverages, Energy drink, RED BULL
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('משקאות, משקה אנרגיה, RED BULL', 'Beverages, Energy drink, RED BULL', 'beverage', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס (~240 מ"ל)'::text, '1 cup (~240ml)'::text, 240.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 מ"ל', '100ml', 100.0, 0.0, 0.5, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [BEVERAGE] Beverages, Energy drink, RED BULL, sugar free, with added caffeine, niacin, pantothenic acid, vitamins B6 and B12 -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('משקאות, משקה אנרגיה, RED BULL, ללא סוכר, עם קפאין, ניאצין, חומצה פנתותנית, וויטמינים B6 ו-B12', 'Beverages, Energy drink, RED BULL, sugar free, with added caffeine, niacin, pantothenic acid, vitamins B6 and B12', 'beverage', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס (~240 מ"ל)'::text, '1 cup (~240ml)'::text, 240.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 מ"ל', '100ml', 100.0, 0.0, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [BEVERAGE] Beverages, Energy drink, ROCKSTAR
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('משקאות, משקה אנרגיה, ROCKSTAR', 'Beverages, Energy drink, ROCKSTAR', 'beverage', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס (~240 מ"ל)'::text, '1 cup (~240ml)'::text, 240.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 מ"ל', '100ml', 100.0, 0.0, 0.5, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [BEVERAGE] Beverages, Energy drink, ROCKSTAR, sugar free
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('משקאות, משקה אנרגיה, ROCKSTAR, ללא סוכר', 'Beverages, Energy drink, ROCKSTAR, sugar free', 'beverage', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס (~240 מ"ל)'::text, '1 cup (~240ml)'::text, 240.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 מ"ל', '100ml', 100.0, 0.0, 0.5, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [BEVERAGE] Beverages, Energy drink, VAULT Zero, sugar-free, citrus flavor
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('משקאות, משקה אנרגיה, VAULT Zero, ללא סוכר, טעם ציטרוס', 'Beverages, Energy drink, VAULT Zero, sugar-free, citrus flavor', 'beverage', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס (~240 מ"ל)'::text, '1 cup (~240ml)'::text, 240.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 מ"ל', '100ml', 100.0, 0.0, 0.5, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [BEVERAGE] Beverages, Energy drink, VAULT, citrus flavor
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('משקאות, משקה אנרגיה, VAULT, טעם ציטרוס', 'Beverages, Energy drink, VAULT, citrus flavor', 'beverage', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס (~240 מ"ל)'::text, '1 cup (~240ml)'::text, 240.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 מ"ל', '100ml', 100.0, 0.0, 0.5, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [BEVERAGE] Beverages, Fruit flavored drink containing less than 3% fruit juice, with high vitamin C
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('משקאות, משקה בטעם פרי עם פחות מ-3% מיץ פרי, עם ויטמין C גבוה', 'Beverages, Fruit flavored drink containing less than 3% fruit juice, with high vitamin C', 'beverage', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס (~240 מ"ל)'::text, '1 cup (~240ml)'::text, 240.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 מ"ל', '100ml', 100.0, 0.0, 0.5, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [BEVERAGE] Beverages, Fruit flavored drink, less than 3% juice, not fortified with vitamin C
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('משקאות, משקה בטעם פרי, פחות מ-3% מיץ, ללא הוספת ויטמין C', 'Beverages, Fruit flavored drink, less than 3% juice, not fortified with vitamin C', 'beverage', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס (~240 מ"ל)'::text, '1 cup (~240ml)'::text, 240.0::numeric, 0.0::numeric, 2.5::numeric, true::boolean, 1::integer),
  ('100 מ"ל', '100ml', 100.0, 0.0, 1.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [BEVERAGE] Beverages, Fruit flavored drink, reduced sugar, greater than 3% fruit juice, high vitamin C, added calcium
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('משקאות, משקה בטעם פרי, סוכר מופחת, יותר מ-3% מיץ פרי, ויטמין C גבוה, עם הוספת סידן', 'Beverages, Fruit flavored drink, reduced sugar, greater than 3% fruit juice, high vitamin C, added calcium', 'beverage', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס (~240 מ"ל)'::text, '1 cup (~240ml)'::text, 240.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 מ"ל', '100ml', 100.0, 0.0, 0.5, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [BEVERAGE] Beverages, Fruit punch drink, frozen concentrate -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('משקאות, משקה פאנץ'' פרי, תמצית קפואה', 'Beverages, Fruit punch drink, frozen concentrate', 'beverage', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס (~240 מ"ל)'::text, '1 cup (~240ml)'::text, 240.0::numeric, 0.0::numeric, 5.0::numeric, true::boolean, 1::integer),
  ('100 מ"ל', '100ml', 100.0, 0.0, 2.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [BEVERAGE] Beverages, Fruit punch drink, frozen concentrate, prepared with water
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('משקאות, משקה פאנץ'' פרי, תמצית קפואה, מוכן עם מים', 'Beverages, Fruit punch drink, frozen concentrate, prepared with water', 'beverage', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס (~240 מ"ל)'::text, '1 cup (~240ml)'::text, 240.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 מ"ל', '100ml', 100.0, 0.0, 0.5, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [BEVERAGE] Beverages, Fruit punch drink, with added nutrients, canned
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('משקאות, משקה פאנץ'' פרי, עם תוספי חומרים נוגדים, בפחית', 'Beverages, Fruit punch drink, with added nutrients, canned', 'beverage', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס (~240 מ"ל)'::text, '1 cup (~240ml)'::text, 240.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 מ"ל', '100ml', 100.0, 0.0, 0.5, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [BEVERAGE] Beverages, Kiwi Strawberry Juice Drink
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('משקאות, משקה מיץ קיווי תות', 'Beverages, Kiwi Strawberry Juice Drink', 'beverage', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס (~240 מ"ל)'::text, '1 cup (~240ml)'::text, 240.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 מ"ל', '100ml', 100.0, 0.0, 0.5, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [BEVERAGE] Beverages, LIPTON BRISK, tea, black, ready-to-drink, lemon
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('משקאות, LIPTON BRISK, תה, שחור, מוכן לשתייה, לימון', 'Beverages, LIPTON BRISK, tea, black, ready-to-drink, lemon', 'beverage', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס (~240 מ"ל)'::text, '1 cup (~240ml)'::text, 240.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 מ"ל', '100ml', 100.0, 0.0, 0.5, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [BEVERAGE] Beverages, Lemonade fruit juice drink light, fortified with vitamin E and C
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('משקאות, משקה מיץ לימונדה קל, מועשר בויטמינים E ו-C', 'Beverages, Lemonade fruit juice drink light, fortified with vitamin E and C', 'beverage', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס (~240 מ"ל)'::text, '1 cup (~240ml)'::text, 240.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 מ"ל', '100ml', 100.0, 0.0, 0.5, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [BEVERAGE] Beverages, MONSTER energy drink, low carb
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('משקאות, משקה אנרגיה MONSTER, קרבוהידרט נמוך', 'Beverages, MONSTER energy drink, low carb', 'beverage', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס (~240 מ"ל)'::text, '1 cup (~240ml)'::text, 240.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 מ"ל', '100ml', 100.0, 0.0, 0.5, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [BEVERAGE] Beverages, MOTTS, Apple juice light, fortified with vitamin C
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('משקאות, MOTTS, מיץ תפוח קל, מועשר בויטמין C', 'Beverages, MOTTS, Apple juice light, fortified with vitamin C', 'beverage', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס (~240 מ"ל)'::text, '1 cup (~240ml)'::text, 240.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 מ"ל', '100ml', 100.0, 0.0, 0.5, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [BEVERAGE] Beverages, Malted drink mix, chocolate, powder, prepared with whole milk
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('משקאות, תערובת משקה מלט, שוקולד, אבקה, מוכנה עם חלב שלם', 'Beverages, Malted drink mix, chocolate, powder, prepared with whole milk', 'beverage', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס (~240 מ"ל)'::text, '1 cup (~240ml)'::text, 240.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 מ"ל', '100ml', 100.0, 0.5, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [BEVERAGE] Beverages, Malted drink mix, chocolate, with added nutrients, powder, prepared with whole milk
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('משקאות, תערובת משקה מלט, שוקולד, עם תוספי חומרים, אבקה, מוכנה עם חלב שלם', 'Beverages, Malted drink mix, chocolate, with added nutrients, powder, prepared with whole milk', 'beverage', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס (~240 מ"ל)'::text, '1 cup (~240ml)'::text, 240.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 מ"ל', '100ml', 100.0, 0.5, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [BEVERAGE] Beverages, Malted drink mix, natural, powder, dairy based. -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('משקאות, תערובת משקה מלט, טבעי, אבקה, על בסיס חלביים', 'Beverages, Malted drink mix, natural, powder, dairy based.', 'beverage', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס (~240 מ"ל)'::text, '1 cup (~240ml)'::text, 240.0::numeric, 0.0::numeric, 8.5::numeric, true::boolean, 1::integer),
  ('100 מ"ל', '100ml', 100.0, 0.0, 3.5, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [BEVERAGE] Beverages, Malted drink mix, natural, powder, prepared with whole milk
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('משקאות, תערובת משקה מלט, טבעי, אבקה, מוכנה עם חלב שלם', 'Beverages, Malted drink mix, natural, powder, prepared with whole milk', 'beverage', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס (~240 מ"ל)'::text, '1 cup (~240ml)'::text, 240.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 מ"ל', '100ml', 100.0, 0.5, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [BEVERAGE] Beverages, Malted drink mix, natural, with added nutrients, powder, prepared with whole milk
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('משקאות, תערובת משקה מלט, טבעי, עם תוספי חומרים, אבקה, מוכנה עם חלב שלם', 'Beverages, Malted drink mix, natural, with added nutrients, powder, prepared with whole milk', 'beverage', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס (~240 מ"ל)'::text, '1 cup (~240ml)'::text, 240.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 מ"ל', '100ml', 100.0, 0.5, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [BEVERAGE] Beverages, Meal supplement drink, canned, peanut flavor -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('משקאות, משקה השלמה ארוחה, בפחית, טעם בוטנים', 'Beverages, Meal supplement drink, canned, peanut flavor', 'beverage', 'free', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס (~240 מ"ל)'::text, '1 cup (~240ml)'::text, 240.0::numeric, 0.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 מ"ל', '100ml', 100.0, 0.0, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [BEVERAGE] Beverages, Mixed vegetable and fruit juice drink, with added nutrients
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('משקאות, משקה מיץ ירקות ופרי מעורב, עם תוספי חומרים', 'Beverages, Mixed vegetable and fruit juice drink, with added nutrients', 'beverage', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס (~240 מ"ל)'::text, '1 cup (~240ml)'::text, 240.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 מ"ל', '100ml', 100.0, 0.0, 0.5, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [BEVERAGE] Beverages, NESTEA, tea, black, ready-to-drink, lemon
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('משקאות, NESTEA, תה, שחור, מוכן לשתייה, לימון', 'Beverages, NESTEA, tea, black, ready-to-drink, lemon', 'beverage', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס (~240 מ"ל)'::text, '1 cup (~240ml)'::text, 240.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 מ"ל', '100ml', 100.0, 0.0, 0.5, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [BEVERAGE] Beverages, NESTLE, Boost plus, nutritional drink, ready-to-drink -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('משקאות, NESTLE, Boost plus, משקה תזונתי, מוכן לשתייה', 'Beverages, NESTLE, Boost plus, nutritional drink, ready-to-drink', 'beverage', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס (~240 מ"ל)'::text, '1 cup (~240ml)'::text, 240.0::numeric, 0.0::numeric, 2.5::numeric, true::boolean, 1::integer),
  ('100 מ"ל', '100ml', 100.0, 0.0, 1.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [BEVERAGE] Beverages, OCEAN SPRAY, Cran Raspberry Juice Drink
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('משקאות, OCEAN SPRAY, מיץ Cran Raspberry', 'Beverages, OCEAN SPRAY, Cran Raspberry Juice Drink', 'beverage', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס (~240 מ"ל)'::text, '1 cup (~240ml)'::text, 240.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 מ"ל', '100ml', 100.0, 0.0, 0.5, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [BEVERAGE] Beverages, OCEAN SPRAY, Cran-Energy, Cranberry Energy Juice Drink
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('משקאות, OCEAN SPRAY, Cran-Energy, משקה אנרגיה קרנברי', 'Beverages, OCEAN SPRAY, Cran-Energy, Cranberry Energy Juice Drink', 'beverage', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס (~240 מ"ל)'::text, '1 cup (~240ml)'::text, 240.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 מ"ל', '100ml', 100.0, 0.0, 0.5, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [BEVERAGE] Beverages, OCEAN SPRAY, Cranberry-Apple Juice Drink, bottled
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('משקאות, OCEAN SPRAY, משקה מיץ Cranberry-Apple, בבקבוק', 'Beverages, OCEAN SPRAY, Cranberry-Apple Juice Drink, bottled', 'beverage', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס (~240 מ"ל)'::text, '1 cup (~240ml)'::text, 240.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('100 מ"ל', '100ml', 100.0, 0.0, 0.5, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [BEVERAGE] Soy Milk (Beverage)
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('חלב סויה', 'Soy Milk (Beverage)', 'beverage', 'yellow', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס (~240 מ"ל)'::text, '1 cup (~240ml)'::text, 240.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 מ"ל', '100ml', 100.0, 0.5, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

-- [BEVERAGE] Almond Milk (Beverage)
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('חלב שקדים', 'Almond Milk (Beverage)', 'beverage', 'yellow', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס (~240 מ"ל)'::text, '1 cup (~240ml)'::text, 240.0::numeric, 0.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 מ"ל', '100ml', 100.0, 0.5, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);


COMMIT;
