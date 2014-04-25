class AddFnameLnameAdminBannedToUsers < ActiveRecord::Migration
  def change
    add_column :users, :fname, :string
    add_column :users, :lname, :string
    add_column :users, :admin, :boolean, null: false, default: false
    add_column :users, :banned, :boolean, null: false, default: false
  end
end
