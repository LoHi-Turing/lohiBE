class Recipe < ApplicationRecord
  has_many :ingredients, dependent: :destroy
  has_many :images, dependent: :destroy

  validates :category, presence: true
  validates :title, presence: true
  validates :description, presence: true
  validates :cook_time, presence: true
end
