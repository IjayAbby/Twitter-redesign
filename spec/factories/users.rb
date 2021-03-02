FactoryBot.define do
  factory :user do
    sequence(:username) { |n| "user#{n}" }
    full_name { 'John Doe' }
    password { 'mysecretpassword' }
    auth_token { 'helloworld' }
  end
end
