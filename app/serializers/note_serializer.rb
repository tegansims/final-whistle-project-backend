class NoteSerializer < ActiveModel::Serializer
  attributes :id, :comment, :public, :game_id, :user_id
  has_one :user
  has_one :game
end
