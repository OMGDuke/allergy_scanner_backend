require 'rails_helper'

RSpec.describe "DietProfiles", type: :request do

  let(:nut_allergy_profile) { create :diet_profile }
  describe 'GET /diet_profiles' do
    it 'returns successfully' do
      get diet_profiles_path
      expect(response).to have_http_status(200)
    end

    it 'returns all of the diet profiles' do
      get diet_profiles_path
      json = JSON.parse response.body
      expect(json.length).to eq(1)
    end
  end
end
