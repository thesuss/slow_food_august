Feature: As a restaurant owner
  On the protected part of the page
  I would like to be able to add information

Scenario: Allows an owner to add information
  Given I am on the "protected" page
  And I am logged in
  When I fill in "information" with "text"
  And I click "Save" button
  Then I should see "Information saved"
