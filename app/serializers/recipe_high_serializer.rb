class RecipeHighSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :description, :category, :cook_time

  attributes :ingredients do |object, params|
    object.ingredients.map do |ingredient|
      hash = {}
      hash[ingredient.title] = HighElevationFacade.adjust_ingredient(ingredient, params[:elevation])
      hash
    end
  end

  attributes :images do |object|
    object.images.map do |image|
      hash = {}
      hash[:author] = image.title
      hash[:url] = image.recipe_image_url
      hash
    end
  end
end
