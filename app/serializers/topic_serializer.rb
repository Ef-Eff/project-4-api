class TopicSerializer < ActiveModel::Serializer
  attributes :id, :title, :rating, :tweet_volume
end
