class Image < ApplicationRecord
  has_one_attached :recipe_image, dependent: :destroy

  belongs_to :recipe

  validates :title, presence: true
  validates :recipe_id, presence: true

  def recipe_image_url
    if recipe_image.attached?
      recipe_image.blob.service_url(expires_in: 1.week)
    end
  end
end
