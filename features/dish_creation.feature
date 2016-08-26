Feature: As a restaurant Owner
  in order to set up my menu
  I need to be able to add Dishes.

Scenario: Allows a restaurant owner to add a dish
  Given I am on the "dishes page" now
  Then I should see "add a dish"
  When I fill in "category" with "starter"
  And I fill in "name" with "garlic bread"
  And I fill in "price" with 50
  And I click "add dish" button
  Then I should see "dish successfully added"
