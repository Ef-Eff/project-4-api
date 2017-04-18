class Topic < ApplicationRecord
  has_many :users
  has_many :comments
  has_many :subtitles
end
