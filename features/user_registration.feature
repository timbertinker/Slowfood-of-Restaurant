Feature: As a Visitor
  in order to check out
  I need to have a registered 'username' and 'password'

Scenario: I want to register (as a Visitor)
  Given I am on the registration page
  When I fill in "username" with "david"
  And I fill in "password" with "craftacademy"
  And I click "Register" button
  Then I should see "Welcome to our restaurant, david!"

Scenario: I try to register without entering a password
  Given I am on the registration page
  When I fill in "username" with "whatever"
  And I click "Register" button
  Then I should see "Password must not be blank"

Scenario: I try to register without entering a username
  Given I am on the registration page
  When I fill in "password" with "passwordtime"
  And I click "Register" button
  Then I should see "Username must not be blank"
