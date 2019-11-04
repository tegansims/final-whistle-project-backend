class VoteSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :category_id, :game_id, :player_id, :comment, :points 
  has_one :user
  has_one :game
  has_one :player
  has_one :category

end
