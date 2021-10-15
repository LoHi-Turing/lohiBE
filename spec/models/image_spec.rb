require 'rails_helper'

RSpec.describe Image do
  describe 'validations' do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:recipe_id) }
  end

  describe 'relationships' do
    it { should belong_to(:recipe) }
    it { should have_one_attached(:recipe_image) }
  end
end
