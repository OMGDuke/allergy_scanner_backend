require 'rails_helper'

RSpec.describe "UserIngredients", type: :request do

  let(:user) { FactoryGirl.create :user }
  let(:ingredients) { FactoryGirl.create_list :ingredient, 5 }
  let(:ingredient_ids) { [] }


  describe "POST /user_ingredients" do
    context 'correct format' do
      it "returns a successful json string with success message" do
        ingredients.each { |i| ingredient_ids.push i.id }
        post '/user_ingredients', { user_id: user.id, ingredients: ingredient_ids }
        expect(response).to be_success
        expect(parse_json_response['success']).to eq 'Ingredients saved to user profile'
      end

      # it 'creates the record in the database' do

      # end
    end
  end

end
