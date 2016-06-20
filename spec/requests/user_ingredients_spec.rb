require 'rails_helper'

RSpec.describe "UserIngredients", type: :request do

  let(:path) { '/user_ingredients' }
  let(:user) { FactoryGirl.create :user }
  let(:ingredients) { FactoryGirl.create_list :ingredient, 5 }
  let(:ingredient_ids) { [] }
  let(:valid_request) { { user_id: user.id, ingredients: ingredient_ids } }




  describe "POST /user_ingredients" do

    context 'correct format' do

      before do
        ingredients.each { |i| ingredient_ids.push i.id }
      end

      it "returns a successful json string with success message" do
        post path, valid_request
        expect(response).to be_success
        expect(parse_json_response['success']).to eq 'Ingredients saved to user profile'
      end

      it 'creates the record in the database' do
        # p valid_request
        expect{ post path, valid_request }.to change{ UserIngredient.count }.by 5
      end

    end
  end

end
