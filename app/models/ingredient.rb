class Ingredient < ApplicationRecord
  belongs_to :recipe

  validates :quantity, presence: true
  validates :title, presence: true
  validates :unit, presence: true
  validates :recipe_id, presence: true

  def adjusted_sugar(sugar, elevation)
    if elevation.to_i >= 5000
      tbsp = sugar.quantity.to_f + (sugar.quantity.to_f * (((elevation.to_i.round(-3) - 5000) / 1000) * 0.5))
    else
      tbsp = sugar.quantity.to_f
    end
    "- #{tbsp} tablespoons"
  end

  def adjusted_leavening(ingredient, elevation)
    if elevation.to_i >= 6000
      reduction = ingredient.quantity.to_f - (ingredient.quantity.to_f.round * 0.25)
    else
      reduction = ingredient.quantity.to_f - (ingredient.quantity.to_f.round * 0.125)
    end
    ingredient.quantity = reduction.to_r.divmod(1).split(",").join(" ").to_s
    ingredient.quantity.delete_prefix("0 ")
  end

  def adjusted_flour(flour)
    tbsp = flour.quantity.to_f
    "+ #{tbsp} tablespoons"
  end
end
