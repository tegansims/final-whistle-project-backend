class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.references :team, null: false, foreign_key: true
      # t.references :team, default: null, foreign_key: true
      t.string :email
      t.string :password_digest
      t.boolean :admin?
      t.references :usertype, null: false, foreign_key: true
      # t.references :usertype, default: null, foreign_key: true
      t.string :player
      # t.string :player, default: null, foreign_key: true
      t.timestamps
    end
  end
end
