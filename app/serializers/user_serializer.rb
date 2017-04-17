class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :karma, :email, :password_digest, :profile_pic
end
