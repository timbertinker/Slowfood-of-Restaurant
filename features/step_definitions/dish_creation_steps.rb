Given(/^I am on the "([^"]*)" now$/) do |page|
  visit '/dish-creation'
end

When(/^I fill in "([^"]*)" with (\d+)$/) do |element, number|
  fill_in element, with: number
end

When(/^I select "([^"]*)" from "([^"]*)"$/) do |dish_type, list|
  select dish_type, from: list
end
