-- Foods table
CREATE TABLE public.foods (
  id         uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
  name_he    text NOT NULL,
  name_en    text,
  category   text CHECK (category IN ('vegetable','fruit','dairy','protein','carb','fat','beverage','snack')),
  star_type  text NOT NULL CHECK (star_type IN ('yellow','red','free')),
  is_active  boolean NOT NULL DEFAULT true,
  source     text NOT NULL DEFAULT 'manual' CHECK (source IN ('manual','ai_agent')),
  created_at timestamptz NOT NULL DEFAULT now()
);

-- Food portions table
CREATE TABLE public.food_portions (
  id          uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
  food_id     uuid NOT NULL REFERENCES public.foods(id) ON DELETE CASCADE,
  label_he    text NOT NULL,
  label_en    text,
  grams       numeric(7,2),
  yellow_stars numeric(4,1) NOT NULL DEFAULT 0,
  red_stars    numeric(4,1) NOT NULL DEFAULT 0,
  is_default  boolean NOT NULL DEFAULT false,
  sort_order  integer NOT NULL DEFAULT 0,
  created_at  timestamptz NOT NULL DEFAULT now()
);

-- Indexes for full-text search on Hebrew and English names
CREATE INDEX foods_name_he_gin ON public.foods USING gin (name_he gin_trgm_ops);
CREATE INDEX foods_name_en_gin ON public.foods USING gin (name_en gin_trgm_ops);

-- Index for food_portions lookup
CREATE INDEX food_portions_food_id_idx ON public.food_portions (food_id);
