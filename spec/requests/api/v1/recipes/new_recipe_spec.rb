require 'rails_helper'

RSpec.describe 'New User Recipe' do
  describe 'post request' do
    it 'can store a recipe in the database' do

      post "/api/v1/recipes", params: {
        title: "Brownies",
        description: ["Step 1", "Step 2", "Step 3"],
        category: "Cookies",
        cook_time: "45 MINUTES",
        ingredients: [{title: 'sugar', quantity: '1', unit: 'cups'}, {title: 'chocolate', quantity: '1', unit: 'cups'}]
      }

      new_recipe = JSON.parse(response.body, symbolize_names: true)

      expect(response).to be_successful
      expect(Recipe.last.title).to eq("Brownies")
      expect(Recipe.last.description).to eq(["Step 1", "Step 2", "Step 3"])
      expect(Recipe.last.category).to eq("Cookies")
      expect(Recipe.last.cook_time).to eq("45 MINUTES")

      expect(Recipe.last.ingredients[0].title). to eq('sugar')
      expect(Recipe.last.ingredients[0].quantity). to eq('1')
      expect(Recipe.last.ingredients[0].unit). to eq('cups')
    end
  end
end
