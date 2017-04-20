class CommentSerializer < ActiveModel::Serializer
  attributes :id, :body, :image_src
  has_one :topic
  has_one :user

  def image_src
    object.image.url
  end
end
