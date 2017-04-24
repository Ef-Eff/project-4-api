class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :karma, :email, :profile_pic_url
  has_many :comments
  has_many :votes, through: :comments
  has_many :messages_received
  has_many :messages_sent


  def profile_pic_src
    object.profile_pic.url
  end

  def karma
    if object.votes
      object.votes.map {|vote| vote["value"] }.sum
    end
  end
end
