require 'rails_helper'

RSpec.describe "UserIngredients", type: :request do

  let(:path) { '/user_ingredients' }
  let(:user) { FactoryGirl.create :user }
  let(:ingredients) { FactoryGirl.create_list :ingredient, 5 }
  let(:ingredient_ids) { [] }
  let(:valid_request) do
      {
      user_id: user.id,
      ingredients: [
        { id: ingredients[0].id },
        { id: ingredients[1].id },
        { id: ingredients[2].id },
        { id: ingredients[3].id },
        { id: ingredients[4].id }
      ]
    }
  end
    let(:invalid_request) do
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

  describe "POST /user_ingredients" do

    context 'incorrect format' do
      it "returns an error" do
        post path, invalid_request
        expect(response).to be_bad_request
        expect(parse_json_response['error_message']).to eq 'Ingredients not saved to user profile'
      end
    end


    context 'correct format' do

      before do
        ingredients.each { |i| ingredient_ids.push i.id }
      end

      it "returns a successful json string with success message" do
        post path, valid_request
        expect(response).to be_success
        expect(parse_json_response['message']).to eq 'Ingredients saved to user profile'
      end

      it 'creates the records in the database' do
        expect{ post path, valid_request }.to change{ UserIngredient.count }.by 5
      end

    end
  end

end
