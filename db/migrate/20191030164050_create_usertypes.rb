class CreateUsertypes < ActiveRecord::Migration[6.0]
  def change
    create_table :usertypes do |t|
      t.string :usertype

      t.timestamps
    end
  end
end
