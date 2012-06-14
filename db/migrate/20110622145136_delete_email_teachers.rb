class DeleteEmailTeachers < ActiveRecord::Migration
  def self.up
    remove_column :teachers, :email
  end

end
