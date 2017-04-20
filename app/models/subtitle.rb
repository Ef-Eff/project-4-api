class Subtitle < ApplicationRecord
  belongs_to :user
  belongs_to :topic
  has_many :votes, as: :subject
end
