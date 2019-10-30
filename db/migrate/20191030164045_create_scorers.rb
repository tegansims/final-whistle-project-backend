class CreateScorers < ActiveRecord::Migration[6.0]
  def change
    create_table :scorers do |t|
      t.references :game, null: false, foreign_key: true
      t.references :player, null: false, foreign_key: true

      t.timestamps
    end
  end
end
