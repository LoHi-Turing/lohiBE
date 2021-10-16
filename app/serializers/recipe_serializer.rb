class RecipeSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :description, :category, :cook_time

  attributes :ingredients do |object|
    object.ingredients.map do |ingredient|
      "#{ingredient.title}: #{ingredient.quantity} #{ingredient.unit}"
    end
  end
end
