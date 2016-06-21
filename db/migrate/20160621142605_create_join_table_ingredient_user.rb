class CreateJoinTableIngredientUser < ActiveRecord::Migration
  def change
    create_join_table :ingredients, :users do |t|
      # t.index [:ingredient_id, :user_id]
      # t.index [:user_id, :ingredient_id]
    end
  end
end
