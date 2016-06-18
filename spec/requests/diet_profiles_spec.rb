require 'rails_helper'

RSpec.describe "DietProfiles", type: :request do

  describe 'GET /diet_profiles' do
    it 'returns successfully' do
      get diet_profiles_path
      expect(response).to have_http_status(200)
    end

    context 'diet profiles exist' do
      before { FactoryGirl.create_list :diet_profile, 5 }

      it 'returns all of the diet profiles' do
        get diet_profiles_path
        parsed_response = JSON.parse response.body
        expect(parsed_response.length).to eq(5)
      end

      it 'returns id' do
        get diet_profiles_path
        parsed_response = JSON.parse response.body
        expect(parsed_response.first).to have_key 'id'
      end

      it 'returns name' do
        get diet_profiles_path
        parsed_response = JSON.parse response.body
        expect(parsed_response.first).to have_key 'name'
      end

    end

  end
end
