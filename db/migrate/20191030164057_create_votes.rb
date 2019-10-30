class CreateVotes < ActiveRecord::Migration[6.0]
  def change
    create_table :votes do |t|
      t.references :user, null: false, foreign_key: true
      t.references :game, null: false, foreign_key: true
      t.references :player, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true
      t.string :comment
      t.string :points

      t.timestamps
    end
  end
end
