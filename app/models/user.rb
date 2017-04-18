class User < ApplicationRecord
  has_secure_password
  has_many :comments
  validates :username, presence: true, length: { in: 3..16 }
  validates :email, uniqueness: true, presence: true
end
