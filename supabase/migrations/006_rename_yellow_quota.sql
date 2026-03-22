-- Rename yellow_quota to total_quota to match Diet Angel system
-- The quota model is: total_quota = total daily stars (yellow + red combined)
--                     red_quota   = carb sub-quota (how many of total are carbs)
-- Per the PDF:
--   Women, lose weight:  total=12, red=3
--   Women, maintain:     total=15, red=5
--   Men,   lose weight:  total=15, red=5
--   Men,   maintain:     total=18, red=7

ALTER TABLE public.user_profiles
  RENAME COLUMN yellow_quota TO total_quota;

ALTER TABLE public.user_profiles
  ALTER COLUMN total_quota SET DEFAULT 12;

ALTER TABLE public.user_profiles
  ALTER COLUMN red_quota SET DEFAULT 3;
