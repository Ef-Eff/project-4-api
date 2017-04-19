class User < ApplicationRecord
  mount_uploader :profile_pic, ImageUploader
  has_secure_password
  has_many :comments
  validates :username, presence: true, length: { in: 3..16 }
  validates :email, uniqueness: true, presence: true
end
