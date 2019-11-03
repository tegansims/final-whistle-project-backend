class GameSerializer < ActiveModel::Serializer
  attributes :id, :date, :venue, :opposition, :completed, :score
  has_one :team
  
  has_many :votes
  has_many :notes
  # has_many :users, through: :team
  # has_many :players, through: :team
  has_many :scorers
  has_many :assists
end
