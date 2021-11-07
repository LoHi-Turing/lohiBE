require 'rails_helper'

RSpec.describe 'User Endpoint' do
  describe 'GET request' do
    it 'can create a new user and store their name and email' do
        user = User.create(
          name: 'Funbucket',
          email: 'Funbucket@email.com'
        )
        get "/api/v1/users/#{User.first.id}"

        user = JSON.parse(response.body, symbolize_names: true)

        expect(response).to be_successful
        expect(User.first.name).to eq('Funbucket')
        expect(User.first.email).to eq('Funbucket@email.com')
        expect(User.count).to eq(1)

        expect(user).to have_key(:data)
        expect(user[:data]).to have_key(:id)
        expect(user[:data]).to have_key(:type)
        expect(user[:data][:type]).to eq('user')
        expect(user[:data]).to have_key(:attributes)
        expect(user[:data][:attributes]).to be_a(Hash)
        expect(user[:data][:attributes]).to have_key(:name)
        expect(user[:data][:attributes]).to have_key(:email)
    end
  end
end
