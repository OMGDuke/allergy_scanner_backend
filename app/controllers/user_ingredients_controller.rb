class UserIngredientsController < ApplicationController

  def create
    params[:ingredients].each do |ingredient|
      user_ingredient = UserIngredient.new user_id: params[:user_id], ingredient_id: ingredient[:id]
      user_ingredient.save
    end

    render json: { success: 'Ingredients saved to user profile' }
  end
end
