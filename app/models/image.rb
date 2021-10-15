class Image < ApplicationRecord
  has_one_attached :recipe_image, dependent: :destroy

  belongs_to :recipe

  validates :title, presence: true
  validates :recipe_id, presence: true
end
