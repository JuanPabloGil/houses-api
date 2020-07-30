# frozen_string_literal: true

require 'faker'

category = %w(House Room Aparment Loft Other)

User.create(id:123, email: "foobar@test.com", password: "12345678", password_confirmation: "12345678")    

5.times do |i|
    House.create(title: "House #{i}",
                    about:Faker::Lorem.paragraph(sentence_count: 7),
                    category: category[rand(0..4)],
                    price: rand(1000..5000),
                    user_id: 123)
end
