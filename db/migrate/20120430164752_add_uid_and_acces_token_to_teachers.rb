class AddUidAndAccesTokenToTeachers < ActiveRecord::Migration
  def up
    add_column :users, :uid, :string
    add_column :users, :access_token, :string
  end

  def down
    remove_column :users, :uid
    remove_column :users, :access_token
  end
end
