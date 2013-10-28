class ChangeIndexToUser < ActiveRecord::Migration
  def up
    remove_index :users, :email
    add_index :users, [:email, :provider, :uid], :unique => true
  end

  def down
    remove_index :users, [:email, :provider, :uid]
    add_index :users, :email, :unique => true
  end
end
