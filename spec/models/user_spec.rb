require 'rails_helper'

RSpec.describe User, type: :model do
  it { should have_many :ingredients }
  it { should have_many :ingredient_users }
end
