require 'pry'
Given(/^a user with username "([^"]*)", status "([^"]*)" and password "([^"]*)" exists$/) do |username, status, password|
   owner = User.new(username: username, password: password, admin: true)
   owner.save
 end

Given(/^a user with username "([^"]*)" and password "([^"]*)" exists$/) do |username, password|
   user = User.new(username: username, password: password)
   user.save
end

And(/^I am on the "([^"]*)"$/) do |page|
  visit '/'
end

Given(/^I click on the "([^"]*)" link$/) do |link|
  click_link_or_button link
end

Then(/^I should be on the registration page$/) do
  expect(current_path).to eq '/auth/login'
end

When(/^I fill in "([^"]*)" with "([^"]*)"$/) do |element, text|
  fill_in element, with: text
end

When(/^I click "([^"]*)" button$/) do |button|
  click_button(button)
end

Then(/^I should see "([^"]*)"$/) do |text|
  expect(page).to have_content(text)
end
