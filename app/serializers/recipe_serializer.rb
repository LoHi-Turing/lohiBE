class RecipeSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :description, :category, :cook_time

  attributes :ingredients do |object|
    hash = {}
    object.ingredients.map do |ingredient|
      hash[ingredient.title] = "#{ingredient.quantity} #{ingredient.unit}"
    end
    hash
  end

  attributes :images do |object|
    object.images.map do |image|
      image.recipe_image_url
    end
  end
end
