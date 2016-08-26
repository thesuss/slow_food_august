
Given(/^I am logged in$/) do
  @current_user = User.create!(username: 'admin', password: 'admin')
  login_as(@current_user)
end

Given(/^I am on the "([^"]*)" page$/) do |page|
  visit '/auth/protected'
end
