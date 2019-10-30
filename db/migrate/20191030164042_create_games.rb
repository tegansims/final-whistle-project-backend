class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.references :team, null: false, foreign_key: true
      t.datetime :date
      t.string :venue
      t.string :opposition
      t.boolean :completed?
      t.string :score

      t.timestamps
    end
  end
end
