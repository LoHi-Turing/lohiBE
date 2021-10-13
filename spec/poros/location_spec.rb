require 'rails_helper'

RSpec.describe 'Location PORO' do
  it 'exists' do

    location = "Denver,Co"
    elevation = 1617
    humidity = 26

    x = Location.new(location, elevation, humidity)

    expect(x).to be_a(Location)
    expect(x.location).to eq("Denver,Co")
    expect(x.elevation).to eq(1617)
    expect(x.humidity).to eq(26)
  end
end
