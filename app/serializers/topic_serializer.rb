class TopicSerializer < ActiveModel::Serializer
  attributes :id, :title, :rating, :tweet_volume, :selected_subtitle
  has_many :comments
  has_many :subtitles

  def selected_subtitle
    subtitle = object.subtitles.sort_by { |hash| hash["rating"] }[0]
    if subtitle then subtitle["title"] else "No suggested subtitles" end
  end
end
