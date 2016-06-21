class IngredientsController < ApplicationController
  def create
    render json: { message: 'Ingredients saved to user profile' }
  end
end
