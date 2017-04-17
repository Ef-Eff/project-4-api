class CommentSerializer < ActiveModel::Serializer
  attributes :id, :body, :image
  has_one :topic
  has_one :user
end
