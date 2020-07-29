require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { User.new(id: 2, email: 'user@example.com', password: '12345678', password_confirmation: '12345678') }

  it 'Check for valid user structure ' do
    user.save
    expect(user).to be_valid
  end

  it 'Check for invalid user confirmation password' do
    user.password_confirmation = '1234567'
    user.save
    expect(user).not_to be_valid
  end

  it 'Check for invalid email name size ' do
    user.email = 'abcdfgh.com'
    user.save
    expect(user).not_to be_valid
  end
end
