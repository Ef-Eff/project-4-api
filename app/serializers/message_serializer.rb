class MessageSerializer < ActiveModel::Serializer
  attributes :id, :subject, :body, :image, :created_at, :image_src
  has_one :sender
  has_one :receiver

  def image_src
    object.image.url
  end
end
