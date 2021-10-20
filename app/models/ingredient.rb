class Ingredient < ApplicationRecord
  belongs_to :recipe

  validates :quantity, presence: true
  validates :title, presence: true
  validates :unit, presence: true
  validates :recipe_id, presence: true

  def adjusted_sugar(sugar)
    tbsp = sugar.quantity.to_f
    sugar.quantity = "#{sugar.quantity} - #{tbsp} tablespoons"
  end

  def adjusted_baking_powder(powder)
    reduction = powder.quantity.to_f - (powder.quantity.to_i * 0.125)
    powder.quantity = reduction.to_r.divmod(1).split(",").join(" ").to_s
  end

  def adjusted_baking_soda(soda)
    reduction = soda.quantity.to_f - (soda.quantity.to_i * 0.125)
    soda.quantity = reduction.to_r.divmod(1).split(",").join(" ").to_s
  end

  def adjusted_flour(flour)
    tbsp = flour.quantity.to_f
    flour.quantity = "#{flour.quantity} + #{tbsp} tablespoons"
  end
end
