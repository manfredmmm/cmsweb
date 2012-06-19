Given /^I am logged in$/ do
  @department = Department.create(:name => "Department 1")
  @teacher = User.create(:email => "example@example.com", :password => "example", :password_confirmation => 'example', :name => "Manfred", :surname => "Miravitllas", :type => "Teacher", :department => @department.id)#, :department_id => @department.id, :type => "Teacher", :name => "Manfred")
  @webspace = WebSpace.create(:name => "WebSpace Test", :teacher_id => @teacher.id, :content => "WebSpace Content Test")
  visit '/users/sign_in'
  fill_in "user_email", :with => "example@example.com"
  #sleep 3
  fill_in "user_password", :with => "example"
  #sleep 5
  click_button "Entrar"
end

When /^I create a webspace$/ do
  click_link "Manfred Miravitllas"
  #sleep 3
  click_link "Els meus espais web"
  #sleep 3
  click_link "Crear espai web"
  fill_in "Nom espai", :with => "Webspace Test"
  #sleep 3
  fill_in "Descripcio", :with => "Description Test"
  #sleep 3
  click_button "Crear Espai"
end

When /^I save the index page$/ do
  #sleep 5
  page.execute_script("$('.mercury-save-button').click();")
end

Then /^I should see the webspace with one page$/ do
  page.should have_content "actualitzada correctament"
  page.should have_content "Index"
  #sleep 5
end
