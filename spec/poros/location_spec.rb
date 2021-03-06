require 'rails_helper'

RSpec.describe 'Location PORO' do
  it 'exists' do

    location = "Denver,Co"
    elevation = 1617
    humidity = 26
    coord = {city: "Denver", state: "CO"}

    x = Location.new(location, elevation, humidity, coord)

    expect(x).to be_a(Location)
    expect(x.location).to eq("Denver,Co")
    expect(x.elevation).to eq(5305)
    expect(x.humidity).to eq(26)
    expect(x.state).to eq("CO")
    expect(x.city).to eq("Denver")
  end
end
