require 'rails_helper'

RSpec.describe 'OpenElevation API' do
  it 'can return the elevation by latitude and longitude', :vcr do
    lat = 39.738453
    lon = -104.984853

    elevation = ElevationService.get_elevation("#{lat}", "#{lon}")
    result = JSON.parse(elevation.to_json, symbolize_names: true)

    expect(result).to be_a(Hash)
    expect(result).to have_key(:latitude)
    expect(result[:latitude]).to be_a(Numeric)
    expect(result).to have_key(:longitude)
    expect(result[:longitude]).to be_a(Numeric)
    expect(result).to have_key(:elevation)
    expect(result[:elevation]).to be_a(Numeric)
  end
end
