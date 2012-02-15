Department.create(:name => 'Departament1', :description => 'Departament numero 1')
Department.create(:name => 'Departament2', :description => 'Departament numero 2')
Department.create(:name => 'Departament3', :description => 'Departament numero 3')

User.create(:name => 'teacher', :surname => 'surname', :email => 'teacher@example.com', :password => 'example', :birthday => '26-12-1986', :avatar => Rails.root+"/exemples/1.jpg", :department_id => 1, :research_area => 'Web development', :type => 'Teacher')
