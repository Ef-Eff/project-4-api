class MessageSerializer < ActiveModel::Serializer
  attributes :id, :subject, :body, :sender, :receiver, :image
end
