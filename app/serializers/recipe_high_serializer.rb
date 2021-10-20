class RecipeHighSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :description, :category, :cook_time

  attributes :ingredients do |object|
    object.ingredients.map do |ingredient|
      if ingredient.title.downcase.include?('sugar') && ingredient.unit.include?('cup')
        "#{ingredient.title}: #{ingredient.adjusted_sugar(ingredient)} #{ingredient.unit}"
      elsif ingredient.title.downcase.include?('flour') && ingredient.unit.include?('cup')
        "#{ingredient.title}: #{ingredient.adjusted_flour(ingredient)} #{ingredient.unit}"
      elsif ingredient.title.downcase.include?('baking') && ingredient.title.downcase.include?('soda')
        "#{ingredient.title}: #{ingredient.adjusted_baking_soda(ingredient)} #{ingredient.unit}"
      elsif ingredient.title.downcase.include?('baking') && ingredient.title.downcase.include?('powder')
        "#{ingredient.title}: #{ingredient.adjusted_baking_powder(ingredient)} #{ingredient.unit}"
      else
        "#{ingredient.title}: #{ingredient.quantity} #{ingredient.unit}"
      end
    end
  end
end
