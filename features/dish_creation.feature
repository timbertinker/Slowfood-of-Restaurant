Feature: As a restaurant Owner
  in order to set up my menu
  I need to be able to add Dishes.

Scenario: Allows a restaurant owner to add a dish
  Given I am on the "dishes page" now
  Then I should see "add a dish"
  When I select "Starter" from "category"
  And I fill in "name" with "Garlic Bread"
  And I fill in "price" with 50
  And I click "Add Dish" button
  Then I should see "Dish successfully added"
