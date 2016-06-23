class IngredientsController < ApplicationController
  before_action :find_user

  def index
    render json: @user.ingredients
  end

  def create
    params[:ingredients].each do |ingredient|
      @user.ingredients << Ingredient.find_by(id: ingredient[:id])
    end

    render json: { message: 'Ingredients saved to user profile' }
  end

  private
  def find_user
    @user = User.find params[:user_id]
  end

end
