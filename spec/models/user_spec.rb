require 'rails_helper'

RSpec.describe User, type: :model do
  it { should have_many :ingredients }
  it { should have_many :user_ingredients }
end
