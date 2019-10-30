class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :password_digest, :admin?, :player
  has_one :team
  has_one :usertype
end
