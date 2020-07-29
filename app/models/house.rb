class House < ApplicationRecord
  belongs_to :user

  has_many :favorites, dependent: :destroy

  validates_presence_of :price, :category

  validates :title, presence: true, length: { maximum: 50,
                                              too_long: '50 characters in House title is the maximum allowed.',
                                              minimum: 4, too_short: 'The minimum length its 4 chars ' }
  validates :about, presence: true, length: { maximum: 700,
                                              too_long: '700 characters in House content is the maximum allowed.',
                                              minimum: 20, too_short: 'The minimum length its 20 chars ' }
end
