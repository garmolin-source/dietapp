-- Allow authenticated users to insert foods (for AI-generated / user-submitted foods)
CREATE POLICY "Authenticated users can insert foods"
  ON public.foods FOR INSERT
  TO authenticated
  WITH CHECK (true);

CREATE POLICY "Authenticated users can insert food_portions"
  ON public.food_portions FOR INSERT
  TO authenticated
  WITH CHECK (true);

-- Extend the source constraint to include 'user_search'
ALTER TABLE public.foods
  DROP CONSTRAINT IF EXISTS foods_source_check;

ALTER TABLE public.foods
  ADD CONSTRAINT foods_source_check
  CHECK (source IN ('manual', 'ai_agent', 'user_search'));
