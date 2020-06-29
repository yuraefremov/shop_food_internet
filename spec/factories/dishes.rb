# frozen_string_literal: true

FactoryBot.define do
  factory :dish do
    name { 'TestDish' }
    description { 'Test Description' }
    price { 10 }
    association(:category)
  end
end
