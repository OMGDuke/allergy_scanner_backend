class UserIngredientsController < ApplicationController
  def create
    # byebug
    # user_ingredient_params
    p user_ingredient_params
    render json: { success: 'Ingredients saved to user profile' }

  end

  def user_ingredient_params
     params.permit(:ingredients, array: [:ingredient_id])
  end

end
