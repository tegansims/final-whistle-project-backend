class AddMomToGame < ActiveRecord::Migration[6.0]
  def change
    add_column :games, :mom_winner, :string
    add_column :games, :dod_winner, :string
  end
end
