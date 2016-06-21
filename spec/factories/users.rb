FactoryGirl.define do

  factory :user do
    email 'person@example.com'
    password 'password'
    password_confirmation 'password'
    confirmed_at Time.now

    factory :user_with_ingredients do
      transient do
        ingredients_count 5
      end

      after(:create) do |user, evaluator|
        create_list(:ingredient, evaluator.ingredients_count, users: [user])
      end
    end
  end
end
