require 'rails_helper'

describe 'locations' do
  describe 'post request', :vcr do
    it 'can return elevation and humidity for a given location (valid)' do
      loc_params = { location: "80030" }
      headers = { "CONTENT_TYPE" => "application/json" }

      post "/api/v1/location", headers: headers, params: JSON.generate(loc_params)

      expect(response).to be_successful

      trip = JSON.parse(response.body, symbolize_names: true)[:data]

      expect(trip).to be_a(Hash)
      expect(trip).to have_key(:id)
      expect(trip).to have_key(:type)
      expect(trip[:type]).to eq("location")
      expect(trip).to have_key(:attributes)
      expect(trip[:attributes]).to be_a(Hash)
      expect(trip[:attributes]).to have_key(:elevation)
      expect(trip[:attributes][:elevation]).to be_a(Numeric)
      expect(trip[:attributes]).to have_key(:humidity)
      expect(trip[:attributes][:humidity]).to be_a(Numeric)
      expect(trip[:attributes]).to have_key(:location)
      expect(trip[:attributes][:location]).to be_a(String)
      expect(trip[:attributes][:location]).to eq("80030")
    end

    # it 'can return elevation and humidity for a given location (valid)' do
    #   loc_params = { location: "7" }
    #   headers = { "CONTENT_TYPE" => "application/json" }
    #
    #   post "/api/v1/location", headers: headers, params: JSON.generate(loc_params)
    #
    #   expect(response).to_not be_successful
    #   expect(response.status).to eq(404)
    # end
  end
end
