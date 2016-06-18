require 'rails_helper'

RSpec.describe "DietProfiles", type: :request do

  describe 'GET /diet_profiles' do
    it 'returns successfully' do
      get diet_profiles_path
      expect(response).to have_http_status(200)
    end

    it 'returns all of the diet profiles' do
      FactoryGirl.create_list :diet_profile, 5
      get diet_profiles_path
      parsed_response = JSON.parse response.body
      p parsed_response
      expect(parsed_response.length).to eq(5)
    end
  end
end
