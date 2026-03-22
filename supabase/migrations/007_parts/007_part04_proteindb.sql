BEGIN;

-- [PROTEIN] Beans, kidney, california red, mature seeds, raw -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שעועית כליה אדומה קליפורנית גסה, זרעים בשלים, גולמית', 'Beans, kidney, california red, mature seeds, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~180 גרם)'::text, '1 cup cooked (~180g)'::text, 180.0::numeric, 6.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם מבושל', '100g cooked', 100.0, 3.5, 0.0, false, 2),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beans, kidney, red, mature seeds, canned, drained solids
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שעועית כליה אדומה גסה, זרעים בשלים, משומרת בפחית, מרופה', 'Beans, kidney, red, mature seeds, canned, drained solids', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~180 גרם)'::text, '1 cup cooked (~180g)'::text, 180.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם מבושל', '100g cooked', 100.0, 1.0, 0.0, false, 2),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beans, kidney, red, mature seeds, canned, drained solids, rinsed in tap water
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שעועית כליה אדומה גסה, זרעים בשלים, משומרת בפחית, מרופה, שטופה', 'Beans, kidney, red, mature seeds, canned, drained solids, rinsed in tap water', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~180 גרם)'::text, '1 cup cooked (~180g)'::text, 180.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם מבושל', '100g cooked', 100.0, 1.0, 0.0, false, 2),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beans, kidney, red, mature seeds, canned, solids and liquid, low sodium
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שעועית כליה אדומה גסה, זרעים בשלים, משומרת בפחית, נמוכה בנתרן', 'Beans, kidney, red, mature seeds, canned, solids and liquid, low sodium', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~180 גרם)'::text, '1 cup cooked (~180g)'::text, 180.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם מבושל', '100g cooked', 100.0, 1.0, 0.0, false, 2),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beans, kidney, red, mature seeds, canned, solids and liquids
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שעועית כליה אדומה גסה, זרעים בשלים, משומרת בפחית', 'Beans, kidney, red, mature seeds, canned, solids and liquids', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~180 גרם)'::text, '1 cup cooked (~180g)'::text, 180.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם מבושל', '100g cooked', 100.0, 1.0, 0.0, false, 2),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beans, kidney, red, mature seeds, cooked, boiled, with salt
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שעועית כליה אדומה גסה, זרעים בשלים, מבושלת, עם מלח', 'Beans, kidney, red, mature seeds, cooked, boiled, with salt', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~180 גרם)'::text, '1 cup cooked (~180g)'::text, 180.0::numeric, 2.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם מבושל', '100g cooked', 100.0, 1.5, 0.0, false, 2),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beans, kidney, red, mature seeds, cooked, boiled, without salt
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שעועית אדומה, כליות, זרעים בשלים, מבושלת, ללא מלח', 'Beans, kidney, red, mature seeds, cooked, boiled, without salt', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~180 גרם)'::text, '1 cup cooked (~180g)'::text, 180.0::numeric, 2.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם מבושל', '100g cooked', 100.0, 1.5, 0.0, false, 2),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beans, kidney, red, mature seeds, raw -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שעועית אדומה, כליות, זרעים בשלים, גולמית', 'Beans, kidney, red, mature seeds, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~180 גרם)'::text, '1 cup cooked (~180g)'::text, 180.0::numeric, 6.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם מבושל', '100g cooked', 100.0, 3.5, 0.0, false, 2),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beans, kidney, royal red, mature seeds, cooked, boiled with salt
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שעועית אדומה, כליות, רויאל רד, זרעים בשלים, מבושלת, עם מלח', 'Beans, kidney, royal red, mature seeds, cooked, boiled with salt', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~180 גרם)'::text, '1 cup cooked (~180g)'::text, 180.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם מבושל', '100g cooked', 100.0, 1.0, 0.0, false, 2),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beans, kidney, royal red, mature seeds, cooked, boiled, without salt
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שעועית אדומה, כליות, רויאל רד, זרעים בשלים, מבושלת, ללא מלח', 'Beans, kidney, royal red, mature seeds, cooked, boiled, without salt', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~180 גרם)'::text, '1 cup cooked (~180g)'::text, 180.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם מבושל', '100g cooked', 100.0, 1.0, 0.0, false, 2),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beans, kidney, royal red, mature seeds, raw -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שעועית אדומה, כליות, רויאל רד, זרעים בשלים, גולמית', 'Beans, kidney, royal red, mature seeds, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~180 גרם)'::text, '1 cup cooked (~180g)'::text, 180.0::numeric, 6.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם מבושל', '100g cooked', 100.0, 3.5, 0.0, false, 2),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beans, liquid from stewed kidney beans
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('מרק שעועית אדומה', 'Beans, liquid from stewed kidney beans', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~180 גרם)'::text, '1 cup cooked (~180g)'::text, 180.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם מבושל', '100g cooked', 100.0, 0.5, 0.0, false, 2),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beans, navy, mature seeds, canned
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שעועית לבנה, זרעים בשלים, משומרת בפחית', 'Beans, navy, mature seeds, canned', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~180 גרם)'::text, '1 cup cooked (~180g)'::text, 180.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם מבושל', '100g cooked', 100.0, 1.0, 0.0, false, 2),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beans, navy, mature seeds, cooked, boiled, with salt
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שעועית לבנה, זרעים בשלים, מבושלת, עם מלח', 'Beans, navy, mature seeds, cooked, boiled, with salt', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~180 גרם)'::text, '1 cup cooked (~180g)'::text, 180.0::numeric, 2.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם מבושל', '100g cooked', 100.0, 1.5, 0.0, false, 2),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beans, navy, mature seeds, cooked, boiled, without salt
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שעועית לבנה, זרעים בשלים, מבושלת, ללא מלח', 'Beans, navy, mature seeds, cooked, boiled, without salt', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~180 גרם)'::text, '1 cup cooked (~180g)'::text, 180.0::numeric, 2.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם מבושל', '100g cooked', 100.0, 1.5, 0.0, false, 2),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beans, navy, mature seeds, raw -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שעועית לבנה, זרעים בשלים, גולמית', 'Beans, navy, mature seeds, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~180 גרם)'::text, '1 cup cooked (~180g)'::text, 180.0::numeric, 6.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם מבושל', '100g cooked', 100.0, 3.5, 0.0, false, 2),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beans, pink, mature seeds, cooked, boiled, with salt
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שעועית ורודה, זרעים בשלים, מבושלת, עם מלח', 'Beans, pink, mature seeds, cooked, boiled, with salt', 'protein', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~180 גרם)'::text, '1 cup cooked (~180g)'::text, 180.0::numeric, 0.0::numeric, 2.0::numeric, true::boolean, 1::integer),
  ('100 גרם מבושל', '100g cooked', 100.0, 0.0, 1.0, false, 2),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.0, 0.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beans, pink, mature seeds, cooked, boiled, without salt
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שעועית ורודה, זרעים בשלים, מבושלת, ללא מלח', 'Beans, pink, mature seeds, cooked, boiled, without salt', 'protein', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~180 גרם)'::text, '1 cup cooked (~180g)'::text, 180.0::numeric, 0.0::numeric, 2.0::numeric, true::boolean, 1::integer),
  ('100 גרם מבושל', '100g cooked', 100.0, 0.0, 1.0, false, 2),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.0, 0.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beans, pink, mature seeds, raw -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שעועית ורודה, זרעים בשלים, גולמית', 'Beans, pink, mature seeds, raw', 'protein', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~180 גרם)'::text, '1 cup cooked (~180g)'::text, 180.0::numeric, 0.0::numeric, 4.5::numeric, true::boolean, 1::integer),
  ('100 גרם מבושל', '100g cooked', 100.0, 0.0, 2.5, false, 2),
  ('3 כפות יבש (~30 גרם)', '3 tbsp dry (~30g)', 30.0, 0.0, 1.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Tnuva Chicken Sausage
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('נקניק עוף תנובה', 'Tnuva Chicken Sausage', 'protein', 'yellow', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('2 נקניקים (~80 גרם)'::text, '2 sausages (~80g)'::text, 80.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.5, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Tnuva Chicken Hot Dogs
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('נקניקיות עוף תנובה', 'Tnuva Chicken Hot Dogs', 'protein', 'yellow', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('נקניקייה אחת (~50 גרם)'::text, '1 hot dog (~50g)'::text, 50.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('2 נקניקיות (~100 גרם)', '2 hot dogs (~100g)', 100.0, 2.0, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Frozen Ready Chicken Schnitzel
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שניצל עוף קפוא מוכן', 'Frozen Ready Chicken Schnitzel', 'protein', 'yellow', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('שניצל אחד (~130 גרם)'::text, '1 schnitzel (~130g)'::text, 130.0::numeric, 2.0::numeric, 1.0::numeric, true::boolean, 1::integer)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Ready Turkey Schnitzel
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שניצל הודו מוכן', 'Ready Turkey Schnitzel', 'protein', 'yellow', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('שניצל אחד (~130 גרם)'::text, '1 schnitzel (~130g)'::text, 130.0::numeric, 2.0::numeric, 1.0::numeric, true::boolean, 1::integer)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Frozen Beef Patties
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('קציצות בקר קפואות', 'Frozen Beef Patties', 'protein', 'yellow', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('קציצה (~120 גרם)'::text, '1 patty (~120g)'::text, 120.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 2.0, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Fried Falafel Balls
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('פלאפל כדורים מטוגנים', 'Fried Falafel Balls', 'protein', 'yellow', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('3 כדורים (~60 גרם)'::text, '3 balls (~60g)'::text, 60.0::numeric, 1.0::numeric, 0.5::numeric, true::boolean, 1::integer),
  ('5 כדורים (~100 גרם)', '5 balls (~100g)', 100.0, 2.0, 1.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Hard White Tofu
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('טופו לבן קשה', 'Hard White Tofu', 'protein', 'yellow', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('150 גרם', '150g', 150.0, 1.5, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Tempeh
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('טמפה', 'Tempeh', 'protein', 'yellow', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Homemade-Style Hummus Spread
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('חומוס ממרח ביתי', 'Homemade-Style Hummus Spread', 'protein', 'yellow', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('3 כפות (~80 גרם)'::text, '3 tbsp (~80g)'::text, 80.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 2.0, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Tuna in Olive Oil
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('טונה בשמן זית', 'Tuna in Olive Oil', 'protein', 'yellow', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('פחית קטנה (~80 גרם)'::text, 'Small can (~80g)'::text, 80.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 2.0, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Chicken Shawarma (Spiced)
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('עוף שאורמה', 'Chicken Shawarma (Spiced)', 'protein', 'yellow', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (~150 גרם)'::text, '1 serving (~150g)'::text, 150.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.5, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Thin Beef Steak
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('סטייק בקר דק', 'Thin Beef Steak', 'protein', 'yellow', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (~150 גרם)'::text, '1 serving (~150g)'::text, 150.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.5, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Ground Chicken
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בשר טחון עוף', 'Ground Chicken', 'protein', 'yellow', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (~150 גרם)'::text, '1 serving (~150g)'::text, 150.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.5, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Sea Bream (Denise Fish)
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('דניס (דג ים)', 'Sea Bream (Denise Fish)', 'protein', 'yellow', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (~150 גרם)'::text, '1 serving (~150g)'::text, 150.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.5, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Sea Bass (Locus Fish)
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('לוקוס (דג ים)', 'Sea Bass (Locus Fish)', 'protein', 'yellow', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (~150 גרם)'::text, '1 serving (~150g)'::text, 150.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.5, 0.0, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Cooked Red Lentils
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('עדשים כתומות מבושלות', 'Cooked Red Lentils', 'protein', 'yellow', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~200 גרם)'::text, '1 cup cooked (~200g)'::text, 200.0::numeric, 2.0::numeric, 0.5::numeric, true::boolean, 1::integer),
  ('100 גרם מבושל', '100g cooked', 100.0, 1.0, 0.5, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Cooked Black Beans
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שעועית שחורה מבושלת', 'Cooked Black Beans', 'protein', 'yellow', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~175 גרם)'::text, '1 cup cooked (~175g)'::text, 175.0::numeric, 2.5::numeric, 0.5::numeric, true::boolean, 1::integer),
  ('100 גרם מבושל', '100g cooked', 100.0, 1.5, 0.5, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Cooked Chickpeas
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גרגרי חומוס מבושלים', 'Cooked Chickpeas', 'protein', 'yellow', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס מבושלת (~165 גרם)'::text, '1 cup cooked (~165g)'::text, 165.0::numeric, 2.5::numeric, 0.5::numeric, true::boolean, 1::integer),
  ('100 גרם מבושל', '100g cooked', 100.0, 1.5, 0.5, false, 2)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

COMMIT;
