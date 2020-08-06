FactoryBot.define do
  factory :house do
    title { Faker::Lorem.word }
    about { Faker::Lorem.sentence(word_count: 4) }
    category { 'House' }
    price { Faker::Number.number(digits: 4) }
  end
end
