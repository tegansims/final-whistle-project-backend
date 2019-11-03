class RemoveQuestionMarkFromPublic < ActiveRecord::Migration[6.0]
  def change
    rename_column :notes, :public?, :public

  end
end
