class House < ApplicationRecord
  belongs_to :user
  has_many :favorites, dependent: :destroy
  validates_presence_of :title, :about, :price, :category
end
