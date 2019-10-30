class GameSerializer < ActiveModel::Serializer
  attributes :id, :date, :venue, :opposition, :completed?, :score
  has_one :team
end
