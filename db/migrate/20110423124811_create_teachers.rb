class CreateTeachers < ActiveRecord::Migration
  def self.up
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
  end

  def self.down
    drop_table :teachers
  end
end
