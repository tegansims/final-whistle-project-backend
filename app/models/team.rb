class Team < ApplicationRecord
  belongs_to :sport
  has_many :players
  has_many :games
  has_many :users
  has_many :notes, through: :games
  has_many :votes, through: :games
end
