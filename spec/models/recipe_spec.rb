require 'rails_helper'

RSpec.describe Recipe do
  describe 'validations' do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:description) }
    it { should validate_presence_of(:cook_time) }
    it { should validate_presence_of(:category) }
  end

  describe 'relationships' do
    it { should have_many(:images) }
    it { should have_many(:ingredients) }
  end
end
