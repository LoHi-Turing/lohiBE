class Recipe < ApplicationRecord
  has_many :ingredients
  has_many :images

  validates :category, presence: true
  validates :title, presence: true
  validates :description, presence: true
  validates :cook_time, presence: true
end
