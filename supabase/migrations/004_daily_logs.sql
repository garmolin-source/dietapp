-- Daily food logs
CREATE TABLE public.daily_logs (
  id                    uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
  user_id               uuid NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  log_date              date NOT NULL,
  meal_type             text NOT NULL CHECK (meal_type IN ('breakfast','lunch','dinner','snack')),
  food_id               uuid NOT NULL REFERENCES public.foods(id),
  portion_id            uuid NOT NULL REFERENCES public.food_portions(id),
  quantity              numeric(5,2) NOT NULL DEFAULT 1.0,
  yellow_stars_consumed numeric(5,1) NOT NULL DEFAULT 0,
  red_stars_consumed    numeric(5,1) NOT NULL DEFAULT 0,
  created_at            timestamptz NOT NULL DEFAULT now()
);

-- Composite index for efficient daily log queries
CREATE INDEX daily_logs_user_date_idx ON public.daily_logs (user_id, log_date);
