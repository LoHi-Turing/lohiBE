require 'rails_helper'

RSpec.describe Ingredient do
  describe 'validations' do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:quantity) }
    it { should validate_presence_of(:unit) }
    it { should validate_presence_of(:recipe_id) }
  end

  describe 'relationships' do
    it { should belong_to(:recipe) }
  end

  describe '::instance methods' do
    context 'Recipes for high elevation' do
      it 'can adjust amount of sugar' do
        sugar = Ingredient.create(title: "sugar", quantity: "1", unit: "cup", recipe_id: Recipe.first.id)
        elevation = 3500

        result = sugar.adjusted_sugar(sugar, elevation)

        expect(result).to eq("- 1.0 tablespoons")
      end

      it 'can adjust the amount of leavening' do
        baking_powder = Ingredient.create(title:"Baking Powder", quantity: ".5", unit: "tablespoons", recipe_id: Recipe.first.id)
        elevation = 3500

        result = baking_powder.adjusted_leavening(baking_powder, elevation)

        expect(result).to eq("3/8")
      end

      it 'can adjust the amount of flour' do
        flour = Ingredient.create(title: "All-Purpose Flour", quantity: "2", unit: "cups", recipe_id: Recipe.first.id)

        result = flour.adjusted_flour(flour)

        expect(result).to eq("+ 2.0 tablespoons")
      end
    end
  end

end
