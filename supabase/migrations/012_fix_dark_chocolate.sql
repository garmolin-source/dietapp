-- Fix dark chocolate: star_type should be 'red' (carb/sweet group), not 'yellow'
UPDATE public.foods
SET star_type = 'red'
WHERE name_en ILIKE '%dark chocolate%'
  AND star_type = 'yellow';

-- Move yellow_stars → red_stars on all portions of the corrected foods
UPDATE public.food_portions fp
SET
  red_stars   = fp.yellow_stars,
  yellow_stars = 0
FROM public.foods f
WHERE fp.food_id = f.id
  AND f.name_en ILIKE '%dark chocolate%'
  AND f.star_type = 'red'
  AND fp.yellow_stars > 0;
