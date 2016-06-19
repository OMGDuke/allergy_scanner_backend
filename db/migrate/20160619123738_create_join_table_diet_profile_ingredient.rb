class CreateJoinTableDietProfileIngredient < ActiveRecord::Migration
  def change
    create_join_table :diet_profiles, :ingredients do |t|
      t.index [:diet_profile_id, :ingredient_id]
      t.index [:ingredient_id, :diet_profile_id]
    end
  end
end
