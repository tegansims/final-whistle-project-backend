class Team < ApplicationRecord
  has_secure_password 

  belongs_to :sport, optional: true
  has_many :players
  has_many :games
  has_many :users
  has_many :notes, through: :games
  has_many :votes, through: :games
  has_many :scorers, through: :games
  has_many :assists, through: :games
  has_many :notes, through: :users
  has_many :votes, through: :users
  has_many :usertypes, through: :users
  has_many :categories, through: :votes
  
  validates :password, presence: true
end
