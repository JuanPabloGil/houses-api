class House < ApplicationRecord
  validates_presence_of :title, :about, :price, :category
  belongs_to :user
end
