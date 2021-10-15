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
end
