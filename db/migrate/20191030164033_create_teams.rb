class CreateTeams < ActiveRecord::Migration[6.0]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :password_digest
      t.references :sport, null: false, foreign_key: true
      t.string :colour1
      t.string :colour2

      t.timestamps
    end
  end
end
