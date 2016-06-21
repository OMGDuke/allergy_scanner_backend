require 'rails_helper'

RSpec.describe "UserIngredients", type: :request do
  describe "POST /users/:id/ingredients" do
    let(:user) { FactoryGirl.create :user }
    let(:ingredients) { FactoryGirl.create_list :ingredient, 5 }
    let(:path) { "/users/#{user.id}/ingredients" }
    let(:valid_request) do
        {
        ingredients: [
          { id: ingredients[0].id },
          { id: ingredients[1].id },
          { id: ingredients[2].id },
          { id: ingredients[3].id },
          { id: ingredients[4].id }
        ]
      }
    end

    context 'correct format' do

      it "returns a successful json string with success message" do
        post path, valid_request
        expect(response).to be_success
        expect(parse_json_response['message']).to eq 'Ingredients saved to user profile'
      end

      it 'creates the records in the database' do
        expect{ post path, valid_request }.to change{ user.ingredients.count }.by 5
      end

    end
  end

  describe "GET /users/:id/ingredients" do
    let(:user) { FactoryGirl.create :user_with_ingredients }
    let(:path) { "/users/#{user.id}/ingredients" }

    it "returns successfully" do
      get path
      expect(response).to have_http_status 200
    end

    context 'user has ingredients saved' do
      it 'returns all of the users ingredients' do
        get path
        p parse_json_response
        expect(parse_json_response.length).to eq 5
      end
    end
  end

end



















