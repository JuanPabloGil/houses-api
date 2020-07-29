require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { User.new(id: 1, email: 'user1@example.com', password: '12345678', password_confirmation: '12345678') }

  let(:house) do
    House.new(id: 1,
              user_id: 1,
              title: 'Greate House', price: 1200, category: 'House',
              about: 'lorem ip sum rem ip sum lorem ilorem ip sum rem p sum rem iplorem ip sum rem ')
  end

  let(:favorite) { Favorite.new(user_id: user.id, house_id: house.id) }

  it 'Check if is a good relationship valid' do
    user.save
    house.save
    favorite.save
    expect(favorite).to be_valid
  end

  it 'Check if is a bad relationship valid' do
    user.save
    favorite.save
    expect(favorite).not_to be_valid
  end
end
