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

  attributes :images do |object|
    object.images.map do |image|
      hash = {}
      hash[:author] = image.title
      hash[:url] = image.recipe_image_url
    end
  end
end
