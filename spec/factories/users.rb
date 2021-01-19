require "faker"

FactoryBot.define do
  factory :user do
    name { Faker::Name.name }
    sequence :email do |n|
      "test#{n}@example.com"
    end
    eye_colour { ["Greeb", "Blue", "Silver"].sample }
  end
end
