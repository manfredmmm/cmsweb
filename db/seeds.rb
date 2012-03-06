# Destroy all database, create and migrate
puts "Creating database..."
system "rake db:drop && rake db:create && rake db:migrate"

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
    :department_id =>  Department.all[n],
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
    :department_id =>  Department.all[n],
    :birthday => '1986-12-26'.to_date,
    :research_area => 'Web design',
    :office => 'Q3/1011',
    :avatar => File.new(Rails.root.to_s+"/examples/" + (n+5).to_s + ".jpg")) }

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

# Sunspot tasks
puts "Sunspot solr stop"
system "rake sunspot:solr:stop"
puts "Sunspot solr start"
system "rake sunspot:solr:start"

# localhost:3000
system "passenger start"
puts "GREAT! localhost:3000 is listening!"
