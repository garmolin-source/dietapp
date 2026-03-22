BEGIN;

-- ============================================================
-- PROTEIN (476 foods)
-- ============================================================
-- [PROTEIN] Beef composite, separable lean only, trimmed to 1/8" fat, choice, cooked
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בקר משוקלל, בשר צלול בלבד, טבול לשומן 1/8", בחירה, מבושל', 'Beef composite, separable lean only, trimmed to 1/8" fat, choice, cooked', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 2.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.5, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beef, Australian, imported, Wagyu, external fat, Aust. marble score 4/5, raw -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בקר אוסטרלי מיובא, וגיו, שומן חיצוני, דירוג שיש 4/5, גולמי', 'Beef, Australian, imported, Wagyu, external fat, Aust. marble score 4/5, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 7.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 4.5, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 2.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beef, Australian, imported, Wagyu, external fat, Aust. marble score 9, raw -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בקר אוסטרלי מיובא, וגיו, שומן חיצוני, דירוג שיש 9, גולמי', 'Beef, Australian, imported, Wagyu, external fat, Aust. marble score 9, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 7.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 5.0, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 2.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beef, Australian, imported, Wagyu, loin, tenderloin steak/roast, boneless, separable lean and fat, Aust. marble score 4/5, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בקר אוסטרלי מיובא, וגיו, לוין, סטייק/צלי פילה, חסר עצם, בשר וחומר שומן, דירוג שיש 4/5, גולמי', 'Beef, Australian, imported, Wagyu, loin, tenderloin steak/roast, boneless, separable lean and fat, Aust. marble score 4/5, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 2.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.5, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beef, Australian, imported, Wagyu, loin, tenderloin steak/roast, boneless, separable lean and fat, Aust. marble score 9, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בקר אוסטרלי מיובא, וגיו, לוין, סטייק/צלי פילה, חסר עצם, בשר וחומר שומן, דירוג שיש 9, גולמי', 'Beef, Australian, imported, Wagyu, loin, tenderloin steak/roast, boneless, separable lean and fat, Aust. marble score 9, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 3.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 2.0, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beef, Australian, imported, Wagyu, loin, tenderloin steak/roast, boneless, separable lean only, Aust. marble score 4/5, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בקר אוסטרלי מיובא, וגיו, לוין, סטייק/צלי פילה, חסר עצם, בשר צלול בלבד, דירוג שיש 4/5, גולמי', 'Beef, Australian, imported, Wagyu, loin, tenderloin steak/roast, boneless, separable lean only, Aust. marble score 4/5, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 2.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.5, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beef, Australian, imported, Wagyu, loin, tenderloin steak/roast, boneless, separable lean only, Aust. marble score 9, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בקר אוסטרלי מיובא, וגיו, לוין, סטייק/צלי פילה, חסר עצם, בשר צלול בלבד, דירוג שיש 9, גולמי', 'Beef, Australian, imported, Wagyu, loin, tenderloin steak/roast, boneless, separable lean only, Aust. marble score 9, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 3.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 2.0, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beef, Australian, imported, Wagyu, loin, top loin steak/roast, boneless, separable lean and fat, Aust. marble score 4/5, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בקר אוסטרלי מיובא, וגיו, לוין, סטייק/צלי פילה עליון, חסר עצם, בשר וחומר שומן, דירוג שיש 4/5, גולמי', 'Beef, Australian, imported, Wagyu, loin, top loin steak/roast, boneless, separable lean and fat, Aust. marble score 4/5, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 3.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 2.0, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beef, Australian, imported, Wagyu, loin, top loin steak/roast, boneless, separable lean only, Aust. marble score 4/5, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בקר אוסטרלי מיובא, וגיו, לוין, סטייק/צלי פילה עליון, חסר עצם, בשר צלול בלבד, דירוג שיש 4/5, גולמי', 'Beef, Australian, imported, Wagyu, loin, top loin steak/roast, boneless, separable lean only, Aust. marble score 4/5, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 2.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.5, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beef, Australian, imported, Wagyu, loin, top loin steak/roast, boneless, separable lean only, Aust. marble score 9, raw -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בקר אוסטרלי מיובא, וגיו, לוין, סטייק/צלי פילה עליון, חסר עצם, בשר צלול בלבד, דירוג שיש 9, גולמי', 'Beef, Australian, imported, Wagyu, loin, top loin steak/roast, boneless, separable lean only, Aust. marble score 9, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 4.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 2.5, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 1.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beef, Australian, imported, Wagyu, loin, top loin steak/roast, separable lean and fat, Aust. marble score 9, raw -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בקר אוסטרלי מיובא, וגיו, לוין, סטייק/צלי פילה עליון, בשר וחומר שומן, דירוג שיש 9, גולמי', 'Beef, Australian, imported, Wagyu, loin, top loin steak/roast, separable lean and fat, Aust. marble score 9, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 4.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 3.0, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 1.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beef, Australian, imported, Wagyu, rib, small end rib steak/roast, boneless, separable lean and fat, Aust. marble score 4/5, raw -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בקר אוסטרלי מיובא, וגיו, צלע, סטייק/צלי צלע קטנה, חסר עצם, בשר וחומר שומן, דירוג שיש 4/5, גולמי', 'Beef, Australian, imported, Wagyu, rib, small end rib steak/roast, boneless, separable lean and fat, Aust. marble score 4/5, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 4.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 2.5, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 1.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beef, Australian, imported, Wagyu, rib, small end rib steak/roast, boneless, separable lean and fat, Aust. marble score 9, raw -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בקר אוסטרלי מיובא, וגיו, צלע, סטייק/צלי צלע קטנה, חסר עצם, בשר וחומר שומן, דירוג שיש 9, גולמי', 'Beef, Australian, imported, Wagyu, rib, small end rib steak/roast, boneless, separable lean and fat, Aust. marble score 9, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 4.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 3.0, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 1.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beef, Australian, imported, Wagyu, rib, small end rib steak/roast, boneless, separable lean only, Aust. marble score 4/5, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בקר אוסטרלי מיובא, וגיו, צלע, סטייק/צלי צלע קטנה, חסר עצם, בשר צלול בלבד, דירוג שיש 4/5, גולמי', 'Beef, Australian, imported, Wagyu, rib, small end rib steak/roast, boneless, separable lean only, Aust. marble score 4/5, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 3.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 2.0, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beef, Australian, imported, Wagyu, rib, small end rib steak/roast, boneless, separable lean only, Aust. marble score 9, raw -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בקר אוסטרלי מיובא, וגיו, צלע, סטייק/צלי צלע קטנה, חסר עצם, בשר צלול בלבד, דירוג שיש 9, גולמי', 'Beef, Australian, imported, Wagyu, rib, small end rib steak/roast, boneless, separable lean only, Aust. marble score 9, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 4.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 2.5, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 1.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beef, Australian, imported, Wagyu, seam fat, Aust. marble score 4/5, raw -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בקר אוסטרלי מיובא, וגיו, שומן תפר, דירוג שיש 4/5, גולמי', 'Beef, Australian, imported, Wagyu, seam fat, Aust. marble score 4/5, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 7.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 4.5, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 2.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beef, Australian, imported, Wagyu, seam fat, Aust. marble score 9, raw -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בקר אוסטרלי מיובא, וגיו, שומן תפר, דירוג שיש 9, גולמי', 'Beef, Australian, imported, Wagyu, seam fat, Aust. marble score 9, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 7.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 4.5, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 2.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beef, Australian, imported, grass-fed, external fat, raw -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בקר אוסטרלי מיובא, דישון, שומן חיצוני, גולמי', 'Beef, Australian, imported, grass-fed, external fat, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 6.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 4.0, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 2.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beef, Australian, imported, grass-fed, ground, 85% lean / 15% fat, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בקר אוסטרלי מיובא, דישון, טחון, 85% בשר צלול / 15% שומן, גולמי', 'Beef, Australian, imported, grass-fed, ground, 85% lean / 15% fat, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 3.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 2.0, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beef, Australian, imported, grass-fed, loin, tenderloin steak/roast, boneless, separable lean and fat, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בקר אוסטרלי מיובא, דישון, לוין, סטייק/צלי פילה, חסר עצם, בשר וחומר שומן, גולמי', 'Beef, Australian, imported, grass-fed, loin, tenderloin steak/roast, boneless, separable lean and fat, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beef, Australian, imported, grass-fed, loin, tenderloin steak/roast, boneless, separable lean only, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בקר אוסטרלי מיובא, דישון, לוין, סטייק/צלי פילה, חסר עצם, בשר צלול בלבד, גולמי', 'Beef, Australian, imported, grass-fed, loin, tenderloin steak/roast, boneless, separable lean only, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beef, Australian, imported, grass-fed, loin, top loin steak/roast, boneless, separable lean and fat, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בקר אוסטרלי מיובא, דישון, לוין, סטייק/צלי פילה עליון, חסר עצם, בשר וחומר שומן, גולמי', 'Beef, Australian, imported, grass-fed, loin, top loin steak/roast, boneless, separable lean and fat, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 2.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.5, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beef, Australian, imported, grass-fed, loin, top loin steak/roast, boneless, separable lean only, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בקר אוסטרלי מיובא, דישון, לוין, סטייק/צלי פילה עליון, חסר עצם, בשר צלול בלבד, גולמי', 'Beef, Australian, imported, grass-fed, loin, top loin steak/roast, boneless, separable lean only, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beef, Australian, imported, grass-fed, loin, top sirloin cap-off steak/roast, boneless, separable lean and fat, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בקר אוסטרלי מיובא, דישון, לוין, סטייק/צלי סירלוין עליון, חסר עצם, בשר וחומר שומן, גולמי', 'Beef, Australian, imported, grass-fed, loin, top sirloin cap-off steak/roast, boneless, separable lean and fat, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beef, Australian, imported, grass-fed, loin, top sirloin cap-off steak/roast, boneless, separable lean only, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בקר אוסטרלי מיובא, דישון, לוין, סטייק/צלי סירלוין עליון, חסר עצם, בשר צלול בלבד, גולמי', 'Beef, Australian, imported, grass-fed, loin, top sirloin cap-off steak/roast, boneless, separable lean only, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beef, Australian, imported, grass-fed, rib, ribeye steak/roast lip-on, boneless, separable lean and fat, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בקר אוסטרלי, דשא, צלע ריב אי, בלי עצם, עם שומן, חי', 'Beef, Australian, imported, grass-fed, rib, ribeye steak/roast lip-on, boneless, separable lean and fat, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 2.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.5, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beef, Australian, imported, grass-fed, rib, ribeye steak/roast lip-on, boneless, separable lean only, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בקר אוסטרלי, דשא, צלע ריב אי, בלי עצם, רזה, חי', 'Beef, Australian, imported, grass-fed, rib, ribeye steak/roast lip-on, boneless, separable lean only, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beef, Australian, imported, grass-fed, round, bottom round steak/roast, boneless, separable lean and fat, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בקר אוסטרלי, דשא, עגול תחתון, בלי עצם, עם שומן, חי', 'Beef, Australian, imported, grass-fed, round, bottom round steak/roast, boneless, separable lean and fat, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beef, Australian, imported, grass-fed, round, bottom round steak/roast, boneless, separable lean only, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בקר אוסטרלי, דשא, עגול תחתון, בלי עצם, רזה, חי', 'Beef, Australian, imported, grass-fed, round, bottom round steak/roast, boneless, separable lean only, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beef, Australian, imported, grass-fed, round, top round cap-off steak/roast, boneless, separable lean and fat, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בקר אוסטרלי, דשא, עגול עליון, בלי עצם, עם שומן, חי', 'Beef, Australian, imported, grass-fed, round, top round cap-off steak/roast, boneless, separable lean and fat, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beef, Australian, imported, grass-fed, round, top round cap-off steak/roast, boneless, separable lean only, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בקר אוסטרלי, דשא, עגול עליון, בלי עצם, רזה, חי', 'Beef, Australian, imported, grass-fed, round, top round cap-off steak/roast, boneless, separable lean only, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beef, Australian, imported, grass-fed, seam fat, raw -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בקר אוסטרלי, דשא, שומן תפר, חי', 'Beef, Australian, imported, grass-fed, seam fat, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 6.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 4.0, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 2.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beef, New Zealand, imported, bolar blade, separable lean and fat, cooked, fast roasted
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בקר ניו זילנד, כתף בולר, עם שומן, צלוי מהיר', 'Beef, New Zealand, imported, bolar blade, separable lean and fat, cooked, fast roasted', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 2.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.5, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beef, New Zealand, imported, bolar blade, separable lean and fat, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בקר ניו זילנד, כתף בולר, עם שומן, חי', 'Beef, New Zealand, imported, bolar blade, separable lean and fat, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beef, New Zealand, imported, bolar blade, separable lean only, cooked, fast roasted
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בקר ניו זילנד, כתף בולר, רזה, צלוי מהיר', 'Beef, New Zealand, imported, bolar blade, separable lean only, cooked, fast roasted', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 2.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.5, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beef, New Zealand, imported, bolar blade, separable lean only, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בקר ניו זילנד, כתף בולר, רזה, חי', 'Beef, New Zealand, imported, bolar blade, separable lean only, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beef, New Zealand, imported, brisket navel end, separable lean and fat, cooked, braised -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בקר ניו זילנד, חזה קצה טבור, עם שומן, מבושל', 'Beef, New Zealand, imported, brisket navel end, separable lean and fat, cooked, braised', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 5.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 3.5, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 2.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beef, New Zealand, imported, brisket navel end, separable lean and fat, raw -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בקר ניו זילנד, חזה קצה טבור, עם שומן, חי', 'Beef, New Zealand, imported, brisket navel end, separable lean and fat, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 4.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 2.5, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 1.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beef, New Zealand, imported, brisket navel end, separable lean only, cooked, braised
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בקר ניו זילנד, חזה קצה טבור, רזה, מבושל', 'Beef, New Zealand, imported, brisket navel end, separable lean only, cooked, braised', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 3.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 2.0, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beef, New Zealand, imported, brisket navel end, separable lean only, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בקר ניו זילנד, חזה קצה טבור, רזה, חי', 'Beef, New Zealand, imported, brisket navel end, separable lean only, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 2.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.5, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beef, New Zealand, imported, brisket point end, separable lean and fat, cooked, braised
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בקר ניו זילנד, חזה קצה נקודה, עם שומן, מבושל', 'Beef, New Zealand, imported, brisket point end, separable lean and fat, cooked, braised', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 3.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 2.0, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beef, New Zealand, imported, brisket point end, separable lean and fat, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בקר ניו זילנד, חזה קצה נקודה, עם שומן, חי', 'Beef, New Zealand, imported, brisket point end, separable lean and fat, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beef, New Zealand, imported, brisket point end, separable lean only, cooked, braised
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בקר ניו זילנד, חזה קצה נקודה, רזה, מבושל', 'Beef, New Zealand, imported, brisket point end, separable lean only, cooked, braised', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 2.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.5, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beef, New Zealand, imported, brisket point end, separable lean only, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בקר ניו זילנד, חזה קצה נקודה, רזה, חי', 'Beef, New Zealand, imported, brisket point end, separable lean only, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beef, New Zealand, imported, chuck eye roll, separable lean and fat, cooked, braised
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בקר ניו זילנד, עיני כתף גלגל, עם שומן, מבושל', 'Beef, New Zealand, imported, chuck eye roll, separable lean and fat, cooked, braised', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 3.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 2.0, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beef, New Zealand, imported, chuck eye roll, separable lean and fat, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בקר ניו זילנד, עיני כתף גלגל, עם שומן, חי', 'Beef, New Zealand, imported, chuck eye roll, separable lean and fat, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 2.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.5, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beef, New Zealand, imported, chuck eye roll, separable lean only, cooked, braised
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בקר ניו זילנד, עיני כתף גלגל, רזה, מבושל', 'Beef, New Zealand, imported, chuck eye roll, separable lean only, cooked, braised', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 2.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.5, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beef, New Zealand, imported, chuck eye roll, separable lean only, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בקר ניו זילנד, עיני כתף גלגל, רזה, חי', 'Beef, New Zealand, imported, chuck eye roll, separable lean only, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beef, New Zealand, imported, cube roll, separable lean and fat, cooked, fast roasted
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בקר ניו זילנד, קוביה רול, עם שומן, צלוי מהיר', 'Beef, New Zealand, imported, cube roll, separable lean and fat, cooked, fast roasted', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 3.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 2.0, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beef, New Zealand, imported, cube roll, separable lean and fat, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בקר ניו זילנד, קוביה רול, עם שומן, חי', 'Beef, New Zealand, imported, cube roll, separable lean and fat, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 2.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.5, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beef, New Zealand, imported, cube roll, separable lean only, cooked, fast roasted
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בקר ניו זילנד, קוביה רול, רזה, צלוי מהיר', 'Beef, New Zealand, imported, cube roll, separable lean only, cooked, fast roasted', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 3.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 2.0, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beef, New Zealand, imported, cube roll, separable lean only, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בקר ניו זילנד, קוביה רול, רזה, חי', 'Beef, New Zealand, imported, cube roll, separable lean only, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beef, New Zealand, imported, eye round, separable lean and fat, cooked, slow roasted
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בקר ניו זילנד, עיני עגול, עם שומן, צלוי איטי', 'Beef, New Zealand, imported, eye round, separable lean and fat, cooked, slow roasted', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 2.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.5, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beef, New Zealand, imported, eye round, separable lean and fat, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בקר ניו זילנד, עיני עגול, עם שומן, חי', 'Beef, New Zealand, imported, eye round, separable lean and fat, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beef, New Zealand, imported, eye round, separable lean only, cooked, slow roasted
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בקר ניו זילנד, עיני עגול, רזה, צלוי איטי', 'Beef, New Zealand, imported, eye round, separable lean only, cooked, slow roasted', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beef, New Zealand, imported, eye round, separable lean only, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בקר ניו זילנד מיובא, עיין רונד, חלק רזה בלבד, גולמי', 'Beef, New Zealand, imported, eye round, separable lean only, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beef, New Zealand, imported, flank, separable lean and fat, cooked, braised
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בקר ניו זילנד מיובא, פלנק, חלק רזה ושומן, מבושל בדום', 'Beef, New Zealand, imported, flank, separable lean and fat, cooked, braised', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 2.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.5, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beef, New Zealand, imported, flank, separable lean and fat, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בקר ניו זילנד מיובא, פלנק, חלק רזה ושומן, גולמי', 'Beef, New Zealand, imported, flank, separable lean and fat, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beef, New Zealand, imported, flank, separable lean only, cooked, braised
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בקר ניו זילנד מיובא, פלנק, חלק רזה בלבד, מבושל בדום', 'Beef, New Zealand, imported, flank, separable lean only, cooked, braised', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 2.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.5, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beef, New Zealand, imported, flank, separable lean only, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בקר ניו זילנד מיובא, פלנק, חלק רזה בלבד, גולמי', 'Beef, New Zealand, imported, flank, separable lean only, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beef, New Zealand, imported, flat, separable lean and fat, cooked, braised
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בקר ניו זילנד מיובא, פלטה, חלק רזה ושומן, מבושל בדום', 'Beef, New Zealand, imported, flat, separable lean and fat, cooked, braised', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 3.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 2.0, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beef, New Zealand, imported, flat, separable lean and fat, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בקר ניו זילנד מיובא, פלטה, חלק רזה ושומן, גולמי', 'Beef, New Zealand, imported, flat, separable lean and fat, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 2.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.5, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beef, New Zealand, imported, flat, separable lean only, cooked, braised
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בקר ניו זילנד מיובא, פלטה, חלק רזה בלבד, מבושל בדום', 'Beef, New Zealand, imported, flat, separable lean only, cooked, braised', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 2.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.5, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beef, New Zealand, imported, flat, separable lean only, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בקר ניו זילנד מיובא, פלטה, חלק רזה בלבד, גולמי', 'Beef, New Zealand, imported, flat, separable lean only, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beef, New Zealand, imported, hind shin, separable lean and fat, cooked, braised
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בקר ניו זילנד מיובא, שוק אחורי, חלק רזה ושומן, מבושל בדום', 'Beef, New Zealand, imported, hind shin, separable lean and fat, cooked, braised', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 2.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.5, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beef, New Zealand, imported, hind shin, separable lean and fat, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בקר ניו זילנד מיובא, שוק אחורי, חלק רזה ושומן, גולמי', 'Beef, New Zealand, imported, hind shin, separable lean and fat, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beef, New Zealand, imported, hind shin, separable lean only, cooked, braised
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בקר ניו זילנד מיובא, שוק אחורי, חלק רזה בלבד, מבושל בדום', 'Beef, New Zealand, imported, hind shin, separable lean only, cooked, braised', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 2.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.5, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beef, New Zealand, imported, hind shin, separable lean only, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בקר ניו זילנד מיובא, שוק אחורי, חלק רזה בלבד, גולמי', 'Beef, New Zealand, imported, hind shin, separable lean only, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beef, New Zealand, imported, inside, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בקר ניו זילנד מיובא, פנים, גולמי', 'Beef, New Zealand, imported, inside, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beef, New Zealand, imported, intermuscular fat, cooked -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בקר ניו זילנד מיובא, שומן בין שרירי, מבושל', 'Beef, New Zealand, imported, intermuscular fat, cooked', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 6.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 4.0, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 2.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beef, New Zealand, imported, intermuscular fat, raw -- NEEDS_REVIEW
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בקר ניו זילנד מיובא, שומן בין שרירי, גולמי', 'Beef, New Zealand, imported, intermuscular fat, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 7.0::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 4.5, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 2.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beef, New Zealand, imported, knuckle, cooked, fast fried
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בקר ניו זילנד מיובא, נקל, מטוגן במהירות', 'Beef, New Zealand, imported, knuckle, cooked, fast fried', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 2.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.5, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beef, New Zealand, imported, manufacturing beef, cooked, boiled
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בקר ניו זילנד מיובא, בשר ייצור, מבושל בחום', 'Beef, New Zealand, imported, manufacturing beef, cooked, boiled', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beef, New Zealand, imported, manufacturing beef, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בקר ניו זילנד מיובא, בשר ייצור, גולמי', 'Beef, New Zealand, imported, manufacturing beef, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beef, New Zealand, imported, oyster blade, separable lean and fat, cooked, braised
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בקר ניו זילנד מיובא, חלה, חלק רזה ושומן, מבושל בדום', 'Beef, New Zealand, imported, oyster blade, separable lean and fat, cooked, braised', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 2.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.5, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beef, New Zealand, imported, oyster blade, separable lean and fat, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בקר ניו זילנד מיובא, חלה, חלק רזה ושומן, גולמי', 'Beef, New Zealand, imported, oyster blade, separable lean and fat, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 2.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.5, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beef, New Zealand, imported, oyster blade, separable lean only, cooked, braised
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בקר ניו זילנד מיובא, חלה, חלק רזה בלבד, מבושל בדום', 'Beef, New Zealand, imported, oyster blade, separable lean only, cooked, braised', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 2.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.5, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beef, New Zealand, imported, oyster blade, separable lean only, raw
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בקר ניו זילנד מיובא, חלה, חלק רזה בלבד, גולמי', 'Beef, New Zealand, imported, oyster blade, separable lean only, raw', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 1.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.0, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 0.5, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);
-- [PROTEIN] Beef, New Zealand, imported, ribs prepared, cooked, fast roasted
WITH f AS (
  INSERT INTO public.foods (name_he, name_en, category, star_type, source)
  VALUES ('בקר ניו זילנד מיובא, צלעות מוכנות, צלוי במהירות', 'Beef, New Zealand, imported, ribs prepared, cooked, fast roasted', 'protein', 'yellow', 'ai_agent')
  RETURNING id
)
INSERT INTO public.food_portions (food_id, label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order)
SELECT f.id, vals.label_he, vals.label_en, vals.grams, vals.yellow_stars, vals.red_stars, vals.is_default, vals.sort_order
FROM f, (VALUES
  ('מנה (150 גרם)'::text, '1 serving (150g)'::text, 150.0::numeric, 2.5::numeric, 0.0::numeric, true::boolean, 1::integer),
  ('100 גרם', '100g', 100.0, 1.5, 0.0, false, 2),
  ('50 גרם', '50g', 50.0, 1.0, 0.0, false, 3)
) AS vals(label_he, label_en, grams, yellow_stars, red_stars, is_default, sort_order);

COMMIT;
