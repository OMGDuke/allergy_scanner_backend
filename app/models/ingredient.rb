class Ingredient < ActiveRecord::Base
  validates :name, presence: true
  validates :name, uniqueness: true
  has_and_belongs_to_many :diet_profiles

  has_many :user_ingredients
  has_many :users, through: :user_ingredients
end
