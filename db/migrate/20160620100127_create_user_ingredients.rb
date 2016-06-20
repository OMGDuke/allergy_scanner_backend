class CreateUserIngredients < ActiveRecord::Migration
  def change
    create_table :user_ingredients do |t|
      t.belongs_to :user, index: true
      t.belongs_to :ingredient, index: true
      t.timestamps null: false
    end
  end
end
