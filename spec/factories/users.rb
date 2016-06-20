FactoryGirl.define do
  factory :user do
    email 'person@example.com'
    password 'password'
    password_confirmation 'password'
    confirmed_at Time.now
  end
end
