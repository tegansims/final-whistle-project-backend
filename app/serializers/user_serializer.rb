class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :admin, :team_id, :player
  has_one :team
  has_one :usertype
  has_many :notes
  has_many :votes
  # has_many :games, through: :team
end
