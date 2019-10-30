class VoteSerializer < ActiveModel::Serializer
  attributes :id, :comment, :points
  has_one :user
  has_one :game
  has_one :player
  has_one :category
end
