class PmSerializer < ActiveModel::Serializer
  attributes :id, :sender_id, :receiver_id, :body, :image, :subject
end
