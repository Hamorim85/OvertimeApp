class RemoveAvatarUsernameFromUser < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :avatar, :text
    remove_column :users, :username, :string
  end
end
