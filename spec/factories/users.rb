FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "person#{n}@example.com" }
    first_name 'Kate'
    last_name 'Brown'
    sequence(:username) { |n| "username #{n}"}
    password 'password'
    password_confirmation 'password'
  end
end
