BEGIN;

-- [FRUIT] Cherries, sour, red, canned, water pack, solids and liquids
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('דובדבנים אדומים חמוצים שמורים, מי זקק', 'Cherries, sour, red, canned, water pack, solids and liquids', 'fruit', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~150 גרם)'::text, '1 medium (~150g)'::text, 150.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('כוס (~150 גרם)', '1 cup (~150g)', 150.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FRUIT] Cherries, sour, red, frozen, unsweetened (Includes foods for USDA's Food Distribution Program)
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('דובדבנים אדומים חמוצים קפואים, ללא תוספת סוכר', 'Cherries, sour, red, frozen, unsweetened (Includes foods for USDA''s Food Distribution Program)', 'fruit', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~150 גרם)'::text, '1 medium (~150g)'::text, 150.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('כוס (~150 גרם)', '1 cup (~150g)', 150.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FRUIT] Cherries, sour, red, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('דובדבנים אדומים חמוצים טריים', 'Cherries, sour, red, raw', 'fruit', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~150 גרם)'::text, '1 medium (~150g)'::text, 150.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('כוס (~150 גרם)', '1 cup (~150g)', 150.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FRUIT] Cherries, sweet, canned, extra heavy syrup pack, solids and liquids
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('דובדבנים מתוקים שמורים, סירופ כבד מאוד', 'Cherries, sweet, canned, extra heavy syrup pack, solids and liquids', 'fruit', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~150 גרם)'::text, '1 medium (~150g)'::text, 150.0::numeric, 0.0::numeric, 1.5::numeric, true::boolean, 1::integer),
  ('כוס (~150 גרם)', '1 cup (~150g)', 150.0, 0.0, 1.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 1.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FRUIT] Cherries, sweet, canned, juice pack, solids and liquids
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('דובדבנים מתוקים שמורים, מחליטת מיץ', 'Cherries, sweet, canned, juice pack, solids and liquids', 'fruit', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~150 גרם)'::text, '1 medium (~150g)'::text, 150.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('כוס (~150 גרם)', '1 cup (~150g)', 150.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FRUIT] Cherries, sweet, canned, light syrup pack, solids and liquids
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('דובדבנים מתוקים שמורים, סירופ קל', 'Cherries, sweet, canned, light syrup pack, solids and liquids', 'fruit', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~150 גרם)'::text, '1 medium (~150g)'::text, 150.0::numeric, 0.0::numeric, 1.5::numeric, true::boolean, 1::integer),
  ('כוס (~150 גרם)', '1 cup (~150g)', 150.0, 0.0, 1.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 1.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FRUIT] Cherries, sweet, canned, pitted, heavy syrup pack, solids and liquids
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('דובדבנים מתוקים שמורים, ללא גרעין, סירופ כבד', 'Cherries, sweet, canned, pitted, heavy syrup pack, solids and liquids', 'fruit', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~150 גרם)'::text, '1 medium (~150g)'::text, 150.0::numeric, 0.0::numeric, 1.5::numeric, true::boolean, 1::integer),
  ('כוס (~150 גרם)', '1 cup (~150g)', 150.0, 0.0, 1.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 1.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FRUIT] Cherries, sweet, canned, pitted, heavy syrup, drained
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('דובדבנים מתוקים שמורים, ללא גרעין, סירופ כבד, מסננים', 'Cherries, sweet, canned, pitted, heavy syrup, drained', 'fruit', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~150 גרם)'::text, '1 medium (~150g)'::text, 150.0::numeric, 0.0::numeric, 1.5::numeric, true::boolean, 1::integer),
  ('כוס (~150 גרם)', '1 cup (~150g)', 150.0, 0.0, 1.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 1.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FRUIT] Cherries, sweet, canned, water pack, solids and liquids
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('דובדבנים מתוקים שמורים, מי זקק', 'Cherries, sweet, canned, water pack, solids and liquids', 'fruit', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~150 גרם)'::text, '1 medium (~150g)'::text, 150.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('כוס (~150 גרם)', '1 cup (~150g)', 150.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FRUIT] Cherries, sweet, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('דובדבנים מתוקים טריים', 'Cherries, sweet, raw', 'fruit', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~150 גרם)'::text, '1 medium (~150g)'::text, 150.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('כוס (~150 גרם)', '1 cup (~150g)', 150.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FRUIT] Cherries, tart, dried, sweetened (Includes foods for USDA's Food Distribution Program) -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('דובדבנים חמוצים מיובשים, ממותקים', 'Cherries, tart, dried, sweetened (Includes foods for USDA''s Food Distribution Program)', 'fruit', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~150 גרם)'::text, '1 medium (~150g)'::text, 150.0::numeric, 0.0::numeric, 6.0::numeric, true::boolean, 1::integer),
  ('כוס (~150 גרם)', '1 cup (~150g)', 150.0, 0.0, 6.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 4.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FRUIT] Cherry juice, tart
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('מיץ דובדבן חמוץ', 'Cherry juice, tart', 'fruit', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~150 גרם)'::text, '1 medium (~150g)'::text, 150.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('כוס (~150 גרם)', '1 cup (~150g)', 150.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FRUIT] Clementines, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('קלמנטינות טריות', 'Clementines, raw', 'fruit', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~150 גרם)'::text, '1 medium (~150g)'::text, 150.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('כוס (~150 גרם)', '1 cup (~150g)', 150.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FRUIT] Crabapples, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('תפוחי בר, גולמיים', 'Crabapples, raw', 'fruit', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~150 גרם)'::text, '1 medium (~150g)'::text, 150.0::numeric, 0.0::numeric, 1.5::numeric, true::boolean, 1::integer),
  ('כוס (~150 גרם)', '1 cup (~150g)', 150.0, 0.0, 1.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 1.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FRUIT] Cranberries, dried, sweetened (Includes foods for USDA's Food Distribution Program) -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('קראנברי מיובשות, ממותקות', 'Cranberries, dried, sweetened (Includes foods for USDA''s Food Distribution Program)', 'fruit', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~150 גרם)'::text, '1 medium (~150g)'::text, 150.0::numeric, 0.0::numeric, 6.0::numeric, true::boolean, 1::integer),
  ('כוס (~150 גרם)', '1 cup (~150g)', 150.0, 0.0, 6.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 4.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FRUIT] Cranberries, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('קראנברי, גולמיות', 'Cranberries, raw', 'fruit', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~150 גרם)'::text, '1 medium (~150g)'::text, 150.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('כוס (~150 גרם)', '1 cup (~150g)', 150.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FRUIT] Cranberry juice blend, 100% juice, bottled, with added vitamin C and calcium
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('משקה קראנברי מעורבב, 100% מיץ, בבקבוק, עם ויטמין C וסידן מוסף', 'Cranberry juice blend, 100% juice, bottled, with added vitamin C and calcium', 'fruit', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~150 גרם)'::text, '1 medium (~150g)'::text, 150.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('כוס (~150 גרם)', '1 cup (~150g)', 150.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FRUIT] Cranberry juice, unsweetened
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('מיץ קראנברי, ללא הוספת סוכר', 'Cranberry juice, unsweetened', 'fruit', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~150 גרם)'::text, '1 medium (~150g)'::text, 150.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('כוס (~150 גרם)', '1 cup (~150g)', 150.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FRUIT] Cranberry sauce, canned, sweetened
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('רוטב קראנברי, משומר בפחית, ממותק', 'Cranberry sauce, canned, sweetened', 'fruit', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~150 גרם)'::text, '1 medium (~150g)'::text, 150.0::numeric, 0.0::numeric, 3.0::numeric, true::boolean, 1::integer),
  ('כוס (~150 גרם)', '1 cup (~150g)', 150.0, 0.0, 3.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 2.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FRUIT] Cranberry sauce, jellied, canned, OCEAN SPRAY
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('רוטב קראנברי, ג''לי, משומר בפחית, OCEAN SPRAY', 'Cranberry sauce, jellied, canned, OCEAN SPRAY', 'fruit', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~150 גרם)'::text, '1 medium (~150g)'::text, 150.0::numeric, 0.0::numeric, 3.0::numeric, true::boolean, 1::integer),
  ('כוס (~150 גרם)', '1 cup (~150g)', 150.0, 0.0, 3.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 2.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FRUIT] Cranberry sauce, whole, canned, OCEAN SPRAY
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('רוטב קראנברי, שלם, משומר בפחית, OCEAN SPRAY', 'Cranberry sauce, whole, canned, OCEAN SPRAY', 'fruit', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~150 גרם)'::text, '1 medium (~150g)'::text, 150.0::numeric, 0.0::numeric, 3.0::numeric, true::boolean, 1::integer),
  ('כוס (~150 גרם)', '1 cup (~150g)', 150.0, 0.0, 3.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 2.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FRUIT] Cranberry-orange relish, canned
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('ממרח קראנברי-תפוז, משומר בפחית', 'Cranberry-orange relish, canned', 'fruit', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~150 גרם)'::text, '1 medium (~150g)'::text, 150.0::numeric, 0.0::numeric, 4.0::numeric, true::boolean, 1::integer),
  ('כוס (~150 גרם)', '1 cup (~150g)', 150.0, 0.0, 4.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 2.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FRUIT] Currants, european black, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('אוכמניות שחורות אירופיות, גולמיות', 'Currants, european black, raw', 'fruit', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~150 גרם)'::text, '1 medium (~150g)'::text, 150.0::numeric, 0.0::numeric, 1.5::numeric, true::boolean, 1::integer),
  ('כוס (~150 גרם)', '1 cup (~150g)', 150.0, 0.0, 1.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 1.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FRUIT] Currants, red and white, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('אוכמניות אדומות ולבנות, גולמיות', 'Currants, red and white, raw', 'fruit', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~150 גרם)'::text, '1 medium (~150g)'::text, 150.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('כוס (~150 גרם)', '1 cup (~150g)', 150.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FRUIT] Currants, zante, dried -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('אוכמניות זנתה, מיובשות', 'Currants, zante, dried', 'fruit', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~150 גרם)'::text, '1 medium (~150g)'::text, 150.0::numeric, 0.0::numeric, 5.5::numeric, true::boolean, 1::integer),
  ('כוס (~150 גרם)', '1 cup (~150g)', 150.0, 0.0, 5.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 3.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FRUIT] Custard-apple, (bullock's-heart), raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('תפוח קוסטארד, גלם', 'Custard-apple, (bullock''s-heart), raw', 'fruit', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~150 גרם)'::text, '1 medium (~150g)'::text, 150.0::numeric, 0.0::numeric, 1.5::numeric, true::boolean, 1::integer),
  ('כוס (~150 גרם)', '1 cup (~150g)', 150.0, 0.0, 1.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 1.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FRUIT] Dates, deglet noor -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('תמרים דגלט נור', 'Dates, deglet noor', 'fruit', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~150 גרם)'::text, '1 medium (~150g)'::text, 150.0::numeric, 0.0::numeric, 5.5::numeric, true::boolean, 1::integer),
  ('כוס (~150 גרם)', '1 cup (~150g)', 150.0, 0.0, 5.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 3.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FRUIT] Dates, medjool -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('תמרים מג''ול', 'Dates, medjool', 'fruit', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~150 גרם)'::text, '1 medium (~150g)'::text, 150.0::numeric, 0.0::numeric, 5.5::numeric, true::boolean, 1::integer),
  ('כוס (~150 גרם)', '1 cup (~150g)', 150.0, 0.0, 5.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 3.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FRUIT] Durian, raw or frozen
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('דוריאן, גלם או קפוא', 'Durian, raw or frozen', 'fruit', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~150 גרם)'::text, '1 medium (~150g)'::text, 150.0::numeric, 0.0::numeric, 1.5::numeric, true::boolean, 1::integer),
  ('כוס (~150 גרם)', '1 cup (~150g)', 150.0, 0.0, 1.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 1.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FRUIT] Elderberries, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('אוכמניות זקנות, גולמיות', 'Elderberries, raw', 'fruit', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~150 גרם)'::text, '1 medium (~150g)'::text, 150.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('כוס (~150 גרם)', '1 cup (~150g)', 150.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FRUIT] Feijoa, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('פיג''ואה, גלם', 'Feijoa, raw', 'fruit', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~150 גרם)'::text, '1 medium (~150g)'::text, 150.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס (~150 גרם)', '1 cup (~150g)', 150.0, 1.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FRUIT] Figs, canned, extra heavy syrup pack, solids and liquids
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('תאנים, משומרות בסירופ כבד מאוד, מוצקים וטוב', 'Figs, canned, extra heavy syrup pack, solids and liquids', 'fruit', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~150 גרם)'::text, '1 medium (~150g)'::text, 150.0::numeric, 0.0::numeric, 2.5::numeric, true::boolean, 1::integer),
  ('כוס (~150 גרם)', '1 cup (~150g)', 150.0, 0.0, 2.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 1.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FRUIT] Figs, canned, heavy syrup pack, solids and liquids
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('תאנים, משומרות בסירופ כבד, מוצקים וטוב', 'Figs, canned, heavy syrup pack, solids and liquids', 'fruit', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~150 גרם)'::text, '1 medium (~150g)'::text, 150.0::numeric, 0.0::numeric, 1.5::numeric, true::boolean, 1::integer),
  ('כוס (~150 גרם)', '1 cup (~150g)', 150.0, 0.0, 1.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 1.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FRUIT] Figs, canned, light syrup pack, solids and liquids
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('תאנים, משומרות בסירופ קל, מוצקים וטוב', 'Figs, canned, light syrup pack, solids and liquids', 'fruit', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~150 גרם)'::text, '1 medium (~150g)'::text, 150.0::numeric, 0.0::numeric, 1.5::numeric, true::boolean, 1::integer),
  ('כוס (~150 גרם)', '1 cup (~150g)', 150.0, 0.0, 1.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 1.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FRUIT] Figs, canned, water pack, solids and liquids
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('תאנים, משומרות במים, מוצקים וטוב', 'Figs, canned, water pack, solids and liquids', 'fruit', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~150 גרם)'::text, '1 medium (~150g)'::text, 150.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('כוס (~150 גרם)', '1 cup (~150g)', 150.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FRUIT] Figs, dried, stewed
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('תאנים מיובשות, מבושלות', 'Figs, dried, stewed', 'fruit', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~150 גרם)'::text, '1 medium (~150g)'::text, 150.0::numeric, 0.0::numeric, 1.5::numeric, true::boolean, 1::integer),
  ('כוס (~150 גרם)', '1 cup (~150g)', 150.0, 0.0, 1.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 1.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FRUIT] Figs, dried, uncooked
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('תאנים מיובשות, לא מבושלות', 'Figs, dried, uncooked', 'fruit', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~150 גרם)'::text, '1 medium (~150g)'::text, 150.0::numeric, 0.0::numeric, 4.0::numeric, true::boolean, 1::integer),
  ('כוס (~150 גרם)', '1 cup (~150g)', 150.0, 0.0, 4.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 2.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FRUIT] Figs, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('תאנים, גולמיות', 'Figs, raw', 'fruit', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~150 גרם)'::text, '1 medium (~150g)'::text, 150.0::numeric, 0.0::numeric, 1.5::numeric, true::boolean, 1::integer),
  ('כוס (~150 גרם)', '1 cup (~150g)', 150.0, 0.0, 1.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 1.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FRUIT] Fresh Squeezed Orange Juice
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('מיץ תפוזים סחוט טרי', 'Fresh Squeezed Orange Juice', 'fruit', 'yellow', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס (~200 מ"ל)'::text, '1 cup (~200ml)'::text, 200.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FRUIT] Fresh Squeezed Grapefruit Juice
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('מיץ אשכוליות סחוט', 'Fresh Squeezed Grapefruit Juice', 'fruit', 'yellow', 'manual')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('כוס (~200 מ"ל)'::text, '1 cup (~200ml)'::text, 200.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

COMMIT;
