require 'rails_helper'

describe 'locations' do
  describe 'get request', :vcr do
    it 'can return elevation and humidity for a given location (valid)' do
      loc = "80030"

      get "/api/v1/location?location=#{loc}"

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
      expect(trip[:attributes][:city]).to be_a(String)
      expect(trip[:attributes][:city]).to eq("Westminster")
      expect(trip[:attributes][:state]).to be_a(String)
      expect(trip[:attributes][:state]).to eq("CO")
    end

    it 'can return error for invalid location' do
      loc = "7"

      get "/api/v1/location?location=#{loc}"

      expect(response).to_not be_successful
      expect(response.status).to eq(404)

      error = JSON.parse(response.body, symbolize_names: true)

      expect(error).to be_a(Hash)
      expect(error).to have_key(:errors)
      expect(error[:errors]).to have_key(:status)
      expect(error[:errors][:status]).to eq("Not Valid")
      expect(error[:errors]).to have_key(:message)
      expect(error[:errors][:message]).to eq("Location is not valid")
      expect(error[:errors]).to have_key(:code)
      expect(error[:errors][:code]).to eq(404)
    end
  end
end
