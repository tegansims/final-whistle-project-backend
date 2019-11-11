class Team < ApplicationRecord
  has_secure_password 

  belongs_to :sport, optional: true
  has_many :players
  has_many :games
  has_many :users
  has_many :boards
  has_many :notes, through: :games
  has_many :votes, through: :games
  has_many :scorers, through: :games
  has_many :assists, through: :games
  has_many :notes, through: :users
  has_many :votes, through: :users
  has_many :usertypes, through: :users
  has_many :categories, through: :votes
  
  validates :password, presence: true

  # --- scorers --- #
  def get_all_team_scorers
    self.scorers.select{|scorer| scorer.game.team.id == self.id }
  end

  def count_and_sort_scorers
    scorer_count = Hash.new(0)
    self.get_all_team_scorers.each{|scorer| scorer_count[scorer.player.name] += 1}
    scorers_sorted = scorer_count.sort_by { |scorer,number| number}.reverse
    # return winners
  end

  def top_scorer
    arr = []
    topscorers = self.count_and_sort_scorers.select{|scorer| scorer[1] == self.count_and_sort_scorers[0][1]}
    winners = topscorers.map{|scorer| scorer.first}.join(", ")
    arr.push(winners)
    return arr
  end

  # --- assists --- #
  def get_all_team_assists
    self.assists.select{|assist| assist.game.team.id == self.id }
  end

  def count_and_sort_assisters
    assist_count = Hash.new(0)
    self.get_all_team_assists.each{|assist| assist_count[assist.player.name] += 1}
    assists_sorted = assist_count.sort_by { |assist,number| number}.reverse
    # return winners
  end

  def top_assister
    arr = []
    topassists = self.count_and_sort_assisters.select{|assist| assist[1] == self.count_and_sort_assisters[0][1]}
    winners = topassists.map{|assist| assist.first}.join(", ")
    arr.push(winners)
    return arr
  end

 # --- coordinates --- #
  def get_all_boards
    self.boards.select{|board| board.team.id == self.id }
  end

  def team_board_coords_as_array
    all_team_boards = self.get_all_boards
    allcoords = all_team_boards.map{ |b| b.coordinates.tr('[]', '').split(",").map { |s| s.to_i }}
    return allcoords
  end



end
