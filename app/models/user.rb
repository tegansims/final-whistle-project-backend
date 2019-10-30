class User < ApplicationRecord
  belongs_to :team
  belongs_to :usertype
  has_many :notes
  has_many :votes
  has_many :games, through: :team
end
