class HighElevationFacade
  class << self
    def adjust_recipe(recipes)
      recipes.ingredients.adjusted_math
    end
  end
end
