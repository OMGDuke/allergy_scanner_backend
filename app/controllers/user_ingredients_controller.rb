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
      render json: { success: 'Ingredients saved to user profile' }
    else
      render json: { success: 'Ingredients not saved to user profile' }
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
