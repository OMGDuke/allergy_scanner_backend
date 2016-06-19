require 'rails_helper'

RSpec.describe "DietProfiles", type: :request do

  describe 'GET /diet_profiles' do
    it 'returns successfully' do
      get diet_profiles_path
      expect(response).to have_http_status(200)
    end

    context 'diet profiles exist' do
      before do
        FactoryGirl.create_list :diet_profile_with_ingredients, 5
        get diet_profiles_path
      end

      it 'returns all of the diet profiles' do
        expect(parse_json_response.length).to eq 5
      end

      it 'returns id' do
        expect(parse_json_response.first).to have_key 'id'
      end

      it 'returns name' do
        expect(parse_json_response.first).to have_key 'name'
      end

      it 'returns ingredients' do
        expect(parse_json_response.first).to have_key 'ingredients'
      end

      it 'returns ingredient ids' do
        expect(parse_json_response.first['ingredients'].first).to have_key 'id'
      end

      it 'returns ingredient names' do
        expect(parse_json_response.first['ingredients'].first).to have_key 'name'
      end

    end

  end
end
