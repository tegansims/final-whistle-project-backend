class Vote < ApplicationRecord
  belongs_to :user
  belongs_to :game
  belongs_to :player
  belongs_to :category
end
