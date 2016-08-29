# Feature: As a visitor
#   So that I can log in to the system and place orders
#   I would like to see a 'log in' or 'register' button on the home page.
#
# Scenario: Allows a visitor to access a registration page
#   Given I am on the "home page"
#   And I click on the "Log In" link
#   Then I should be on the 'login' page
#   When I fill in "Username:" with "user"
#   And I fill in "Password:" with "user"
#   And I click "Log In" button
#   Then I should see "Successfully logged in user"
