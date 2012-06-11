Given /^I am logged in$/ do
  @department = Department.create(:name => "Department 1")
  @teacher = Teacher.create(:name => "Manfred", :surname => "Miravitllas", :email => "example@example.com", :password => "example", :password_confirmation => 'example', :department_id => @department.id, :office => 'Q3/1011', :birthday => '1986-12-26'.to_date, :research_area => "Web developers")
  visit '/users/sign_in'
  fill_in "user_email", :with => "example@example.com"
  fill_in "user_password", :with => "example"
  click_button "Entrar"
end

When /^I create a webspace$/ do
  click_link "Manfred Miravitllas"
  click_link "Els meus espais web"
  click_link "Crear espai web"
  fill_in "Nom espai", :with => "Webspace Test"
  fill_in "Descripcio", :with => "Description Test"
  click_button "Crear Espai"
end

When /^I fill in the index page$/ do
  page.execute_script("$('.mercury-region').insert('<p>Lore ipsum</p>');")
  STDIN.gets
  page.execute_script("$('.mercury-save-button').click();")
end

Then /^I should see the webspace with one page$/ do
  page.should have_content "Nom espai"
  page.should have_content "Index"
  page.should have_content "Lore ipsum"
end
