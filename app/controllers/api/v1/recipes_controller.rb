class Api::V1::RecipesController < ApplicationController
  def index
    recipes = Recipe.all
    if params[:elevation].to_i < 5000
      render json: RecipeSerializer.new(recipes)
    else
      adjusted_recipes = HighElevationFacade.adjust_recipe(recipes)
      render json: RecipeHighSerializer.new(adjusted_recipes)
    end
  end
end
