class Subtitle < ApplicationRecord
  belongs_to :user
  belongs_to :topic
end
