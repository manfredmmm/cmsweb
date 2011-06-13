class AddAvatarToTeachers < ActiveRecord::Migration
  def self.up
    add_column :teachers, :avatar, :string
  end

  def self.down
    remove_column :teachers, :avatar
  end
end
