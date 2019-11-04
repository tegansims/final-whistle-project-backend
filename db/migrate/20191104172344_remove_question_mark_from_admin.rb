class RemoveQuestionMarkFromAdmin < ActiveRecord::Migration[6.0]
  def change
    rename_column :users, :admin?, :admin
  end
end
