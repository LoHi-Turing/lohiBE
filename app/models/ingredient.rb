class Ingredient < ApplicationRecord
  belongs_to :recipe

  validates :quantity, presence: true
  validates :title, presence: true
  validates :unit, presence: true
  validates :recipe_id, presence: true
end
