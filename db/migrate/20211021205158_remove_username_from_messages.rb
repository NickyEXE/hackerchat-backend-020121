class RemoveUsernameFromMessages < ActiveRecord::Migration[6.1]
  def change
    remove_column :messages, :username
  end
end
