class Game < ApplicationRecord
  belongs_to :team
  has_many :votes
  has_many :notes
  has_many :users, through: :team
  has_many :players, through: :team
  has_many :scorers
  has_many :assists

  def get_votes(id)
    self.votes.select{|vote| vote.category_id == id && vote.game_id == self.id}
  end

  def votes_players(id)
    self.get_votes(id).map{|vote| vote.player.name}
  end

  def count_and_sort_votes(id)
    vote_count = Hash.new(0)
    self.votes_players(id).each {|player| vote_count[player] += 1}
    votes_sorted = vote_count.sort_by { |player,number| number}.reverse
    topvotes = votes_sorted.select{|vote| vote[1] == votes_sorted[0][1]}
    winners = topvotes.map{|vote| vote.first}.join(", ")
   
    return winners
  end


end
