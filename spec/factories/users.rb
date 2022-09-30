FactoryBot.define do
  factory :user do
    name { "Example User" }
    email { Faker::Internet.email }
    password { "password" }
    password_confirmation { "password" }
    admin { false }
  end
end
