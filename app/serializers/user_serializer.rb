class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :karma, :email, :profile_pic
  has_many :comments
end
