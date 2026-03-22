BEGIN;

-- ============================================================
-- FRUIT (119 foods)
-- ============================================================
-- [FRUIT] Abiyuch, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('אביוך, גולמי', 'Abiyuch, raw', 'fruit', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~150 גרם)'::text, '1 medium (~150g)'::text, 150.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('כוס (~150 גרם)', '1 cup (~150g)', 150.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FRUIT] Acerola juice, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('מיץ אקרולה, גולמי', 'Acerola juice, raw', 'fruit', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~150 גרם)'::text, '1 medium (~150g)'::text, 150.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('כוס (~150 גרם)', '1 cup (~150g)', 150.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FRUIT] Acerola, (west indian cherry), raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('אסרולה (דובדבן הודי), גולמית', 'Acerola, (west indian cherry), raw', 'fruit', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~150 גרם)'::text, '1 medium (~150g)'::text, 150.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('כוס (~150 גרם)', '1 cup (~150g)', 150.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FRUIT] Apple juice, canned or bottled, unsweetened, with added ascorbic acid
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('מיץ תפוח, בקבוק או שימור, ללא תוספת סוכר, עם ויטמין C', 'Apple juice, canned or bottled, unsweetened, with added ascorbic acid', 'fruit', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~150 גרם)'::text, '1 medium (~150g)'::text, 150.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('כוס (~150 גרם)', '1 cup (~150g)', 150.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FRUIT] Apple juice, canned or bottled, unsweetened, with added ascorbic acid, calcium, and potassium
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('מיץ תפוח, בקבוק או שימור, ללא תוספת סוכר, עם ויטמין C, סידן ואשלגן', 'Apple juice, canned or bottled, unsweetened, with added ascorbic acid, calcium, and potassium', 'fruit', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~150 גרם)'::text, '1 medium (~150g)'::text, 150.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('כוס (~150 גרם)', '1 cup (~150g)', 150.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FRUIT] Apple juice, canned or bottled, unsweetened, without added ascorbic acid
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('מיץ תפוח, בקבוק או שימור, ללא תוספת סוכר, ללא ויטמין C', 'Apple juice, canned or bottled, unsweetened, without added ascorbic acid', 'fruit', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~150 גרם)'::text, '1 medium (~150g)'::text, 150.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('כוס (~150 גרם)', '1 cup (~150g)', 150.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FRUIT] Apple juice, frozen concentrate, unsweetened, diluted with 3 volume water without added ascorbic acid
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('מיץ תפוח, תרכיז קפוא, ללא תוספת סוכר, מזוזג בשלוש נפחים מים, ללא ויטמין C', 'Apple juice, frozen concentrate, unsweetened, diluted with 3 volume water without added ascorbic acid', 'fruit', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~150 גרם)'::text, '1 medium (~150g)'::text, 150.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('כוס (~150 גרם)', '1 cup (~150g)', 150.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FRUIT] Apple juice, frozen concentrate, unsweetened, diluted with 3 volume water, with added ascorbic acid
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('מיץ תפוח, תרכיז קפוא, ללא תוספת סוכר, מזוזג בשלוש נפחים מים, עם ויטמין C', 'Apple juice, frozen concentrate, unsweetened, diluted with 3 volume water, with added ascorbic acid', 'fruit', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~150 גרם)'::text, '1 medium (~150g)'::text, 150.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('כוס (~150 גרם)', '1 cup (~150g)', 150.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FRUIT] Apple juice, frozen concentrate, unsweetened, undiluted, with added ascorbic acid
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('מיץ תפוח, תרכיז קפוא, ללא תוספת סוכר, לא מזוזג, עם ויטמין C', 'Apple juice, frozen concentrate, unsweetened, undiluted, with added ascorbic acid', 'fruit', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~150 גרם)'::text, '1 medium (~150g)'::text, 150.0::numeric, 0.0::numeric, 3.0::numeric, true::boolean, 1::integer),
  ('כוס (~150 גרם)', '1 cup (~150g)', 150.0, 0.0, 3.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 2.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FRUIT] Apple juice, frozen concentrate, unsweetened, undiluted, without added ascorbic acid
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('מיץ תפוח, תרכיז קפוא, ללא תוספת סוכר, לא מזוזג, ללא ויטמין C', 'Apple juice, frozen concentrate, unsweetened, undiluted, without added ascorbic acid', 'fruit', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~150 גרם)'::text, '1 medium (~150g)'::text, 150.0::numeric, 0.0::numeric, 3.0::numeric, true::boolean, 1::integer),
  ('כוס (~150 גרם)', '1 cup (~150g)', 150.0, 0.0, 3.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 2.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FRUIT] Apples, canned, sweetened, sliced, drained, heated
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('תפוחים, שימור, ממותקים, פרוסות, מסונן, מחומם', 'Apples, canned, sweetened, sliced, drained, heated', 'fruit', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~150 גרם)'::text, '1 medium (~150g)'::text, 150.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('כוס (~150 גרם)', '1 cup (~150g)', 150.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FRUIT] Apples, dehydrated (low moisture), sulfured, stewed
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('תפוחים, מיובשים (רטיבות נמוכה), מגופרתים, מבושלים', 'Apples, dehydrated (low moisture), sulfured, stewed', 'fruit', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~150 גרם)'::text, '1 medium (~150g)'::text, 150.0::numeric, 0.0::numeric, 1.5::numeric, true::boolean, 1::integer),
  ('כוס (~150 גרם)', '1 cup (~150g)', 150.0, 0.0, 1.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 1.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FRUIT] Apples, dehydrated (low moisture), sulfured, uncooked -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('תפוחים, מיובשים (רטיבות נמוכה), מגופרתים, גולמיים', 'Apples, dehydrated (low moisture), sulfured, uncooked', 'fruit', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~150 גרם)'::text, '1 medium (~150g)'::text, 150.0::numeric, 0.0::numeric, 6.0::numeric, true::boolean, 1::integer),
  ('כוס (~150 גרם)', '1 cup (~150g)', 150.0, 0.0, 6.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 4.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FRUIT] Apples, dried, sulfured, stewed, with added sugar
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('תפוחים, מיובשים, מגופרתים, מבושלים, עם תוספת סוכר', 'Apples, dried, sulfured, stewed, with added sugar', 'fruit', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~150 גרם)'::text, '1 medium (~150g)'::text, 150.0::numeric, 0.0::numeric, 1.5::numeric, true::boolean, 1::integer),
  ('כוס (~150 גרם)', '1 cup (~150g)', 150.0, 0.0, 1.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 1.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FRUIT] Apples, dried, sulfured, stewed, without added sugar
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('תפוחים, מיובשים, מגופרתים, מבושלים, ללא תוספת סוכר', 'Apples, dried, sulfured, stewed, without added sugar', 'fruit', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~150 גרם)'::text, '1 medium (~150g)'::text, 150.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('כוס (~150 גרם)', '1 cup (~150g)', 150.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FRUIT] Apples, dried, sulfured, uncooked -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('תפוחים, מיובשים, מגופרתים, גולמיים', 'Apples, dried, sulfured, uncooked', 'fruit', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~150 גרם)'::text, '1 medium (~150g)'::text, 150.0::numeric, 0.0::numeric, 4.5::numeric, true::boolean, 1::integer),
  ('כוס (~150 גרם)', '1 cup (~150g)', 150.0, 0.0, 4.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 3.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FRUIT] Apples, frozen, unsweetened, heated (Includes foods for USDA's Food Distribution Program)
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('תפוחים, קפואים, ללא תוספת סוכר, מחוממים', 'Apples, frozen, unsweetened, heated (Includes foods for USDA''s Food Distribution Program)', 'fruit', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~150 גרם)'::text, '1 medium (~150g)'::text, 150.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('כוס (~150 גרם)', '1 cup (~150g)', 150.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FRUIT] Apples, frozen, unsweetened, unheated (Includes foods for USDA's Food Distribution Program)
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('תפוחים, קפואים, ללא תוספת סוכר, לא מחוממים', 'Apples, frozen, unsweetened, unheated (Includes foods for USDA''s Food Distribution Program)', 'fruit', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~150 גרם)'::text, '1 medium (~150g)'::text, 150.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('כוס (~150 גרם)', '1 cup (~150g)', 150.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FRUIT] Apples, raw, fuji, with skin (Includes foods for USDA's Food Distribution Program)
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('תפוחים, גולמיים, פיג''י, עם קליפה', 'Apples, raw, fuji, with skin (Includes foods for USDA''s Food Distribution Program)', 'fruit', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~150 גרם)'::text, '1 medium (~150g)'::text, 150.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('כוס (~150 גרם)', '1 cup (~150g)', 150.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FRUIT] Apples, raw, gala, with skin (Includes foods for USDA's Food Distribution Program)
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('תפוחים, גולמיים, גאלה, עם קליפה', 'Apples, raw, gala, with skin (Includes foods for USDA''s Food Distribution Program)', 'fruit', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~150 גרם)'::text, '1 medium (~150g)'::text, 150.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('כוס (~150 גרם)', '1 cup (~150g)', 150.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FRUIT] Apples, raw, golden delicious, with skin
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('תפוחים, גולמיים, גולדן דליישס, עם קליפה', 'Apples, raw, golden delicious, with skin', 'fruit', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~150 גרם)'::text, '1 medium (~150g)'::text, 150.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('כוס (~150 גרם)', '1 cup (~150g)', 150.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FRUIT] Apples, raw, granny smith, with skin (Includes foods for USDA's Food Distribution Program)
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('תפוחים, גולמיים, גראני סמית, עם קליפה', 'Apples, raw, granny smith, with skin (Includes foods for USDA''s Food Distribution Program)', 'fruit', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~150 גרם)'::text, '1 medium (~150g)'::text, 150.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('כוס (~150 גרם)', '1 cup (~150g)', 150.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FRUIT] Apples, raw, red delicious, with skin (Includes foods for USDA's Food Distribution Program)
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('תפוחים, גולמיים, רד דליישס, עם קליפה', 'Apples, raw, red delicious, with skin (Includes foods for USDA''s Food Distribution Program)', 'fruit', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~150 גרם)'::text, '1 medium (~150g)'::text, 150.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('כוס (~150 גרם)', '1 cup (~150g)', 150.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FRUIT] Apples, raw, with skin (Includes foods for USDA's Food Distribution Program)
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('תפוחים, גולמיים, עם קליפה', 'Apples, raw, with skin (Includes foods for USDA''s Food Distribution Program)', 'fruit', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~150 גרם)'::text, '1 medium (~150g)'::text, 150.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('כוס (~150 גרם)', '1 cup (~150g)', 150.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FRUIT] Apples, raw, without skin
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('תפוחים, גולמיים, ללא קליפה', 'Apples, raw, without skin', 'fruit', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~150 גרם)'::text, '1 medium (~150g)'::text, 150.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('כוס (~150 גרם)', '1 cup (~150g)', 150.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FRUIT] Apples, raw, without skin, cooked, boiled
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('תפוחים, גולמיים, ללא קליפה, מבושלים', 'Apples, raw, without skin, cooked, boiled', 'fruit', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~150 גרם)'::text, '1 medium (~150g)'::text, 150.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('כוס (~150 גרם)', '1 cup (~150g)', 150.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FRUIT] Apples, raw, without skin, cooked, microwave
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('תפוחים, גולמיים, ללא קליפה, מבושלים במיקרוגל', 'Apples, raw, without skin, cooked, microwave', 'fruit', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~150 גרם)'::text, '1 medium (~150g)'::text, 150.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('כוס (~150 גרם)', '1 cup (~150g)', 150.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FRUIT] Applesauce, canned, sweetened, with salt
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('רסק תפוחים, שימור, ממותקים, עם מלח', 'Applesauce, canned, sweetened, with salt', 'fruit', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~150 גרם)'::text, '1 medium (~150g)'::text, 150.0::numeric, 0.0::numeric, 1.5::numeric, true::boolean, 1::integer),
  ('כוס (~150 גרם)', '1 cup (~150g)', 150.0, 0.0, 1.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 1.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FRUIT] Applesauce, canned, sweetened, without salt
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('רסק תפוחים, שימור, ממותקים, ללא מלח', 'Applesauce, canned, sweetened, without salt', 'fruit', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~150 גרם)'::text, '1 medium (~150g)'::text, 150.0::numeric, 0.0::numeric, 1.5::numeric, true::boolean, 1::integer),
  ('כוס (~150 גרם)', '1 cup (~150g)', 150.0, 0.0, 1.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 1.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FRUIT] Applesauce, canned, unsweetened, with added ascorbic acid
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('רסק תפוחים, שימור, ללא תוספת סוכר, עם ויטמין C', 'Applesauce, canned, unsweetened, with added ascorbic acid', 'fruit', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~150 גרם)'::text, '1 medium (~150g)'::text, 150.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('כוס (~150 גרם)', '1 cup (~150g)', 150.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FRUIT] Applesauce, canned, unsweetened, without added ascorbic acid (Includes foods for USDA's Food Distribution Program)
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('רסק תפוחים, שימור, ללא תוספת סוכר, ללא ויטמין C', 'Applesauce, canned, unsweetened, without added ascorbic acid (Includes foods for USDA''s Food Distribution Program)', 'fruit', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~150 גרם)'::text, '1 medium (~150g)'::text, 150.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('כוס (~150 גרם)', '1 cup (~150g)', 150.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FRUIT] Apricot nectar, canned, with added ascorbic acid
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('נקטר משמש, שימור, עם ויטמין C', 'Apricot nectar, canned, with added ascorbic acid', 'fruit', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~150 גרם)'::text, '1 medium (~150g)'::text, 150.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('כוס (~150 גרם)', '1 cup (~150g)', 150.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FRUIT] Apricots, canned, extra heavy syrup pack, without skin, solids and liquids
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('משמשים, שומרים, סירופ כבד מאוד, ללא עור, מוצקים וצילולים', 'Apricots, canned, extra heavy syrup pack, without skin, solids and liquids', 'fruit', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~150 גרם)'::text, '1 medium (~150g)'::text, 150.0::numeric, 0.0::numeric, 1.5::numeric, true::boolean, 1::integer),
  ('כוס (~150 גרם)', '1 cup (~150g)', 150.0, 0.0, 1.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 1.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FRUIT] Apricots, canned, extra light syrup pack, with skin, solids and liquids (Includes foods for USDA's Food Distribution Program)
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('משמשים, שומרים, סירופ קל מאוד, עם עור, מוצקים וצילולים', 'Apricots, canned, extra light syrup pack, with skin, solids and liquids (Includes foods for USDA''s Food Distribution Program)', 'fruit', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~150 גרם)'::text, '1 medium (~150g)'::text, 150.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('כוס (~150 גרם)', '1 cup (~150g)', 150.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FRUIT] Apricots, canned, heavy syrup pack, with skin, solids and liquids
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('משמשים, שומרים, סירופ כבד, עם עור, מוצקים וצילולים', 'Apricots, canned, heavy syrup pack, with skin, solids and liquids', 'fruit', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~150 גרם)'::text, '1 medium (~150g)'::text, 150.0::numeric, 0.0::numeric, 1.5::numeric, true::boolean, 1::integer),
  ('כוס (~150 גרם)', '1 cup (~150g)', 150.0, 0.0, 1.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 1.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FRUIT] Apricots, canned, heavy syrup pack, without skin, solids and liquids
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('משמשים, שומרים, סירופ כבד, ללא עור, מוצקים וצילולים', 'Apricots, canned, heavy syrup pack, without skin, solids and liquids', 'fruit', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~150 גרם)'::text, '1 medium (~150g)'::text, 150.0::numeric, 0.0::numeric, 1.5::numeric, true::boolean, 1::integer),
  ('כוס (~150 גרם)', '1 cup (~150g)', 150.0, 0.0, 1.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 1.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FRUIT] Apricots, canned, heavy syrup, drained
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('משמשים, שומרים, סירופ כבד, מסופים', 'Apricots, canned, heavy syrup, drained', 'fruit', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~150 גרם)'::text, '1 medium (~150g)'::text, 150.0::numeric, 0.0::numeric, 1.5::numeric, true::boolean, 1::integer),
  ('כוס (~150 גרם)', '1 cup (~150g)', 150.0, 0.0, 1.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 1.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FRUIT] Apricots, canned, juice pack, with skin, solids and liquids
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('משמשים, שומרים, חבילת מיץ, עם עור, מוצקים וצילולים', 'Apricots, canned, juice pack, with skin, solids and liquids', 'fruit', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~150 גרם)'::text, '1 medium (~150g)'::text, 150.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('כוס (~150 גרם)', '1 cup (~150g)', 150.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FRUIT] Apricots, canned, light syrup pack, with skin, solids and liquids
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('משמשים, שומרים, סירופ קל, עם עור, מוצקים וצילולים', 'Apricots, canned, light syrup pack, with skin, solids and liquids', 'fruit', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~150 גרם)'::text, '1 medium (~150g)'::text, 150.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('כוס (~150 גרם)', '1 cup (~150g)', 150.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FRUIT] Apricots, canned, water pack, with skin, solids and liquids
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('משמשים, שומרים, חבילת מים, עם עור, מוצקים וצילולים', 'Apricots, canned, water pack, with skin, solids and liquids', 'fruit', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~150 גרם)'::text, '1 medium (~150g)'::text, 150.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('כוס (~150 גרם)', '1 cup (~150g)', 150.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FRUIT] Apricots, canned, water pack, without skin, solids and liquids
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('משמשים, שומרים, חבילת מים, ללא עור, מוצקים וצילולים', 'Apricots, canned, water pack, without skin, solids and liquids', 'fruit', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~150 גרם)'::text, '1 medium (~150g)'::text, 150.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('כוס (~150 גרם)', '1 cup (~150g)', 150.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FRUIT] Apricots, dehydrated (low-moisture), sulfured, stewed
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('משמשים, מיובשים, מגופרים, בושלים', 'Apricots, dehydrated (low-moisture), sulfured, stewed', 'fruit', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~150 גרם)'::text, '1 medium (~150g)'::text, 150.0::numeric, 0.0::numeric, 2.5::numeric, true::boolean, 1::integer),
  ('כוס (~150 גרם)', '1 cup (~150g)', 150.0, 0.0, 2.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 1.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FRUIT] Apricots, dehydrated (low-moisture), sulfured, uncooked -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('משמשים, מיובשים, מגופרים, גולמיים', 'Apricots, dehydrated (low-moisture), sulfured, uncooked', 'fruit', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~150 גרם)'::text, '1 medium (~150g)'::text, 150.0::numeric, 0.0::numeric, 6.0::numeric, true::boolean, 1::integer),
  ('כוס (~150 גרם)', '1 cup (~150g)', 150.0, 0.0, 6.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 4.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FRUIT] Apricots, dried, sulfured, stewed, with added sugar
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('משמשים, יבשים, מגופרים, בושלים, עם סוכר נוסף', 'Apricots, dried, sulfured, stewed, with added sugar', 'fruit', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~150 גרם)'::text, '1 medium (~150g)'::text, 150.0::numeric, 0.0::numeric, 2.5::numeric, true::boolean, 1::integer),
  ('כוס (~150 גרם)', '1 cup (~150g)', 150.0, 0.0, 2.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 1.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FRUIT] Apricots, dried, sulfured, stewed, without added sugar
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('משמשים, יבשים, מגופרים, בושלים, ללא סוכר נוסף', 'Apricots, dried, sulfured, stewed, without added sugar', 'fruit', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~150 גרם)'::text, '1 medium (~150g)'::text, 150.0::numeric, 0.0::numeric, 1.5::numeric, true::boolean, 1::integer),
  ('כוס (~150 גרם)', '1 cup (~150g)', 150.0, 0.0, 1.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 1.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FRUIT] Apricots, dried, sulfured, uncooked -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('משמשים, יבשים, מגופרים, גולמיים', 'Apricots, dried, sulfured, uncooked', 'fruit', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~150 גרם)'::text, '1 medium (~150g)'::text, 150.0::numeric, 0.0::numeric, 4.5::numeric, true::boolean, 1::integer),
  ('כוס (~150 גרם)', '1 cup (~150g)', 150.0, 0.0, 4.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 3.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FRUIT] Apricots, frozen, sweetened
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('משמשים, קפואים, מתוקים', 'Apricots, frozen, sweetened', 'fruit', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~150 גרם)'::text, '1 medium (~150g)'::text, 150.0::numeric, 0.0::numeric, 1.5::numeric, true::boolean, 1::integer),
  ('כוס (~150 גרם)', '1 cup (~150g)', 150.0, 0.0, 1.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 1.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FRUIT] Apricots, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('משמשים, גולמיים', 'Apricots, raw', 'fruit', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~150 גרם)'::text, '1 medium (~150g)'::text, 150.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('כוס (~150 גרם)', '1 cup (~150g)', 150.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FRUIT] Avocados, raw, California
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('אבוקדו, גולמי, קליפורניה', 'Avocados, raw, California', 'fruit', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~150 גרם)'::text, '1 medium (~150g)'::text, 150.0::numeric, 2.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס (~150 גרם)', '1 cup (~150g)', 150.0, 2.5, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 1.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FRUIT] Avocados, raw, Florida
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('אבוקדו, גולמי, פלורידה', 'Avocados, raw, Florida', 'fruit', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~150 גרם)'::text, '1 medium (~150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס (~150 גרם)', '1 cup (~150g)', 150.0, 1.5, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FRUIT] Avocados, raw, all commercial varieties
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('אבוקדו, גולמי, כל הזנים המסחריים', 'Avocados, raw, all commercial varieties', 'fruit', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~150 גרם)'::text, '1 medium (~150g)'::text, 150.0::numeric, 2.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס (~150 גרם)', '1 cup (~150g)', 150.0, 2.5, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 1.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FRUIT] Bananas, dehydrated, or banana powder -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בננה, מיובשת, או אבקת בננה', 'Bananas, dehydrated, or banana powder', 'fruit', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~150 גרם)'::text, '1 medium (~150g)'::text, 150.0::numeric, 0.0::numeric, 6.0::numeric, true::boolean, 1::integer),
  ('כוס (~150 גרם)', '1 cup (~150g)', 150.0, 0.0, 6.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 4.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FRUIT] Bananas, overripe, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בננה, בשלה יתר על המידה, גולמית', 'Bananas, overripe, raw', 'fruit', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~150 גרם)'::text, '1 medium (~150g)'::text, 150.0::numeric, 0.0::numeric, 1.5::numeric, true::boolean, 1::integer),
  ('כוס (~150 גרם)', '1 cup (~150g)', 150.0, 0.0, 1.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 1.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FRUIT] Bananas, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בננה, גולמית', 'Bananas, raw', 'fruit', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~150 גרם)'::text, '1 medium (~150g)'::text, 150.0::numeric, 0.0::numeric, 1.5::numeric, true::boolean, 1::integer),
  ('כוס (~150 גרם)', '1 cup (~150g)', 150.0, 0.0, 1.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 1.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FRUIT] Bananas, ripe and slightly ripe, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בננה, בשלה וחצי בשלה, גולמית', 'Bananas, ripe and slightly ripe, raw', 'fruit', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~150 גרם)'::text, '1 medium (~150g)'::text, 150.0::numeric, 0.0::numeric, 1.5::numeric, true::boolean, 1::integer),
  ('כוס (~150 גרם)', '1 cup (~150g)', 150.0, 0.0, 1.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 1.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FRUIT] Baobab powder -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('אבקת באובאב', 'Baobab powder', 'fruit', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~150 גרם)'::text, '1 medium (~150g)'::text, 150.0::numeric, 4.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס (~150 גרם)', '1 cup (~150g)', 150.0, 4.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 2.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FRUIT] Blackberries, canned, heavy syrup, solids and liquids
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('אוכמניות, שומרות, סירופ כבד, מוצקים וצילולים', 'Blackberries, canned, heavy syrup, solids and liquids', 'fruit', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~150 גרם)'::text, '1 medium (~150g)'::text, 150.0::numeric, 0.0::numeric, 1.5::numeric, true::boolean, 1::integer),
  ('כוס (~150 גרם)', '1 cup (~150g)', 150.0, 0.0, 1.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 1.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FRUIT] Blackberries, frozen, unsweetened
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('אוכמניות, קפואות, ללא תיקוק', 'Blackberries, frozen, unsweetened', 'fruit', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~150 גרם)'::text, '1 medium (~150g)'::text, 150.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('כוס (~150 גרם)', '1 cup (~150g)', 150.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FRUIT] Blackberries, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('אוכמניות, גולמיות', 'Blackberries, raw', 'fruit', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~150 גרם)'::text, '1 medium (~150g)'::text, 150.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס (~150 גרם)', '1 cup (~150g)', 150.0, 1.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FRUIT] Blackberry juice, canned
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('מיץ אוכמניות, שמור', 'Blackberry juice, canned', 'fruit', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~150 גרם)'::text, '1 medium (~150g)'::text, 150.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('כוס (~150 גרם)', '1 cup (~150g)', 150.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FRUIT] Blueberries, canned, heavy syrup, solids and liquids
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('אוניות, שומרות, סירופ כבד, מוצקים וצילולים', 'Blueberries, canned, heavy syrup, solids and liquids', 'fruit', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~150 גרם)'::text, '1 medium (~150g)'::text, 150.0::numeric, 0.0::numeric, 1.5::numeric, true::boolean, 1::integer),
  ('כוס (~150 גרם)', '1 cup (~150g)', 150.0, 0.0, 1.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 1.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FRUIT] Blueberries, canned, light syrup, drained
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('אוניות, שומרות, סירופ קל, מסופות', 'Blueberries, canned, light syrup, drained', 'fruit', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~150 גרם)'::text, '1 medium (~150g)'::text, 150.0::numeric, 0.0::numeric, 1.5::numeric, true::boolean, 1::integer),
  ('כוס (~150 גרם)', '1 cup (~150g)', 150.0, 0.0, 1.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 1.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FRUIT] Blueberries, dried, sweetened -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('אוכמניות מיובשות, ממותקות', 'Blueberries, dried, sweetened', 'fruit', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~150 גרם)'::text, '1 medium (~150g)'::text, 150.0::numeric, 0.0::numeric, 5.5::numeric, true::boolean, 1::integer),
  ('כוס (~150 גרם)', '1 cup (~150g)', 150.0, 0.0, 5.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 3.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FRUIT] Blueberries, frozen, sweetened
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('אוכמניות קפואות, ממותקות', 'Blueberries, frozen, sweetened', 'fruit', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~150 גרם)'::text, '1 medium (~150g)'::text, 150.0::numeric, 0.0::numeric, 1.5::numeric, true::boolean, 1::integer),
  ('כוס (~150 גרם)', '1 cup (~150g)', 150.0, 0.0, 1.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 1.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FRUIT] Blueberries, frozen, unsweetened (Includes foods for USDA's Food Distribution Program)
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('אוכמניות קפואות, ללא תוספת סוכר', 'Blueberries, frozen, unsweetened (Includes foods for USDA''s Food Distribution Program)', 'fruit', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~150 גרם)'::text, '1 medium (~150g)'::text, 150.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('כוס (~150 גרם)', '1 cup (~150g)', 150.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FRUIT] Blueberries, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('אוכמניות טריות', 'Blueberries, raw', 'fruit', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~150 גרם)'::text, '1 medium (~150g)'::text, 150.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('כוס (~150 גרם)', '1 cup (~150g)', 150.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FRUIT] Blueberries, wild, canned, heavy syrup, drained
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('אוכמניות בר שמורות, סירופ כבד, מסננות', 'Blueberries, wild, canned, heavy syrup, drained', 'fruit', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~150 גרם)'::text, '1 medium (~150g)'::text, 150.0::numeric, 0.0::numeric, 1.5::numeric, true::boolean, 1::integer),
  ('כוס (~150 גרם)', '1 cup (~150g)', 150.0, 0.0, 1.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 1.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FRUIT] Blueberries, wild, frozen (Includes foods for USDA's Food Distribution Program)
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('אוכמניות בר קפואות', 'Blueberries, wild, frozen (Includes foods for USDA''s Food Distribution Program)', 'fruit', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~150 גרם)'::text, '1 medium (~150g)'::text, 150.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('כוס (~150 גרם)', '1 cup (~150g)', 150.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FRUIT] Boysenberries, canned, heavy syrup
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בויסנברי שמורות, סירופ כבד', 'Boysenberries, canned, heavy syrup', 'fruit', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~150 גרם)'::text, '1 medium (~150g)'::text, 150.0::numeric, 0.0::numeric, 1.5::numeric, true::boolean, 1::integer),
  ('כוס (~150 גרם)', '1 cup (~150g)', 150.0, 0.0, 1.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 1.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FRUIT] Boysenberries, frozen, unsweetened
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בויסנברי קפואות, ללא תוספת סוכר', 'Boysenberries, frozen, unsweetened', 'fruit', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~150 גרם)'::text, '1 medium (~150g)'::text, 150.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס (~150 גרם)', '1 cup (~150g)', 150.0, 1.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FRUIT] Breadfruit, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('פרי לחם טרי', 'Breadfruit, raw', 'fruit', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~150 גרם)'::text, '1 medium (~150g)'::text, 150.0::numeric, 0.0::numeric, 1.5::numeric, true::boolean, 1::integer),
  ('כוס (~150 גרם)', '1 cup (~150g)', 150.0, 0.0, 1.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 1.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FRUIT] Candied fruit -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('פרי מסוכרך', 'Candied fruit', 'fruit', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~150 גרם)'::text, '1 medium (~150g)'::text, 150.0::numeric, 0.0::numeric, 6.0::numeric, true::boolean, 1::integer),
  ('כוס (~150 גרם)', '1 cup (~150g)', 150.0, 0.0, 6.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 4.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FRUIT] Carambola, (starfruit), raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('קרמבולה (כוכב), טרייה', 'Carambola, (starfruit), raw', 'fruit', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~150 גרם)'::text, '1 medium (~150g)'::text, 150.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('כוס (~150 גרם)', '1 cup (~150g)', 150.0, 1.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FRUIT] Carissa, (natal-plum), raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('קריסה (שזיף הנטאל), טרייה', 'Carissa, (natal-plum), raw', 'fruit', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~150 גרם)'::text, '1 medium (~150g)'::text, 150.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('כוס (~150 גרם)', '1 cup (~150g)', 150.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FRUIT] Cherimoya, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('צ''יריימויה, טרייה', 'Cherimoya, raw', 'fruit', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~150 גרם)'::text, '1 medium (~150g)'::text, 150.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('כוס (~150 גרם)', '1 cup (~150g)', 150.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FRUIT] Cherries, sour, canned, water pack, drained
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('דובדבנים חמוצים שמורים, מי זקק, מסננים', 'Cherries, sour, canned, water pack, drained', 'fruit', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~150 גרם)'::text, '1 medium (~150g)'::text, 150.0::numeric, 0.0::numeric, 1.0::numeric, true::boolean, 1::integer),
  ('כוס (~150 גרם)', '1 cup (~150g)', 150.0, 0.0, 1.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 0.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FRUIT] Cherries, sour, red, canned, extra heavy syrup pack, solids and liquids
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('דובדבנים אדומים חמוצים שמורים, סירופ כבד מאוד', 'Cherries, sour, red, canned, extra heavy syrup pack, solids and liquids', 'fruit', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~150 גרם)'::text, '1 medium (~150g)'::text, 150.0::numeric, 0.0::numeric, 2.5::numeric, true::boolean, 1::integer),
  ('כוס (~150 גרם)', '1 cup (~150g)', 150.0, 0.0, 2.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 1.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FRUIT] Cherries, sour, red, canned, heavy syrup pack, solids and liquids
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('דובדבנים אדומים חמוצים שמורים, סירופ כבד', 'Cherries, sour, red, canned, heavy syrup pack, solids and liquids', 'fruit', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~150 גרם)'::text, '1 medium (~150g)'::text, 150.0::numeric, 0.0::numeric, 1.5::numeric, true::boolean, 1::integer),
  ('כוס (~150 גרם)', '1 cup (~150g)', 150.0, 0.0, 1.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 1.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [FRUIT] Cherries, sour, red, canned, light syrup pack, solids and liquids
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('דובדבנים אדומים חמוצים שמורים, סירופ קל', 'Cherries, sour, red, canned, light syrup pack, solids and liquids', 'fruit', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('1 בינוני (~150 גרם)'::text, '1 medium (~150g)'::text, 150.0::numeric, 0.0::numeric, 1.5::numeric, true::boolean, 1::integer),
  ('כוס (~150 גרם)', '1 cup (~150g)', 150.0, 0.0, 1.5, false, 2),
  ('100 גרם', '100g', 100.0, 0.0, 1.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

COMMIT;
