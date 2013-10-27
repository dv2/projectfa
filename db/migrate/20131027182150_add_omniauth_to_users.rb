class AddOmniauthToUsers < ActiveRecord::Migration
  def change
    add_column :users, :provider, :string
    add_column :users, :uid, :string
    add_column :users, :p_nickname, :string
    add_column :users, :p_name, :string
    add_column :users, :p_url, :string
  end
end
