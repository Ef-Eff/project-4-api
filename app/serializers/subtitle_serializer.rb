class SubtitleSerializer < ActiveModel::Serializer
  attributes :id, :title, :votes
  has_one :user
  has_one :topic
end
