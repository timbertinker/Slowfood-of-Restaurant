Feature: As a Visitor
  in order to check out
  I need to have a registered 'username' and 'password'

Scenario: I want to register (as a Visitor)
  Given I am on the registration page
  When I fill in "username" with "david"
  And I fill in "password" with "craftacademy"
  And I click "Register" button
  Then I should see "Welcome to our restaurant, david!"

  # And I click "Log In" button
  # Then I should see "Successfully logged in admin"

Scenario: I need a password to successfully register
  Given I am on the registration page
  When I fill in "username" with "whatever"
  And I click "Register" button
  Then I should see "you need to enter a password"
