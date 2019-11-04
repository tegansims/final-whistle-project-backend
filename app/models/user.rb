class User < ApplicationRecord
  has_secure_password 
  
  belongs_to :team, optional: true
  belongs_to :usertype, optional: true
  belongs_to :player, optional: true
  has_many :notes
  has_many :votes
  has_many :games, through: :team
  has_many :games, through: :notes
  has_many :games, through: :votes
  has_many :categories, through: :votes
  has_many :scorers, through: :games
  has_many :assists, through: :games

  validates :email, presence: true
  validates :password, presence: true
  validates :email, uniqueness: true 
end
