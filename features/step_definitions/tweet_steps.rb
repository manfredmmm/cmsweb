Given /^there is a one webspace$/ do
end

Given /^I visit some webspace$/ do
  click_link "WEBSPACE TEST"
end

When /^I want share some page content$/ do
  click_link "Tweet"
  save_and_open_page
  fill_in "username_or_email", :with => "mkmanfred@gmail.com"
  fill_in "password", :with => "grisamlrsmm"
  click_button "commit"
end

Then /^I write tweet$/ do
  fill_in "status", :with => "Tweet Test!"
end
