require 'rails_helper'

RSpec.describe UserIngredient, type: :model do

  it { should belong_to :user }
  it { should belong_to :ingredient }
  it { should validate_uniqueness_of(:ingredient_id).scoped_to :user_id }
  it { should validate_presence_of :ingredient_id }
  it { should validate_presence_of :user_id }

end
