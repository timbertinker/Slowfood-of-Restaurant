Given(/^I am on the "([^"]*)" now$/) do |page|
  visit '/dish-creation'
end

When(/^I fill in "([^"]*)" with (\d+)$/) do |element, number|
  fill_in element, with: number
end
