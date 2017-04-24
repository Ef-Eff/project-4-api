class CommentSerializer < ActiveModel::Serializer
  attributes :id, :body, :image_src, :vote_score
  has_one :topic
  has_one :user
  has_many :votes, as: :subject

  def image_src
    object.image.url
  end

  def vote_score
    if object.votes
      object.votes.map {|vote| vote["value"] }.sum
    end
  end
end
