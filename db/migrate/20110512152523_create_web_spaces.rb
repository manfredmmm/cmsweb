class CreateWebSpaces < ActiveRecord::Migration
  def self.up
    create_table :web_spaces do |t|
      t.string :name
      t.integer :teacher_id

      t.timestamps
    end
  end

  def self.down
    drop_table :web_spaces
  end
end
