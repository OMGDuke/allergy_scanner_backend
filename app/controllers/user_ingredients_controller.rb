class UserIngredientsController < ApplicationController
  def create
    render json: { success: 'Ingredients saved to user profile' }
  end
end
