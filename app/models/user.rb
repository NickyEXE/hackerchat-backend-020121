class User < ApplicationRecord
  has_many :messages
  validates :username, uniqueness: true
  has_secure_password
end
