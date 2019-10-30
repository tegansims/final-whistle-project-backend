class Team < ApplicationRecord
  has_secure_password 

  belongs_to :sport
  has_many :players
  has_many :games
  has_many :users
  has_many :notes, through: :games
  has_many :votes, through: :games
  
 
end
