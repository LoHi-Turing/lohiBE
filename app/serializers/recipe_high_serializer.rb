class RecipeHighSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :description, :category, :cook_time

  attributes :ingredients do |object|
    object.ingredients.map do |ingredient|
      hash = {}
      hash[ingredient.title] = HighElevationFacade.adjust_ingredient(ingredient)
      hash
    end
  end
end
