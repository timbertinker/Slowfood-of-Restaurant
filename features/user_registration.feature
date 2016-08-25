Feature: As a Visitor
  in order to check out
  I need to have a registered 'username' and 'password'

Scenario: I want to register (as a Visitor)
  Given I am on the registration page
  When I fill in "Username:" with "david"
  And I fill in "Password:" with "craftacademy"
  And I click "Register" button
  # A test that proves that we've created a new user
  Then I should see "Welcome to our restaurant!"

  # And I click "Log In" button
  # Then I should see "Successfully logged in admin"
