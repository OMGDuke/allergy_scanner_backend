require 'rails_helper'

RSpec.describe DietProfile, type: :model do
  it { should have_and_belong_to_many :ingredients }
  it { should validate_presence_of :name }
  it { should validate_uniqueness_of :name }
end
