class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.references :team, null: false, foreign_key: true
      t.string :email
      t.string :password_digest
      t.boolean :admin?
      t.references :usertype, null: false, foreign_key: true
      t.string :player

      t.timestamps
    end
  end
end
