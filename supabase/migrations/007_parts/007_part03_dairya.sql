BEGIN;

-- ============================================================
-- DAIRY (169 foods)
-- ============================================================
-- [DAIRY] Beverage, instant breakfast powder, chocolate, not reconstituted
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('תערובת שקשוקה מיידית, שוקולד, לא מדוללת', 'Beverage, instant breakfast powder, chocolate, not reconstituted', 'dairy', 'red', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 0.0::numeric, 3.5::numeric, true::boolean, 1::integer),
  ('חצי כוס (~120 גרם)', '1/2 cup (~120g)', 120.0, 0.0, 4.0, false, 2),
  ('כוס (~240 מ"ל)', '1 cup (~240ml)', 240.0, 0.0, 8.5, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Beverage, instant breakfast powder, chocolate, sugar-free, not reconstituted -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('תערובת שקשוקה מיידית, שוקולד, ללא סוכר, לא מדוללת', 'Beverage, instant breakfast powder, chocolate, sugar-free, not reconstituted', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 3.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (~120 גרם)', '1/2 cup (~120g)', 120.0, 4.0, 0.0, false, 2),
  ('כוס (~240 מ"ל)', '1 cup (~240ml)', 240.0, 8.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Butter oil, anhydrous -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שמן חמאה, טהור', 'Butter oil, anhydrous', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 9.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (~120 גרם)', '1/2 cup (~120g)', 120.0, 11.0, 0.0, false, 2),
  ('כוס (~240 מ"ל)', '1 cup (~240ml)', 240.0, 21.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Butter, Clarified butter (ghee) -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('חמאה מובהרת, גיא', 'Butter, Clarified butter (ghee)', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 9.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (~120 גרם)', '1/2 cup (~120g)', 120.0, 11.0, 0.0, false, 2),
  ('כוס (~240 מ"ל)', '1 cup (~240ml)', 240.0, 21.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Butter, salted -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('חמאה, מלוחה', 'Butter, salted', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 7.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (~120 גרם)', '1/2 cup (~120g)', 120.0, 8.5, 0.0, false, 2),
  ('כוס (~240 מ"ל)', '1 cup (~240ml)', 240.0, 17.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Butter, whipped, with salt -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('חמאה, מוקצפת, עם מלח', 'Butter, whipped, with salt', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 7.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (~120 גרם)', '1/2 cup (~120g)', 120.0, 9.0, 0.0, false, 2),
  ('כוס (~240 מ"ל)', '1 cup (~240ml)', 240.0, 18.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Butter, without salt -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('חמאה, ללא מלח', 'Butter, without salt', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 7.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (~120 גרם)', '1/2 cup (~120g)', 120.0, 8.5, 0.0, false, 2),
  ('כוס (~240 מ"ל)', '1 cup (~240ml)', 240.0, 17.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Cheese food, cold pack, American -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('חומר גבינה, אמריקאית, קר', 'Cheese food, cold pack, American', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 3.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (~120 גרם)', '1/2 cup (~120g)', 120.0, 4.0, 0.0, false, 2),
  ('כוס (~240 מ"ל)', '1 cup (~240ml)', 240.0, 8.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Cheese food, pasteurized process, American, vitamin D fortified -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גבינה מעובדת, אמריקאית, מועשרת בוויטמין D', 'Cheese food, pasteurized process, American, vitamin D fortified', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 3.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (~120 גרם)', '1/2 cup (~120g)', 120.0, 4.0, 0.0, false, 2),
  ('כוס (~240 מ"ל)', '1 cup (~240ml)', 240.0, 8.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Cheese food, pasteurized process, American, without added vitamin D -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גבינה מעובדת, אמריקאית, ללא וויטמין D', 'Cheese food, pasteurized process, American, without added vitamin D', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 3.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (~120 גרם)', '1/2 cup (~120g)', 120.0, 4.0, 0.0, false, 2),
  ('כוס (~240 מ"ל)', '1 cup (~240ml)', 240.0, 8.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Cheese food, pasteurized process, swiss
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גבינה מעובדת, שוויצרית', 'Cheese food, pasteurized process, swiss', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 3.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (~120 גרם)', '1/2 cup (~120g)', 120.0, 3.5, 0.0, false, 2),
  ('כוס (~240 מ"ל)', '1 cup (~240ml)', 240.0, 7.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Cheese product, pasteurized process, American, reduced fat, fortified with vitamin D
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('תחליף גבינה, אמריקאית, שומן מופחת, מועשר בוויטמין D', 'Cheese product, pasteurized process, American, reduced fat, fortified with vitamin D', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 2.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (~120 גרם)', '1/2 cup (~120g)', 120.0, 3.0, 0.0, false, 2),
  ('כוס (~240 מ"ל)', '1 cup (~240ml)', 240.0, 6.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Cheese product, pasteurized process, American, vitamin D fortified
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('תחליף גבינה, אמריקאית, מועשר בוויטמין D', 'Cheese product, pasteurized process, American, vitamin D fortified', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 3.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (~120 גרם)', '1/2 cup (~120g)', 120.0, 3.5, 0.0, false, 2),
  ('כוס (~240 מ"ל)', '1 cup (~240ml)', 240.0, 7.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Cheese sauce, prepared from recipe
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('רוטב גבינה, מוכן', 'Cheese sauce, prepared from recipe', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (~120 גרם)', '1/2 cup (~120g)', 120.0, 2.5, 0.0, false, 2),
  ('כוס (~240 מ"ל)', '1 cup (~240ml)', 240.0, 5.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Cheese spread, American or Cheddar cheese base, reduced fat
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('משחת גבינה, בסיס צ''דר או אמריקאית, שומן מופחת', 'Cheese spread, American or Cheddar cheese base, reduced fat', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (~120 גרם)', '1/2 cup (~120g)', 120.0, 2.5, 0.0, false, 2),
  ('כוס (~240 מ"ל)', '1 cup (~240ml)', 240.0, 5.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Cheese spread, cream cheese base
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('משחת גבינה, בסיס קרם', 'Cheese spread, cream cheese base', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 3.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (~120 גרם)', '1/2 cup (~120g)', 120.0, 3.5, 0.0, false, 2),
  ('כוס (~240 מ"ל)', '1 cup (~240ml)', 240.0, 7.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Cheese spread, pasteurized process, American
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('משחת גבינה, אמריקאית, מעובדת', 'Cheese spread, pasteurized process, American', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 3.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (~120 גרם)', '1/2 cup (~120g)', 120.0, 3.5, 0.0, false, 2),
  ('כוס (~240 מ"ל)', '1 cup (~240ml)', 240.0, 7.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Cheese substitute, mozzarella
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('תחליף גבינה, מוצרלה', 'Cheese substitute, mozzarella', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 2.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (~120 גרם)', '1/2 cup (~120g)', 120.0, 3.0, 0.0, false, 2),
  ('כוס (~240 מ"ל)', '1 cup (~240ml)', 240.0, 6.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Cheese, American, nonfat or fat free
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גבינה אמריקאית, ללא שומן', 'Cheese, American, nonfat or fat free', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (~120 גרם)', '1/2 cup (~120g)', 120.0, 2.0, 0.0, false, 2),
  ('כוס (~240 מ"ל)', '1 cup (~240ml)', 240.0, 3.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Cheese, American, restaurant -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גבינה אמריקאית, למסעדה', 'Cheese, American, restaurant', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 4.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (~120 גרם)', '1/2 cup (~120g)', 120.0, 5.0, 0.0, false, 2),
  ('כוס (~240 מ"ל)', '1 cup (~240ml)', 240.0, 9.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Cheese, Mexican blend -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גבינה, תערובת מקסיקנית', 'Cheese, Mexican blend', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 4.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (~120 גרם)', '1/2 cup (~120g)', 120.0, 5.0, 0.0, false, 2),
  ('כוס (~240 מ"ל)', '1 cup (~240ml)', 240.0, 9.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Cheese, Mexican, blend, reduced fat
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גבינה מקסיקנית, תערובת, מעוטת שומן', 'Cheese, Mexican, blend, reduced fat', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 3.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (~120 גרם)', '1/2 cup (~120g)', 120.0, 3.5, 0.0, false, 2),
  ('כוס (~240 מ"ל)', '1 cup (~240ml)', 240.0, 7.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Cheese, Swiss, nonfat or fat free
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גבינה שווייצרית, ללא שומן', 'Cheese, Swiss, nonfat or fat free', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (~120 גרם)', '1/2 cup (~120g)', 120.0, 2.0, 0.0, false, 2),
  ('כוס (~240 מ"ל)', '1 cup (~240ml)', 240.0, 3.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Cheese, american cheddar, imitation
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גבינה צ''דר אמריקאית, חיקוי', 'Cheese, american cheddar, imitation', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 2.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (~120 גרם)', '1/2 cup (~120g)', 120.0, 3.0, 0.0, false, 2),
  ('כוס (~240 מ"ל)', '1 cup (~240ml)', 240.0, 6.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Cheese, blue -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גבינה כחולה', 'Cheese, blue', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 3.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (~120 גרם)', '1/2 cup (~120g)', 120.0, 4.0, 0.0, false, 2),
  ('כוס (~240 מ"ל)', '1 cup (~240ml)', 240.0, 8.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Cheese, brick -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גבינה אדומה', 'Cheese, brick', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 3.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (~120 גרם)', '1/2 cup (~120g)', 120.0, 4.0, 0.0, false, 2),
  ('כוס (~240 מ"ל)', '1 cup (~240ml)', 240.0, 8.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Cheese, brie -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גבינה בריא', 'Cheese, brie', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 3.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (~120 גרם)', '1/2 cup (~120g)', 120.0, 4.0, 0.0, false, 2),
  ('כוס (~240 מ"ל)', '1 cup (~240ml)', 240.0, 8.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Cheese, camembert
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גבינה קמאמבר', 'Cheese, camembert', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 3.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (~120 גרם)', '1/2 cup (~120g)', 120.0, 3.5, 0.0, false, 2),
  ('כוס (~240 מ"ל)', '1 cup (~240ml)', 240.0, 7.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Cheese, caraway -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גבינה קארווי', 'Cheese, caraway', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 4.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (~120 גרם)', '1/2 cup (~120g)', 120.0, 5.0, 0.0, false, 2),
  ('כוס (~240 מ"ל)', '1 cup (~240ml)', 240.0, 9.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Cheese, cheddar -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גבינה צ''דר', 'Cheese, cheddar', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 4.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (~120 גרם)', '1/2 cup (~120g)', 120.0, 5.0, 0.0, false, 2),
  ('כוס (~240 מ"ל)', '1 cup (~240ml)', 240.0, 9.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Cheese, cheddar (Includes foods for USDA's Food Distribution Program) -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גבינה צ''דר', 'Cheese, cheddar (Includes foods for USDA''s Food Distribution Program)', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 4.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (~120 גרם)', '1/2 cup (~120g)', 120.0, 5.0, 0.0, false, 2),
  ('כוס (~240 מ"ל)', '1 cup (~240ml)', 240.0, 9.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Cheese, cheddar, nonfat or fat free
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גבינה צ''דר, ללא שומן', 'Cheese, cheddar, nonfat or fat free', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (~120 גרם)', '1/2 cup (~120g)', 120.0, 2.0, 0.0, false, 2),
  ('כוס (~240 מ"ל)', '1 cup (~240ml)', 240.0, 3.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Cheese, cheddar, reduced fat (Includes foods for USDA's Food Distribution Program)
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גבינה צ''דר, מעוטת שומן', 'Cheese, cheddar, reduced fat (Includes foods for USDA''s Food Distribution Program)', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 3.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (~120 גרם)', '1/2 cup (~120g)', 120.0, 3.5, 0.0, false, 2),
  ('כוס (~240 מ"ל)', '1 cup (~240ml)', 240.0, 7.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Cheese, cheddar, sharp, sliced -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גבינה צ''דר חדה, פרוסה', 'Cheese, cheddar, sharp, sliced', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 4.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (~120 גרם)', '1/2 cup (~120g)', 120.0, 5.0, 0.0, false, 2),
  ('כוס (~240 מ"ל)', '1 cup (~240ml)', 240.0, 9.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Cheese, cheshire -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גבינה צ''שיר', 'Cheese, cheshire', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 4.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (~120 גרם)', '1/2 cup (~120g)', 120.0, 5.0, 0.0, false, 2),
  ('כוס (~240 מ"ל)', '1 cup (~240ml)', 240.0, 9.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Cheese, colby -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גבינה קולבי', 'Cheese, colby', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 4.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (~120 גרם)', '1/2 cup (~120g)', 120.0, 5.0, 0.0, false, 2),
  ('כוס (~240 מ"ל)', '1 cup (~240ml)', 240.0, 9.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Cheese, cottage, creamed, large or small curd
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גבינה קוטג'', קרימית', 'Cheese, cottage, creamed, large or small curd', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (~120 גרם)', '1/2 cup (~120g)', 120.0, 1.0, 0.0, false, 2),
  ('כוס (~240 מ"ל)', '1 cup (~240ml)', 240.0, 2.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Cheese, cottage, creamed, with fruit
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גבינה קוטג'', קרימית, עם פרי', 'Cheese, cottage, creamed, with fruit', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (~120 גרם)', '1/2 cup (~120g)', 120.0, 1.0, 0.0, false, 2),
  ('כוס (~240 מ"ל)', '1 cup (~240ml)', 240.0, 2.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Cheese, cottage, lowfat, 1% milkfat
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גבינה קוטג'', מעוטת שומן, 1% שומן', 'Cheese, cottage, lowfat, 1% milkfat', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 0.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (~120 גרם)', '1/2 cup (~120g)', 120.0, 0.5, 0.0, false, 2),
  ('כוס (~240 מ"ל)', '1 cup (~240ml)', 240.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Cheese, cottage, lowfat, 1% milkfat, lactose reduced
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גבינה קוטג'', מעוטת שומן, 1% שומן, ללא לקטוז', 'Cheese, cottage, lowfat, 1% milkfat, lactose reduced', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 0.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (~120 גרם)', '1/2 cup (~120g)', 120.0, 0.5, 0.0, false, 2),
  ('כוס (~240 מ"ל)', '1 cup (~240ml)', 240.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Cheese, cottage, lowfat, 1% milkfat, no sodium added
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גבינה קוטג'', מעוטת שומן, 1% שומן, ללא נתרן', 'Cheese, cottage, lowfat, 1% milkfat, no sodium added', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 0.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (~120 גרם)', '1/2 cup (~120g)', 120.0, 0.5, 0.0, false, 2),
  ('כוס (~240 מ"ל)', '1 cup (~240ml)', 240.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Cheese, cottage, lowfat, 1% milkfat, with vegetables
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גבינה קוטג'', מעוטת שומן, 1% שומן, עם ירקות', 'Cheese, cottage, lowfat, 1% milkfat, with vegetables', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 0.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (~120 גרם)', '1/2 cup (~120g)', 120.0, 0.5, 0.0, false, 2),
  ('כוס (~240 מ"ל)', '1 cup (~240ml)', 240.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Cheese, cottage, lowfat, 2% milkfat
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גבינה קוטג'', מעוטת שומן, 2% שומן', 'Cheese, cottage, lowfat, 2% milkfat', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (~120 גרם)', '1/2 cup (~120g)', 120.0, 1.0, 0.0, false, 2),
  ('כוס (~240 מ"ל)', '1 cup (~240ml)', 240.0, 2.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Cheese, cottage, nonfat, uncreamed, dry, large or small curd
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גבינה קוטג'', ללא שומן', 'Cheese, cottage, nonfat, uncreamed, dry, large or small curd', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 0.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (~120 גרם)', '1/2 cup (~120g)', 120.0, 0.5, 0.0, false, 2),
  ('כוס (~240 מ"ל)', '1 cup (~240ml)', 240.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Cheese, cottage, with vegetables
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גבינה קוטג'', עם ירקות', 'Cheese, cottage, with vegetables', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (~120 גרם)', '1/2 cup (~120g)', 120.0, 1.0, 0.0, false, 2),
  ('כוס (~240 מ"ל)', '1 cup (~240ml)', 240.0, 2.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Cheese, cream -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גבינה קרים', 'Cheese, cream', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 3.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (~120 גרם)', '1/2 cup (~120g)', 120.0, 4.0, 0.0, false, 2),
  ('כוס (~240 מ"ל)', '1 cup (~240ml)', 240.0, 8.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Cheese, cream, fat free
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גבינה קרים, ללא שומן', 'Cheese, cream, fat free', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (~120 גרם)', '1/2 cup (~120g)', 120.0, 1.0, 0.0, false, 2),
  ('כוס (~240 מ"ל)', '1 cup (~240ml)', 240.0, 2.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Cheese, cream, low fat
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גבינה קרם חלבה נמוכה', 'Cheese, cream, low fat', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 2.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (~120 גרם)', '1/2 cup (~120g)', 120.0, 2.5, 0.0, false, 2),
  ('כוס (~240 מ"ל)', '1 cup (~240ml)', 240.0, 5.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Cheese, dry white, queso seco -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גבינה קשה לבנה', 'Cheese, dry white, queso seco', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 3.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (~120 גרם)', '1/2 cup (~120g)', 120.0, 4.0, 0.0, false, 2),
  ('כוס (~240 מ"ל)', '1 cup (~240ml)', 240.0, 8.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Cheese, edam -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גבינה אדם', 'Cheese, edam', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 3.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (~120 גרם)', '1/2 cup (~120g)', 120.0, 4.0, 0.0, false, 2),
  ('כוס (~240 מ"ל)', '1 cup (~240ml)', 240.0, 8.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Cheese, feta
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גבינה פטה', 'Cheese, feta', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 2.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (~120 גרם)', '1/2 cup (~120g)', 120.0, 3.0, 0.0, false, 2),
  ('כוס (~240 מ"ל)', '1 cup (~240ml)', 240.0, 6.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Cheese, fontina -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גבינה פונטינה', 'Cheese, fontina', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 4.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (~120 גרם)', '1/2 cup (~120g)', 120.0, 5.0, 0.0, false, 2),
  ('כוס (~240 מ"ל)', '1 cup (~240ml)', 240.0, 9.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Cheese, fresh, queso fresco
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גבינה טרייה', 'Cheese, fresh, queso fresco', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 3.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (~120 גרם)', '1/2 cup (~120g)', 120.0, 3.5, 0.0, false, 2),
  ('כוס (~240 מ"ל)', '1 cup (~240ml)', 240.0, 7.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Cheese, gjetost -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גבינה גיטוסט', 'Cheese, gjetost', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 4.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (~120 גרם)', '1/2 cup (~120g)', 120.0, 5.5, 0.0, false, 2),
  ('כוס (~240 מ"ל)', '1 cup (~240ml)', 240.0, 11.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Cheese, goat, hard type -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גבינה עיזים קשה', 'Cheese, goat, hard type', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 4.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (~120 גרם)', '1/2 cup (~120g)', 120.0, 5.5, 0.0, false, 2),
  ('כוס (~240 מ"ל)', '1 cup (~240ml)', 240.0, 11.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Cheese, goat, semisoft type -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גבינה עיזים חצי קשה', 'Cheese, goat, semisoft type', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 3.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (~120 גרם)', '1/2 cup (~120g)', 120.0, 4.0, 0.0, false, 2),
  ('כוס (~240 מ"ל)', '1 cup (~240ml)', 240.0, 8.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Cheese, goat, soft type
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גבינה עיזים רכה', 'Cheese, goat, soft type', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 2.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (~120 גרם)', '1/2 cup (~120g)', 120.0, 3.0, 0.0, false, 2),
  ('כוס (~240 מ"ל)', '1 cup (~240ml)', 240.0, 6.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Cheese, gouda -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גבינה גאודה', 'Cheese, gouda', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 3.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (~120 גרם)', '1/2 cup (~120g)', 120.0, 4.0, 0.0, false, 2),
  ('כוס (~240 מ"ל)', '1 cup (~240ml)', 240.0, 8.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Cheese, gruyere -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גבינה גרויאר', 'Cheese, gruyere', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 4.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (~120 גרם)', '1/2 cup (~120g)', 120.0, 5.0, 0.0, false, 2),
  ('כוס (~240 מ"ל)', '1 cup (~240ml)', 240.0, 9.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Cheese, limburger -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גבינה לימבורגר', 'Cheese, limburger', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 3.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (~120 גרם)', '1/2 cup (~120g)', 120.0, 4.0, 0.0, false, 2),
  ('כוס (~240 מ"ל)', '1 cup (~240ml)', 240.0, 8.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Cheese, low fat, cheddar or colby
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גבינה צ''דר חלבה נמוכה', 'Cheese, low fat, cheddar or colby', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (~120 גרם)', '1/2 cup (~120g)', 120.0, 2.0, 0.0, false, 2),
  ('כוס (~240 מ"ל)', '1 cup (~240ml)', 240.0, 3.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Cheese, low-sodium, cheddar or colby -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גבינה צ''דר נמוכה בנתרן', 'Cheese, low-sodium, cheddar or colby', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 4.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (~120 גרם)', '1/2 cup (~120g)', 120.0, 5.0, 0.0, false, 2),
  ('כוס (~240 מ"ל)', '1 cup (~240ml)', 240.0, 9.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Cheese, mexican, queso anejo -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גבינה מקסיקנית אנחו', 'Cheese, mexican, queso anejo', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 3.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (~120 גרם)', '1/2 cup (~120g)', 120.0, 4.0, 0.0, false, 2),
  ('כוס (~240 מ"ל)', '1 cup (~240ml)', 240.0, 8.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Cheese, mexican, queso asadero -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גבינה מקסיקנית אסדרו', 'Cheese, mexican, queso asadero', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 3.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (~120 גרם)', '1/2 cup (~120g)', 120.0, 4.0, 0.0, false, 2),
  ('כוס (~240 מ"ל)', '1 cup (~240ml)', 240.0, 8.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Cheese, mexican, queso chihuahua -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גבינה מקסיקנית צ''יוואווה', 'Cheese, mexican, queso chihuahua', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 3.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (~120 גרם)', '1/2 cup (~120g)', 120.0, 4.0, 0.0, false, 2),
  ('כוס (~240 מ"ל)', '1 cup (~240ml)', 240.0, 8.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Cheese, mexican, queso cotija -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גבינה מקסיקנית קוטיחה', 'Cheese, mexican, queso cotija', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 3.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (~120 גרם)', '1/2 cup (~120g)', 120.0, 4.0, 0.0, false, 2),
  ('כוס (~240 מ"ל)', '1 cup (~240ml)', 240.0, 8.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Cheese, monterey -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גבינה מונטריי', 'Cheese, monterey', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 3.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (~120 גרם)', '1/2 cup (~120g)', 120.0, 4.0, 0.0, false, 2),
  ('כוס (~240 מ"ל)', '1 cup (~240ml)', 240.0, 8.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Cheese, monterey, low fat
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גבינה מונטריי חלבה נמוכה', 'Cheese, monterey, low fat', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 3.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (~120 גרם)', '1/2 cup (~120g)', 120.0, 3.5, 0.0, false, 2),
  ('כוס (~240 מ"ל)', '1 cup (~240ml)', 240.0, 7.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Cheese, mozzarella, low moisture, part-skim
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גבינה מוצרלה חלבה נמוכה', 'Cheese, mozzarella, low moisture, part-skim', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 3.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (~120 גרם)', '1/2 cup (~120g)', 120.0, 3.5, 0.0, false, 2),
  ('כוס (~240 מ"ל)', '1 cup (~240ml)', 240.0, 7.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Cheese, mozzarella, low moisture, part-skim, shredded
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גבינה מוצרלה חלבה נמוכה מגוררת', 'Cheese, mozzarella, low moisture, part-skim, shredded', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 3.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (~120 גרם)', '1/2 cup (~120g)', 120.0, 3.5, 0.0, false, 2),
  ('כוס (~240 מ"ל)', '1 cup (~240ml)', 240.0, 7.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Cheese, mozzarella, low sodium
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גבינה מוצרלה נמוכה בנתרן', 'Cheese, mozzarella, low sodium', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 3.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (~120 גרם)', '1/2 cup (~120g)', 120.0, 3.5, 0.0, false, 2),
  ('כוס (~240 מ"ל)', '1 cup (~240ml)', 240.0, 7.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Cheese, mozzarella, nonfat
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גבינה מוצרלה ללא שומן', 'Cheese, mozzarella, nonfat', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (~120 גרם)', '1/2 cup (~120g)', 120.0, 2.0, 0.0, false, 2),
  ('כוס (~240 מ"ל)', '1 cup (~240ml)', 240.0, 3.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Cheese, mozzarella, part skim milk
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גבינה מוצרלה חלקית שומן', 'Cheese, mozzarella, part skim milk', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 2.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (~120 גרם)', '1/2 cup (~120g)', 120.0, 3.0, 0.0, false, 2),
  ('כוס (~240 מ"ל)', '1 cup (~240ml)', 240.0, 6.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Cheese, mozzarella, whole milk
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גבינה מוצרלה מלא שומן', 'Cheese, mozzarella, whole milk', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 0.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (~120 גרם)', '1/2 cup (~120g)', 120.0, 0.5, 0.0, false, 2),
  ('כוס (~240 מ"ל)', '1 cup (~240ml)', 240.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Cheese, mozzarella, whole milk, low moisture
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גבינה מוצרלה מלא שומן חלבה נמוכה', 'Cheese, mozzarella, whole milk, low moisture', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 0.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (~120 גרם)', '1/2 cup (~120g)', 120.0, 0.5, 0.0, false, 2),
  ('כוס (~240 מ"ל)', '1 cup (~240ml)', 240.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Cheese, muenster -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גבינה מונסטר', 'Cheese, muenster', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 3.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (~120 גרם)', '1/2 cup (~120g)', 120.0, 4.0, 0.0, false, 2),
  ('כוס (~240 מ"ל)', '1 cup (~240ml)', 240.0, 8.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Cheese, muenster, low fat
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גבינה מונסטר חלבה נמוכה', 'Cheese, muenster, low fat', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 2.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (~120 גרם)', '1/2 cup (~120g)', 120.0, 3.0, 0.0, false, 2),
  ('כוס (~240 מ"ל)', '1 cup (~240ml)', 240.0, 6.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Cheese, neufchatel
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גבינה נויפשטל', 'Cheese, neufchatel', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 2.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (~120 גרם)', '1/2 cup (~120g)', 120.0, 3.0, 0.0, false, 2),
  ('כוס (~240 מ"ל)', '1 cup (~240ml)', 240.0, 6.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [DAIRY] Cheese, parmesan, dry grated, reduced fat
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גבינה פרמזן מגורדת יבשה מוקטנת שומן', 'Cheese, parmesan, dry grated, reduced fat', 'dairy', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('100 גרם'::text, '100g'::text, 100.0::numeric, 2.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('חצי כוס (~120 גרם)', '1/2 cup (~120g)', 120.0, 3.0, 0.0, false, 2),
  ('כוס (~240 מ"ל)', '1 cup (~240ml)', 240.0, 6.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

COMMIT;
