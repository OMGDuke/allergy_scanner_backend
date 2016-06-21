require 'rails_helper'

RSpec.describe "UserProfiles", type: :request do

  describe 'GET /user_ingredients' do
    it 'returns successfully' do
      get user_ingredients_path
      expect(response).to have_http_status(200)
    end

    context 'user ingredient profiles exist' do
      before do
        FactoryGirl.create_list :user_ingredient, 5
        FactoryGirl.create_list :user, 1
        # user = build(:user)
        get user_ingredients_path
      end

      it 'returns all of the user profiles' do
        expect(parse_json_response.length).to eq 5 # might need to change that 
      end

      it 'returns id' do
        expect(parse_json_response.first).to have_key 'id'
      end

      it 'returns ingredients' do
        expect(parse_json_response.first).to have_key 'ingredient_id'
      end

      it 'returns ingredient ids' do
        expect(parse_json_response.first['ingredients'].first).to have_key 'id'
      end

      # it 'returns ingredient names' do
      #   expect(parse_json_response.first['ingredients'].first).to have_key 'name'
      # end

    end

  end
end
