class ImageSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :recipe_id, :recipe_image_url
end
