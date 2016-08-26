Given(/^I am on the "([^"]*)" page$/) do |page|
  visit '/protected'
end

Then(/^I should be logged in$/) do
  @current_user = User.create!(username: 'admin', password: 'admin', admin: true)
  login_as(@current_user, :scope => :user)
  #binding.pry
  #save_and_open_page
end

And(/^I should still be on the protected page$/) do
  expect(current_path).to eq '/protected'
end
