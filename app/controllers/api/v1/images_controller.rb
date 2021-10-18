class Api::V1::ImagesController < ApplicationController

  def create
    blob = image_params[:blob]
    params = image_params.except(:blob)
    image = Image.create(params)
    image.recipe_image.attach(blob) if blob.present? && !!image
    render json: ImageSerializer.new(image)
  end

  private

  def image_params
    params.permit(:title, :recipe_id, :blob)
  end
end
