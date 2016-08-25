Feature: As a Visitor
  in order to check out
  I need to have a registered 'username' and 'password'

Scenario: I want to register (as a Visitor)
  Given I am on the registration page
  When I fill in "username" with "david"
  And I fill in "password" with "craftacademy"
  And I click "Register" button
  # We are hard-coding 'david' into our post function but we need to get the information from the text fields before we post and somehow send them into our post function.
  Then I should see "Welcome to our restaurant!"

  # And I click "Log In" button
  # Then I should see "Successfully logged in admin"
