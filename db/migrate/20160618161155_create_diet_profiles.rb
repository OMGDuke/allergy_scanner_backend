class CreateDietProfiles < ActiveRecord::Migration
  def change
    create_table :diet_profiles do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
