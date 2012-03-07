# Destroy all database, create and migrate
puts "Creating database..."
system "rake db:drop && rake db:create && rake db:migrate && rake db:test:prepare"

# Departments seeds
puts "Creating departments..."
5.times {|n| Department.create(:name => 'Departament' + n.to_s, :description => 'Departament numero ' + n.to_s) }

# Teachers seeds
puts "Creating teachers..."
5.times {|n| Teacher.create(
    :email => 'teacher' + (n).to_s + '@example.com',
    :password => 'example',
    :password_confirmation => 'example',
    :name => 'Teacher' + (n).to_s,
    :surname => 'Surname' + (n).to_s,
    :department_id =>  Department.all[n].id,
    :birthday => '1986-12-26'.to_date,
    :research_area => 'Web developers',
    :office => 'Q3/1011',
    :avatar => File.new(Rails.root.to_s+"/examples/" + (n).to_s + ".jpg")) }

5.times {|n| Teacher.create(
    :email => 'teacher' + (n+5).to_s + '@example.com',
    :password => 'example',
    :password_confirmation => 'example',
    :name => 'Teacher' + (n+5).to_s,
    :surname => 'Surname' + (n+5).to_s,
    :department_id =>  Department.all[n].id,
    :birthday => '1986-12-26'.to_date,
    :research_area => 'Web design',
    :office => 'Q5/0011',
    :avatar => File.new(Rails.root.to_s+"/examples/" + (n+5).to_s + ".jpg")) }

3.times {|n| Teacher.create(
    :email => 'teacher' + (n+10).to_s + '@example.com',
    :password => 'example',
    :password_confirmation => 'example',
    :name => 'Teacher' + (n+10).to_s,
    :surname => 'Surname' + (n+10).to_s,
    :department_id => Department.first,
    :birthday => '1986-12-26'.to_date,
    :research_area => 'Game developers',
    :office => 'Q1/3011',
    :avatar => File.new(Rails.root.to_s+"/examples/" + (n).to_s + ".jpg")) }

# Admin seed
puts "Creating administrator user..."
Admin.create(
    :email => 'admin@example.com',
    :password => 'example',
    :password_confirmation => 'example',
    :name => 'Admin',
    :surname => 'Surname',
    :birthday => '1986-12-26'.to_date,
    :avatar => File.new(Rails.root.to_s+"/examples/0.jpg"))
