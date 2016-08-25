Feature: As a restaurant owner
So that I can log in to the a protected part of the site
I would like to get redirected when I log in

Scenario: Allows an owner see a protected part of the site
  Given I am on the "home page"
  And I click on the "Log In" link
  Then I should be on the registration page
  When I fill in "Username:" with "owner"
  And I fill in "Password:" with "owner"
  And I click "Log In" button
  Then I should see "Welcome owner"
