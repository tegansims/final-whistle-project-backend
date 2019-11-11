class AddColumnsToBoard < ActiveRecord::Migration[6.0]
  def change
    add_column :boards, :name, :string
    add_reference :boards, :team, foreign_key: true

  end
end
