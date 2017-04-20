class Comment < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :topic
  belongs_to :user
  has_many :votes, as: :subject
end
