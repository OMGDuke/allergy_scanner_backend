require 'rails_helper'

RSpec.describe Ingredient, type: :model do
  it { should have_and_belong_to_many :diet_profiles }
  it { should have_many :users }
  it { should have_many :ingredient_users }
  it { should validate_presence_of :name }
  it { should validate_uniqueness_of :name }
end
