class CreateIngredientUsers < ActiveRecord::Migration
  def change
    create_table :ingredient_users do |t|
      t.belongs_to :ingredient, index: true
      t.belongs_to :user, index: true
      t.timestamps null: false
    end
  end
end
