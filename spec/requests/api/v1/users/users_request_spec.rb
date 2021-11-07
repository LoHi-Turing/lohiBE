require 'rails_helper'

RSpec.describe 'New User Endpoint' do
  describe 'POST request' do
    it 'can create a new new_user and store their name and email' do
        post "/api/v1/users", params: {
          name: 'Funbucket',
          email: 'Funbucket@email.com'
        }

        new_user = JSON.parse(response.body, symbolize_names: true)

        expect(response).to be_successful
        expect(User.last.name).to eq('Funbucket')
        expect(User.last.email).to eq('Funbucket@email.com')
        expect(User.count).to eq(1)

        expect(new_user).to have_key(:data)
        expect(new_user[:data]).to have_key(:id)
        expect(new_user[:data]).to have_key(:type)
        expect(new_user[:data][:type]).to eq('user')
        expect(new_user[:data]).to have_key(:attributes)
        expect(new_user[:data][:attributes]).to be_a(Hash)
        expect(new_user[:data][:attributes]).to have_key(:name)
        expect(new_user[:data][:attributes]).to have_key(:email)
    end
  end
end
