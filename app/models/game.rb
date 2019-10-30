class Game < ApplicationRecord
  belongs_to :team
  has_many :votes
  has_many :notes
  has_many :users, through: :team
  has_many :players, through: :team
  has_many :scorers
  has_many :assists
end
