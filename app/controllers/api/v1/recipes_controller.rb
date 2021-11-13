class Api::V1::RecipesController < ApplicationController
  def index
    recipes = Recipe.all
    if params[:elevation].to_i < 3500
      render json: RecipeSerializer.new(recipes)
    else
      render json: RecipeHighSerializer.new(recipes, {params: {elevation: params[:elevation]}})
    end
  end

  def create
    recipe = Recipe.create(recipe_params)
    if params[:ingredients]
      params[:ingredients].each do |ingredient|
        recipe.ingredients.create(title: ingredient[:title], quantity: ingredient[:quantity], unit: ingredient[:unit])
      end
    end
    render json: RecipeSerializer.new(recipe)
  end

  private

  def recipe_params
    params.permit(:title, :category, :cook_time, description: [])
  end
end
