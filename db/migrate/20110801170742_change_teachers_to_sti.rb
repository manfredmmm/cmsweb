class ChangeTeachersToSti < ActiveRecord::Migration
  def self.up
    drop_table :teachers
    add_column :users, :name, :string
    add_column :users, :surname, :string  
    add_column :users, :birthday, :date
    add_column :users, :department_id, :integer
    add_column :users, :research_area, :string
    add_column :users, :office, :string  
  end

  def self.down
    create_table :teachers do |t|
      t.string :name
      t.string :surname
      t.string :last_surname
      t.date :birthday
      t.string :email
      t.integer :department_id
      t.string :research_area
      t.string :office

      t.timestamps
    end
    remove_column :users, :name
    remove_column :users, :surname
    remove_column :users, :birthday
    remove_column :users, :department_id
    remove_column :users, :research_area
    remove_column :users, :office
  end
end
