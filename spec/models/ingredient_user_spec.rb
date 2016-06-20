require 'rails_helper'

RSpec.describe IngredientUser, type: :model do
  it { should belong_to :ingredient }
  it { should belong_to :user }
end
