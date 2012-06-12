Given /^I visit my webspace section$/ do
  click_link "Manfred Miravitllas"
  click_link "Els meus espais web"
end

Given /^I enter on webspace$/ do
  click_link "WEBSPACE TEST"
end

When /^I create a new page$/ do
  click_link "Afegir"
end

When /^I write a title for page$/ do
  click_on "Seguir"
  page.should have_content "No pot estar en blanc"
  fill_in "page_name", :with => "New page test"
  click_on "Seguir"
  page.execute_script("$('.mercury-save-button').click();")
end

Then /^I should see the new page$/ do
  save_and_open_page
  page.should have_content "New page test"
end
