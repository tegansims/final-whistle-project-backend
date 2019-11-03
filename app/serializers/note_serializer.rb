class NoteSerializer < ActiveModel::Serializer
  attributes :id, :comment, :public
  has_one :user
  has_one :game
end
