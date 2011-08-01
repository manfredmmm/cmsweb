class AddUserIdToTeachers < ActiveRecord::Migration
  def self.up
    add_column :teachers, :user_id, :integer
  end

  def self.down
    remove_column :teachers, :user_id
  end
end
