# Destroy all database, create and migrate
puts "Creating database..."

# Departments seeds
puts "Creating departments..."
Department.destroy_all
5.times {|n| Department.create(:name => 'Departament' + n.to_s, :description => 'Departament numero ' + n.to_s) }

# Teachers seeds
puts "Creating teachers..."

departments = Department.all
User.destroy_all
Teacher.destroy_all
5.times do |n|
  t = Teacher.create(
    :email => 'teacher' + (n).to_s + '@example.com',
    :password => 'example',
    :password_confirmation => 'example',
    :name => 'Teacher' + (n).to_s,
    :surname => 'Surname' + (n).to_s,
    :department_id =>  departments.shuffle.first.id,
    :birthday => '1986-12-26'.to_date,
    :research_area => 'Web developers',
    :office => 'Q3/1011',
    :avatar => File.new(Rails.root.to_s+"/examples/" + (n).to_s + ".jpg"))
end

5.times {|n| Teacher.create(
    :email => 'researcher' + (n+5).to_s + '@example.com',
    :password => 'example',
    :password_confirmation => 'example',
    :name => 'Teacher' + (n+5).to_s,
    :surname => 'Surname' + (n+5).to_s,
    :department_id =>  departments.shuffle.first.id,
    :birthday => '1973-12-02'.to_date,
    :research_area => 'Software developers',
    :office => 'Q5/0011',
    :avatar => File.new(Rails.root.to_s+"/examples/" + (n+5).to_s + ".jpg")) }

5.times {|n| Teacher.create(
    :email => 'researcher' + (n+10).to_s + '@example.com',
    :password => 'example',
    :password_confirmation => 'example',
    :name => 'Teacher' + (n+10).to_s,
    :surname => 'Surname' + (n+10).to_s,
    :department_id =>  departments.shuffle.first.id,
    :birthday => '1973-12-02'.to_date,
    :research_area => 'Hardware',
    :office => 'Q5/0011',
    :avatar => File.new(Rails.root.to_s+"/examples/" + (n+5).to_s + ".jpg")) }

# Admin seed
puts "Creating administrator user..."
Admin.destroy_all
Admin.create(
    :email => 'admin@example.com',
    :password => 'example',
    :password_confirmation => 'example',
    :name => 'Administrator',
    :surname => 'Surname',
    :department_id => Department.first,
    :birthday => '1986-12-26'.to_date,
    :research_area => 'None',
    :avatar => File.new(Rails.root.to_s+"/examples/0.jpg"))

# Creating webspaces
puts "Creating webspaces examples..."
WebSpace.destroy_all
teacher = Teacher.all

15.times { |n| WebSpace.create(
  :name => "Web #{n}",
  :teacher_id => teacher.shuffle.first.id,
  :content => "Lorem ipsum dolor sit amet." )}

#<WebSpace id: 1, name: "Espai 1", teacher_id: 27, created_at: "2012-06-14 14:14:10", updated_at: "2012-06-14 14:14:10", content: "Desenvolupament web">, #<WebSpace id: 2, name: "TDD", teacher_id: 23, created_at: "2012-06-14 14:17:33", updated_at: "2012-06-14 14:17:33", content: "explicació de com es fa TDD i BDD">, #<WebSpace id: 3, name: "Control de versions", teacher_id: 24, created_at: "2012-06-14 14:23:59", updated_at: "2012-06-14 14:23:59", content: "Explicació de què és git i el seu funcionament">, #<WebSpace id: 4, name: "Vídeos", teacher_id: 25, created_at: "2012-06-14 14:27:15", updated_at: "2012-06-14 14:27:15", content: "Disseny i il·lustració de vídeos">
