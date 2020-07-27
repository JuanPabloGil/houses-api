class User < ApplicationRecord
  has_secure_password
  has_many :houses, dependent: :destroy
  has_many :favorites, dependent: :destroy
  validates_presence_of :email
  validates_uniqueness_of :email
end
