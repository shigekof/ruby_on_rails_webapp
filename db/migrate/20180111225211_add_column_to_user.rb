class AddColumnToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :firstname, :string
    add_column :users, :lastname, :string
    add_column :users, :username, :string
    remove_column :users, :name, :string
  end
end
