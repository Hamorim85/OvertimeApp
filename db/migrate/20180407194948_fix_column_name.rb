class FixColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :users, :frist_name, :first_name
  end
end
