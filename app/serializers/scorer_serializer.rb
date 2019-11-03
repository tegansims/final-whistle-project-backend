class ScorerSerializer < ActiveModel::Serializer
  attributes :id, :player
  has_one :game
  has_one :player
end
