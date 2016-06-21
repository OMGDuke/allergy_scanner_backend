class IngredientsController < ApplicationController
  def index
    user = User.find_by(id: params[:user_id])
    render json: user.ingredients
  end

  def create
    user = User.find_by(id: params[:user_id])
    params[:ingredients].each do |i|
      user.ingredients << Ingredient.find_by(id: i[:id])
    end

    render json: { message: 'Ingredients saved to user profile' }
  end
end
