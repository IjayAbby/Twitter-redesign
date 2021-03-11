FactoryBot.define do
  factory :tweeet do
    user
    content { 'This is a new tweet' }
  end
end
