BEGIN;

-- [PROTEIN] Fish, flatfish (flounder and sole species), raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('דג שטוח (פלאונדר וסול), חי', 'Fish, flatfish (flounder and sole species), raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('פילה קטן (100 גרם)', '1 small fillet (100g)', 100.0, 0.5, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Fish, gefiltefish, commercial, sweet recipe -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גפילטע פיש, מסחרי, מתכון מתוק', 'Fish, gefiltefish, commercial, sweet recipe', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('פילה קטן (100 גרם)', '1 small fillet (100g)', 100.0, 1.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Fish, grouper, mixed species, cooked, dry heat
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גרופר, מעורבב מינים, מבושל, חום יבש', 'Fish, grouper, mixed species, cooked, dry heat', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('פילה קטן (100 גרם)', '1 small fillet (100g)', 100.0, 1.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Fish, grouper, mixed species, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('גרופר, מעורבב מינים, חי', 'Fish, grouper, mixed species, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('פילה קטן (100 גרם)', '1 small fillet (100g)', 100.0, 0.5, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Fish, haddock, cooked, dry heat
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('אדלר, מבושל, חום יבש', 'Fish, haddock, cooked, dry heat', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('פילה קטן (100 גרם)', '1 small fillet (100g)', 100.0, 0.5, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Fish, haddock, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('אדלר, חי', 'Fish, haddock, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('פילה קטן (100 גרם)', '1 small fillet (100g)', 100.0, 0.5, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Fish, haddock, smoked
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('אדלר, מעושן', 'Fish, haddock, smoked', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('פילה קטן (100 גרם)', '1 small fillet (100g)', 100.0, 1.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Fish, halibut, Atlantic and Pacific, cooked, dry heat
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('הליבוט אטלנטי ותיכון, מבושל, חום יבש', 'Fish, halibut, Atlantic and Pacific, cooked, dry heat', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('פילה קטן (100 גרם)', '1 small fillet (100g)', 100.0, 1.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Fish, halibut, Atlantic and Pacific, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('הליבוט אטלנטי ותיכון, חי', 'Fish, halibut, Atlantic and Pacific, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('פילה קטן (100 גרם)', '1 small fillet (100g)', 100.0, 0.5, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Fish, halibut, Greenland, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('הליבוט גרינלנד, חי', 'Fish, halibut, Greenland, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 2.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('פילה קטן (100 גרם)', '1 small fillet (100g)', 100.0, 1.5, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 1.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Fish, halibut, greenland, cooked, dry heat
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('הליבוט גרינלנד, מבושל, חום יבש', 'Fish, halibut, greenland, cooked, dry heat', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 3.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('פילה קטן (100 גרם)', '1 small fillet (100g)', 100.0, 2.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 2.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Fish, herring, Atlantic, cooked, dry heat
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('הרינג אטלנטי, מבושל, חום יבש', 'Fish, herring, Atlantic, cooked, dry heat', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 2.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('פילה קטן (100 גרם)', '1 small fillet (100g)', 100.0, 1.5, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 1.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Fish, herring, Atlantic, kippered
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('הרינג אטלנטי, מעושן', 'Fish, herring, Atlantic, kippered', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 2.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('פילה קטן (100 גרם)', '1 small fillet (100g)', 100.0, 1.5, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 1.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Fish, herring, Atlantic, pickled
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('הרינג אטלנטי, מלוח', 'Fish, herring, Atlantic, pickled', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 3.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('פילה קטן (100 גרם)', '1 small fillet (100g)', 100.0, 2.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 2.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Fish, herring, Atlantic, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('הרינג אטלנטי, חי', 'Fish, herring, Atlantic, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('פילה קטן (100 גרם)', '1 small fillet (100g)', 100.0, 1.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Fish, herring, Pacific, cooked, dry heat
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('הרינג אוקיאנוס שקט, מבושל, חום יבש', 'Fish, herring, Pacific, cooked, dry heat', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 3.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('פילה קטן (100 גרם)', '1 small fillet (100g)', 100.0, 2.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 2.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Fish, herring, Pacific, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('הרינג אוקיאנוס שקט, חי', 'Fish, herring, Pacific, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 2.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('פילה קטן (100 גרם)', '1 small fillet (100g)', 100.0, 1.5, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 1.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Fish, ling, cooked, dry heat
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('לינג, מבושל, חום יבש', 'Fish, ling, cooked, dry heat', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('פילה קטן (100 גרם)', '1 small fillet (100g)', 100.0, 1.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Fish, ling, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('לינג, חי', 'Fish, ling, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('פילה קטן (100 גרם)', '1 small fillet (100g)', 100.0, 0.5, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Fish, lingcod, cooked, dry heat
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('לינגקוד, מבושל, חום יבש', 'Fish, lingcod, cooked, dry heat', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('פילה קטן (100 גרם)', '1 small fillet (100g)', 100.0, 1.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Fish, lingcod, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('לינגקוד, חי', 'Fish, lingcod, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('פילה קטן (100 גרם)', '1 small fillet (100g)', 100.0, 0.5, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Fish, mackerel, Atlantic, cooked, dry heat
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('מקרל אטלנטי, מבושל, חום יבש', 'Fish, mackerel, Atlantic, cooked, dry heat', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 3.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('פילה קטן (100 גרם)', '1 small fillet (100g)', 100.0, 2.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 2.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Fish, mackerel, Atlantic, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('מקרל אטלנטי, חי', 'Fish, mackerel, Atlantic, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 2.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('פילה קטן (100 גרם)', '1 small fillet (100g)', 100.0, 1.5, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 1.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Fish, mackerel, Pacific and jack, mixed species, cooked, dry heat
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('מקרל אוקיאנוס שקט וג''ק, מעורבב מינים, מבושל, חום יבש', 'Fish, mackerel, Pacific and jack, mixed species, cooked, dry heat', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 2.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('פילה קטן (100 גרם)', '1 small fillet (100g)', 100.0, 1.5, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 1.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Fish, mackerel, Pacific and jack, mixed species, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('מקרל אוקיאנוס שקט וג''ק, מעורבב מינים, חי', 'Fish, mackerel, Pacific and jack, mixed species, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('פילה קטן (100 גרם)', '1 small fillet (100g)', 100.0, 1.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Fish, mackerel, jack, canned, drained solids
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('מקרל ג''ק, שימור, מסננים מוצקים', 'Fish, mackerel, jack, canned, drained solids', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('פילה קטן (100 גרם)', '1 small fillet (100g)', 100.0, 1.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Fish, mackerel, king, cooked, dry heat
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('מקרל מלך צלוי', 'Fish, mackerel, king, cooked, dry heat', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('פילה קטן (100 גרם)', '1 small fillet (100g)', 100.0, 1.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Fish, mackerel, king, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('מקרל מלך חי', 'Fish, mackerel, king, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('פילה קטן (100 גרם)', '1 small fillet (100g)', 100.0, 1.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Fish, mackerel, salted -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('מקרל מלוח', 'Fish, mackerel, salted', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 4.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('פילה קטן (100 גרם)', '1 small fillet (100g)', 100.0, 2.5, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 2.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Fish, mackerel, spanish, cooked, dry heat
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('מקרל ספרדי צלוי', 'Fish, mackerel, spanish, cooked, dry heat', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('פילה קטן (100 גרם)', '1 small fillet (100g)', 100.0, 1.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Fish, mackerel, spanish, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('מקרל ספרדי חי', 'Fish, mackerel, spanish, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('פילה קטן (100 גרם)', '1 small fillet (100g)', 100.0, 1.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Fish, mahimahi, cooked, dry heat
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('דג מאהי צלוי', 'Fish, mahimahi, cooked, dry heat', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('פילה קטן (100 גרם)', '1 small fillet (100g)', 100.0, 1.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Fish, mahimahi, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('דג מאהי חי', 'Fish, mahimahi, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('פילה קטן (100 גרם)', '1 small fillet (100g)', 100.0, 0.5, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Fish, milkfish, cooked, dry heat
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('דג חלב צלוי', 'Fish, milkfish, cooked, dry heat', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 2.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('פילה קטן (100 גרם)', '1 small fillet (100g)', 100.0, 1.5, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 1.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Fish, milkfish, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('דג חלב חי', 'Fish, milkfish, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('פילה קטן (100 גרם)', '1 small fillet (100g)', 100.0, 1.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Fish, monkfish, cooked, dry heat
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('דג נזיר צלוי', 'Fish, monkfish, cooked, dry heat', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('פילה קטן (100 גרם)', '1 small fillet (100g)', 100.0, 0.5, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Fish, monkfish, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('דג נזיר חי', 'Fish, monkfish, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('פילה קטן (100 גרם)', '1 small fillet (100g)', 100.0, 0.5, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Fish, mullet, striped, cooked, dry heat
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בורי פסים צלוי', 'Fish, mullet, striped, cooked, dry heat', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('פילה קטן (100 גרם)', '1 small fillet (100g)', 100.0, 1.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Fish, mullet, striped, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בורי פסים חי', 'Fish, mullet, striped, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('פילה קטן (100 גרם)', '1 small fillet (100g)', 100.0, 1.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Fish, ocean perch, Atlantic, cooked, dry heat
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('פרך אוקיינוס אטלנטי צלוי', 'Fish, ocean perch, Atlantic, cooked, dry heat', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('פילה קטן (100 גרם)', '1 small fillet (100g)', 100.0, 0.5, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Fish, ocean perch, Atlantic, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('פרך אוקיינוס אטלנטי חי', 'Fish, ocean perch, Atlantic, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('פילה קטן (100 גרם)', '1 small fillet (100g)', 100.0, 0.5, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Fish, perch, mixed species, cooked, dry heat
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('פרך מינים מעורבים צלוי', 'Fish, perch, mixed species, cooked, dry heat', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('פילה קטן (100 גרם)', '1 small fillet (100g)', 100.0, 1.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Fish, perch, mixed species, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('פרך מינים מעורבים חי', 'Fish, perch, mixed species, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('פילה קטן (100 גרם)', '1 small fillet (100g)', 100.0, 0.5, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Fish, pike, northern, cooked, dry heat
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('כharbor צפוני צלוי', 'Fish, pike, northern, cooked, dry heat', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('פילה קטן (100 גרם)', '1 small fillet (100g)', 100.0, 1.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Fish, pike, northern, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('כarbor צפוני חי', 'Fish, pike, northern, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('פילה קטן (100 גרם)', '1 small fillet (100g)', 100.0, 0.5, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Fish, pike, walleye, cooked, dry heat
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('וולאי צלוי', 'Fish, pike, walleye, cooked, dry heat', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('פילה קטן (100 גרם)', '1 small fillet (100g)', 100.0, 1.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Fish, pike, walleye, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('וולאי חי', 'Fish, pike, walleye, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('פילה קטן (100 גרם)', '1 small fillet (100g)', 100.0, 0.5, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Fish, pollock, Alaska, cooked
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('פולוק אלסקה מבושל', 'Fish, pollock, Alaska, cooked', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('פילה קטן (100 גרם)', '1 small fillet (100g)', 100.0, 0.5, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Fish, pollock, Alaska, cooked, dry heat (may contain additives to retain moisture)
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('פולוק אלסקה צלוי', 'Fish, pollock, Alaska, cooked, dry heat (may contain additives to retain moisture)', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('פילה קטן (100 גרם)', '1 small fillet (100g)', 100.0, 1.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Fish, pollock, Alaska, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('פולוק אלסקה חי', 'Fish, pollock, Alaska, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('פילה קטן (100 גרם)', '1 small fillet (100g)', 100.0, 0.5, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Fish, pollock, Alaska, raw (may contain additives to retain moisture)
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('פולוק אלסקה חי', 'Fish, pollock, Alaska, raw (may contain additives to retain moisture)', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('פילה קטן (100 גרם)', '1 small fillet (100g)', 100.0, 0.5, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Fish, pollock, Atlantic, cooked, dry heat
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('פולוק אטלנטי צלוי', 'Fish, pollock, Atlantic, cooked, dry heat', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('פילה קטן (100 גרם)', '1 small fillet (100g)', 100.0, 1.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Fish, pollock, Atlantic, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('פולוק אטלנטי חי', 'Fish, pollock, Atlantic, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('פילה קטן (100 גרם)', '1 small fillet (100g)', 100.0, 0.5, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Fish, pollock, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('פולוק חי', 'Fish, pollock, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('פילה קטן (100 גרם)', '1 small fillet (100g)', 100.0, 0.5, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Fish, pompano, florida, cooked, dry heat
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('פומפנו פלורידה צלוי', 'Fish, pompano, florida, cooked, dry heat', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 2.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('פילה קטן (100 גרם)', '1 small fillet (100g)', 100.0, 1.5, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 1.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Fish, pompano, florida, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('פומפנו פלורידה חי', 'Fish, pompano, florida, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('פילה קטן (100 גרם)', '1 small fillet (100g)', 100.0, 1.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Fish, pout, ocean, cooked, dry heat
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('דג פאוט אוקיינוס, מבושל, תנור יבש', 'Fish, pout, ocean, cooked, dry heat', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('פילה קטן (100 גרם)', '1 small fillet (100g)', 100.0, 1.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Fish, pout, ocean, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('דג פאוט אוקיינוס, גולמי', 'Fish, pout, ocean, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('פילה קטן (100 גרם)', '1 small fillet (100g)', 100.0, 0.5, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Fish, rockfish, Pacific, mixed species, cooked, dry heat
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('דג רוקפיש פציפי, מיקס מינים, מבושל, תנור יבש', 'Fish, rockfish, Pacific, mixed species, cooked, dry heat', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('פילה קטן (100 גרם)', '1 small fillet (100g)', 100.0, 1.0, 0.0, false, 2),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Bacon, pre-sliced, reduced/low sodium, unprepared -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בייקון, פרוסות, נתוך נתרן מופחת, לא מבושל', 'Bacon, pre-sliced, reduced/low sodium, unprepared', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 4.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 3.0, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 1.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Canadian bacon, cooked, pan-fried
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בייקון קנדי, מבושל, טיגון', 'Canadian bacon, cooked, pan-fried', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Canadian bacon, unprepared
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בייקון קנדי, לא מבושל', 'Canadian bacon, unprepared', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] HORMEL ALWAYS TENDER, Boneless Pork Loin, Fresh Pork
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('שומן חזיר (לוין), עצם בחזיר, טרי', 'HORMEL ALWAYS TENDER, Boneless Pork Loin, Fresh Pork', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] HORMEL ALWAYS TENDER, Center Cut Chops, Fresh Pork
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('קצוצי לוין, חתיכות מרכזיות, חזיר טרי', 'HORMEL ALWAYS TENDER, Center Cut Chops, Fresh Pork', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 2.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.5, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] HORMEL ALWAYS TENDER, Pork Loin Filets, Lemon Garlic-Flavored
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('פילה לוין, בטעם לימון שום', 'HORMEL ALWAYS TENDER, Pork Loin Filets, Lemon Garlic-Flavored', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] HORMEL ALWAYS TENDER, Pork Tenderloin, Peppercorn-Flavored
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('טנדרלוין חזיר, בטעם פלفל שחור', 'HORMEL ALWAYS TENDER, Pork Tenderloin, Peppercorn-Flavored', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] HORMEL ALWAYS TENDER, Pork Tenderloin, Teriyaki-Flavored
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('טנדרלוין חזיר, בטעם טריאקי', 'HORMEL ALWAYS TENDER, Pork Tenderloin, Teriyaki-Flavored', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] HORMEL Canadian Style Bacon
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בייקון סגנון קנדי', 'HORMEL Canadian Style Bacon', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] HORMEL, Cure 81 Ham
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בשר חמוץ (קיור 81)', 'HORMEL, Cure 81 Ham', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Ham, sliced, restaurant
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בשר חזיר, פרוסות, מסעדה', 'Ham, sliced, restaurant', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Pork loin, fresh, backribs, bone-in, cooked-roasted, lean only
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('צלעות לוין, עם עצם, מבושל צלייה, רזה', 'Pork loin, fresh, backribs, bone-in, cooked-roasted, lean only', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 3.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 2.0, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Pork loin, fresh, backribs, bone-in, raw, lean only
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('צלעות לוין, עם עצם, גולמי, רזה', 'Pork loin, fresh, backribs, bone-in, raw, lean only', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 2.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.5, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Pork, Leg Cap Steak, boneless, separable lean and fat, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('סטייק קפ רגל חזיר, ללא עצם, גולמי', 'Pork, Leg Cap Steak, boneless, separable lean and fat, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Pork, Leg sirloin tip roast, boneless, separable lean and fat, cooked, braised
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('רוסט סירלויין קצה רגל חזיר, ללא עצם, מבושל בתנור', 'Pork, Leg sirloin tip roast, boneless, separable lean and fat, cooked, braised', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Pork, Leg sirloin tip roast, boneless, separable lean and fat, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('רוסט סירלויין קצה רגל חזיר, ללא עצם, גולמי', 'Pork, Leg sirloin tip roast, boneless, separable lean and fat, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Pork, Shoulder breast, boneless, separable lean and fat, cooked, broiled
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('חזה כתף חזיר, ללא עצם, מבושל בגריל', 'Pork, Shoulder breast, boneless, separable lean and fat, cooked, broiled', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Pork, Shoulder breast, boneless, separable lean and fat, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('חזה כתף חזיר, ללא עצם, גולמי', 'Pork, Shoulder breast, boneless, separable lean and fat, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Pork, Shoulder petite tender, boneless, separable lean and fat, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('פטיט טנדר כתף חזיר, ללא עצם, גולמי', 'Pork, Shoulder petite tender, boneless, separable lean and fat, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Pork, bacon, rendered fat, cooked -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בייקון חזיר, שומן מומס, מבושל', 'Pork, bacon, rendered fat, cooked', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 10.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 7.0, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 3.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Pork, cured, bacon, cooked, baked -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בייקון חזיר מלוח, מבושל, אפויה', 'Pork, cured, bacon, cooked, baked', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 6.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 4.0, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 2.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

COMMIT;
