class Ingredient < ApplicationRecord
  belongs_to :recipe

  validates :quantity, presence: true
  validates :title, presence: true
  validates :unit, presence: true
  validates :recipe_id, presence: true

  def adjusted_sugar(sugar)
    tbsp = sugar.quantity.to_f
    "- #{tbsp} tablespoons"
  end

  def adjusted_leavening(ingredient)
    reduction = ingredient.quantity.to_f - (ingredient.quantity.to_f.round * 0.125)
    ingredient.quantity = reduction.to_r.divmod(1).split(",").join(" ").to_s
    ingredient.quantity.delete_prefix("0 ")
  end

  def adjusted_flour(flour)
    tbsp = flour.quantity.to_f
    "+ #{tbsp} tablespoons"
  end
end
