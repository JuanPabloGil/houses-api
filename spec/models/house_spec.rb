require 'rails_helper'

RSpec.describe House, type: :model do
  let(:user) { User.new(id: 1, email: 'user@example.com', password: '12345678', password_confirmation: '12345678') }

  let(:house) do
    House.new(id: 1,
              user_id: '1',
              title: 'Greate House', price: 1200, category: 'House',
              about: 'lorem ip sum rem ip sum lorem ilorem ip sum rem p sum rem iplorem ip sum rem ')
  end

  it 'Check for valid House structure ' do
    user.save
    house.save
    expect(house).to be_valid
  end

  it 'Check if house is valid if the user doesnt exist  ' do
    house.save
    expect(house).not_to be_valid
  end

  it 'Expect invalid content of house (too long ) ' do
    user.save
    house.about = 'a' * 1001
    house.save
    expect(house).not_to be_valid
  end

  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:about) }
  it { should validate_presence_of(:price) }
  it { should validate_presence_of(:category) }
end
