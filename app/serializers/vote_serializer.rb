class VoteSerializer < ActiveModel::Serializer
  attributes :id, :comment, :points, :category_id, :player_id, :game_id
  # has_one :user
  has_one :game
  has_one :player
  has_one :category
end
