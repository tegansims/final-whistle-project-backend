class AssistSerializer < ActiveModel::Serializer
  attributes :id
  has_one :game
  has_one :player
end
