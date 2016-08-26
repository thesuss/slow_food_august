Feature: As a restaurant owner
  On the protected part of the page
  I would like to be able to add information

Scenario: Allows an owner to add information
  Given I am on the "protected" page
  And I fill in "Username" with "admin"
  And I fill in "Password" with "admin"
  And I click "Log In" button
  Then I should be logged in
  And I should still be on the protected page
  Then I should see "information"
