require 'watir'
browser = Watir::Browser.new
url = "http://localhost:3000"

Given(/^I visit the calculator page for add$/) do
  browser.goto "#{url}/add"
end

Given(/^I fill in '(\d+)' for 'first'$/) do |number|
  browser.text_field(:id => 'first').set number
end

Given(/^I fill in '(\d+)' for 'second'$/) do |number|
  browser.text_field(:id => 'second').set number
end

Given(/^I click on 'Add'$/) do
  browser.button(:id => 'add_button').click
end

Then(/^I should see '(\d+)'$/) do |number|
  assert_equal(browser.div(:id => 'answer').text, number)
end

Given(/^I fill in '' for 'second'$/) do 
  browser.text_field(:id => 'second').set
end

Given(/^I fill in '' for 'first'$/) do
  browser.text_field(:id => 'first').set
end