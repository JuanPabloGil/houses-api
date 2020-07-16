require 'rails_helper'

RSpec.describe House, type: :model do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:about) }
    it { should validate_presence_of(:price) }
    it { should validate_presence_of(:category) }
end
