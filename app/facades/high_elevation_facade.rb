class HighElevationFacade
  class << self
    def adjust_ingredient(ingredient, elevation)
      if ingredient.title.downcase.include?("sugar") && ingredient.unit.include?("cup")
        "#{ingredient.quantity} #{ingredient.unit} #{ingredient.adjusted_sugar(ingredient, elevation)}"
      elsif ingredient.title.downcase.include?("flour") && ingredient.unit.include?("cup")
        "#{ingredient.quantity} #{ingredient.unit} #{ingredient.adjusted_flour(ingredient)}"
      elsif ingredient.title.downcase.include?("baking") && (ingredient.title.downcase.include?("soda") || ingredient.title.downcase.include?("powder"))
        "#{ingredient.adjusted_leavening(ingredient, elevation)} #{ingredient.unit}"
      else
        "#{ingredient.quantity} #{ingredient.unit}"
      end
    end
  end
end
