class UserIngredientsController < ApplicationController

  def create
    user_ingredients = []

    params[:ingredients].uniq.each do |ingredient|
      user_ingredients << UserIngredient.new(user_id: params[:user_id], ingredient_id: ingredient[:id])
    end

    if all_user_ingredients_valid? user_ingredients
      user_ingredients.each do |user_ingredient|
        user_ingredient.save
      end
      render json: { message: 'Ingredients saved to user profile' }
    else
      render json: { error_message: 'Ingredients not saved to user profile' }, status: :bad_request
    end

  end

  private
  def all_user_ingredients_valid? user_ingredients
    valid_user_ingredients = []
    user_ingredients.each do |user_ingredient|
      valid_user_ingredients << user_ingredients if user_ingredient.valid?
    end
    user_ingredients.length == valid_user_ingredients.length
  end
end
