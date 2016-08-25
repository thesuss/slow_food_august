Feature: As a restaurant owner
  On the protected part of the page
  I would like to be able to add information

Scenario: Allows an owner to add information a
  Given a user with username "admin", status "admin" is logged in
  And I am on the "protected page"
  When I fill in "Information" with "information"
  And I click "Save" button
  Then I should see "Information saved"
