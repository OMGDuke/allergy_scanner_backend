FactoryGirl.define do
  factory :ingredient do
    name
    diet_profiles []
    users []
  end
end
