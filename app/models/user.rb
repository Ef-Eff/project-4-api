class User < ApplicationRecord
  mount_uploader :profile_pic, ImageUploader
  has_secure_password
  has_many :comments, dependent: :destroy
  has_many :votes, through: :comments
  has_many :messages_sent, class_name: 'Pm', foreign_key: 'sender_id'
  has_many :messages_received, class_name: 'Pm', foreign_key: 'receiver_id'
  validates :username, presence: true, length: { in: 3..20 }
  validates :email, uniqueness: true, presence: true
end
