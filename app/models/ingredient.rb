class Ingredient < ApplicationRecord
  belongs_to :recipe

  validates :quantity, presence: true
  validates :title, presence: true
  validates :unit, presence: true
  validates :recipe_id, presence: true

  def self.adjusted_math

  end

  def self.adjusted_sugar
    sugars = where('title iLIKE ? AND unit iLIKE ?', '%sugar%', '%cup%')
    sugars.map do |sugar|
      tbsp = sugar.quantity.to_f
      sugar.quantity = "#{sugar.quantity} - #{tbsp} tablespoons"
    end
  end

  def self.adjusted_baking_powder
    bak_powd = where('title iLIKE ? AND title iLIKE ?', '%baking%', '%powder%')
    bak_powd.map do |powder|
      reduction = powder.quantity.to_f - (powder.quantity.to_i * 0.125)
      powder.quantity = reduction.to_r.divmod(1).split(",").join(" ").to_s
    end
  end

  def self.adjusted_baking_soda
    bak_soda = where('title iLIKE ? AND title iLIKE ?', '%baking%', '%soda%')
    bak_soda.map do |soda|
      reduction = soda.quantity.to_f - (soda.quantity.to_i * 0.125)
      soda.quantity = reduction.to_r.divmod(1).split(",").join(" ").to_s
    end
  end

  def self.adjusted_flour
    flours = where('title iLIKE ? AND unit iLIKE ?', '%flour%', '%cup%')
    flours.map do |flour|
      tbsp = flour.quantity.to_f
      flour.quantity = "#{flour.quantity} + #{tbsp} tablespoons"
    end
  end
end
