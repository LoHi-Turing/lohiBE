class Api::V1::RecipesController < ApplicationController
  def index
    recipes = Recipe.all
    if params[:elevation].to_i < 5000
      render json: RecipeSerializer.new(recipes)
    else
      render json: RecipeHighSerializer.new(recipes)
    end
  end
end
