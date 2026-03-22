-- Add gender to user_profiles for accurate quota recommendations
-- Per Diet Angel PDF:
--   Women lose:     total=12, red=3
--   Women maintain: total=15, red=5
--   Men    lose:    total=15, red=5
--   Men    maintain: total=18, red=7

ALTER TABLE public.user_profiles
  ADD COLUMN IF NOT EXISTS gender text CHECK (gender IN ('female', 'male'));
