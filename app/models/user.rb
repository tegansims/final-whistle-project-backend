class User < ApplicationRecord
  has_secure_password 
  
  belongs_to :team, optional: true
  belongs_to :usertype, optional: true
  has_many :notes
  has_many :votes
  has_many :games, through: :team

  validates :email, presence: true
  validates :password, presence: true
  validates :email, uniqueness: true 
end
