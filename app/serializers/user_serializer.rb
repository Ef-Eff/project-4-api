class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :karma, :email, :profile_pic_url
  has_many :comments

  def profile_pic_src
    object.profile_pic.url
  end
end
