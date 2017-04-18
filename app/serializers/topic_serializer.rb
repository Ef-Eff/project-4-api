class TopicSerializer < ActiveModel::Serializer
  attributes :id, :title, :rating, :tweet_volume, :selected_subtitle
  has_many :comments
  has_many :subtitles

  def selected_subtitle
    subtitle = object.subtitles[0]
    if subtitle then subtitle["title"] else "Be the first to suggest a subtitle!" end
  end
end
