Given /^I am logged in$/ do
  @department = Department.create(:name => "dep1")
  @teacher = User.create(:name => "Manfred", :surname => "Miravitllas", :email => "example@example.com", :password => "example", :password_confirmation => 'example', :department => @department.id, :type => "Teacher")
  login_as @teacher
end

When /^I create a webspace$/ do
  visit root_path
  click_link "Els meus espais webs"
  click_link "Crear Espai Web"
  fill_in "Nom espai", :with => "Webspace1"
  click_button "Seguir"
end

When /^I fill in the index page$/ do
  page.execute_script("$('#content').append('<p>Lore ipsum</p>');")
  page.execute_script("$('.mercury-save-button').click();")
end

Then /^I should see the webspace with one page$/ do
  page.should have_content "Webspace1"
  page.should have_content "Portada"
end
