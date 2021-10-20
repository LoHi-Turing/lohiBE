require 'rails_helper'

describe 'recipes' do
  describe 'get request' do
    it 'returns index of recipes based on elevation(default)' do
      elevation = "1"

      get "/api/v1/recipes?elevation=#{elevation}"

      expect(response).to be_successful

      recipes = JSON.parse(response.body, symbolize_names: true)[:data]

      recipes.each do |recipe|
        expect(recipe).to be_a(Hash)
        expect(recipe).to have_key(:id)
        expect(recipe).to have_key(:type)
        expect(recipe[:type]).to eq("recipe")
        expect(recipe).to have_key(:attributes)
        expect(recipe[:attributes]).to be_a(Hash)
        expect(recipe[:attributes]).to have_key(:title)
        expect(recipe[:attributes][:title]).to be_a(String)
        expect(recipe[:attributes]).to have_key(:description)
        expect(recipe[:attributes][:description]).to be_a(Array)
        expect(recipe[:attributes]).to have_key(:category)
        expect(recipe[:attributes][:category]).to be_a(String)
        expect(recipe[:attributes]).to have_key(:cook_time)
        expect(recipe[:attributes][:cook_time]).to be_a(String)
        expect(recipe[:attributes]).to have_key(:ingredients)
        expect(recipe[:attributes][:ingredients]).to be_a(Array)
      end
    end

    it 'returns index of recipes based on elevation(default)' do
      elevation = "5000"

      get "/api/v1/recipes?elevation=#{elevation}"

      expect(response).to be_successful

      recipes = JSON.parse(response.body, symbolize_names: true)[:data]

      recipes.each do |recipe|
        expect(recipe).to be_a(Hash)
        expect(recipe).to have_key(:id)
        expect(recipe).to have_key(:type)
        expect(recipe[:type]).to eq("recipe_high")
        expect(recipe).to have_key(:attributes)
        expect(recipe[:attributes]).to be_a(Hash)
        expect(recipe[:attributes]).to have_key(:title)
        expect(recipe[:attributes][:title]).to be_a(String)
        expect(recipe[:attributes]).to have_key(:description)
        expect(recipe[:attributes][:description]).to be_a(Array)
        expect(recipe[:attributes]).to have_key(:category)
        expect(recipe[:attributes][:category]).to be_a(String)
        expect(recipe[:attributes]).to have_key(:cook_time)
        expect(recipe[:attributes][:cook_time]).to be_a(String)
        expect(recipe[:attributes]).to have_key(:ingredients)
        expect(recipe[:attributes][:ingredients]).to be_a(Array)
      end
    end
  end
end
