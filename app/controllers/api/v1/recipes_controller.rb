class Api::V1::RecipesController < ApplicationController
  def index
    recipes = Recipe.all
    if params[:elevation].to_i < 5000
      render json: RecipeSerializer.new(recipes)
    else
      render json: RecipeHighSerializer.new(recipes)
    end
  end

  def create
    recipe = Recipe.create(recipe_params)
    render json: RecipeSerializer.new(recipe)
  end

  private

  def recipe_params
    params.permit(:title, :category, :cook_time, description: [])
  end
end
