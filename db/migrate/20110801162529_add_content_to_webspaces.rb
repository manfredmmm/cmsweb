class AddContentToWebspaces < ActiveRecord::Migration
  def self.up
    add_column :web_spaces, :content, :text
  end

  def self.down
    remove_column :web_spaces, :content
  end
end
