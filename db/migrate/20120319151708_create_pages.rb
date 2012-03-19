class CreatePages < ActiveRecord::Migration
  def up
    create_table :pages do |p|
      p.string :name
      p.string :content
      p.integer :web_space_id

      p.timestamps
    end
  end

  def down
    drop_table :pages
  end
end
