# Departments seeds
5.times {|n| Department.create(:name => 'Departament' + n.to_s, :description => 'Departament numero ' + n.to_s) }

# Teachers seeds
6.times {|n| Teacher.create(
    :email => 'teacher' + (n+1).to_s + '@example.com',
    :password => 'example',
    :password_confirmation => 'example',
    :name => 'Teacher' + (n+1).to_s,
    :surname => 'Surname' + (n+1).to_s,
    :department_id =>  (n+1),
    :birthday => '1986-12-26'.to_date,
    :research_area => 'Web developers',
    :office => 'Q3/1011',
    :avatar => File.new(Rails.root.to_s+"/examples/" + (n+1).to_s + ".jpg")) }

6.times {|n| Teacher.create(
    :email => 'teacher' + (n+6).to_s + '@example.com',
    :password => 'example',
    :password_confirmation => 'example',
    :name => 'Teacher' + (n+6).to_s,
    :surname => 'Surname' + (n+6).to_s,
    :department_id =>  (n+1),
    :birthday => '1986-12-26'.to_date,
    :research_area => 'Web design',
    :office => 'Q3/1011',
    :avatar => File.new(Rails.root.to_s+"/examples/" + (n+1).to_s + ".jpg")) }

Admin.create(
    :email => 'admin@example.com',
    :password => 'example',
    :password_confirmation => 'example',
    :name => 'Admin',
    :surname => 'Surname',
    :birthday => '1986-12-26'.to_date,
    :avatar => File.new(Rails.root.to_s+"/examples/1.jpg")) }
