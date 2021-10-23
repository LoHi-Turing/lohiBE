class RecipeSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :description, :category, :cook_time

  attributes :ingredients do |object|
    object.ingredients.map do |ingredient|
      hash = {}
      hash[ingredient.title] = "#{ingredient.quantity} #{ingredient.unit}"
      hash
    end
  end

  attributes :images do |object|
    object.images.map do |image|
      image.recipe_image_url
    end
  end
end
