require 'watir'
browser = Watir::Browser.new
url = "http://localhost:3000"

Given(/^I visit the calculator page for multiply$/) do
  browser.goto "#{url}/multiply"
end

Given(/^I fill in '(\d+)' for 'first_m'$/) do |number|
  browser.text_field(:id => 'first_m').set number
end

Given(/^I fill in '(\d+)' for 'second_m'$/) do |number|
  browser.text_field(:id => 'second_m').set number
end

Given(/^I click on 'Multiply'$/) do
  browser.button(:id => 'multiply_button').click
end

Then(/^I should see the number '(\d+)'$/) do |number|
  assert_equal(browser.div(:id => 'answer_m').text, number)
end

Given(/^I fill in '' for 'second_m'$/) do
   browser.text_field(:id => 'second_m').set
end

Given(/^I fill in '' for 'first_m'$/) do
  browser.text_field(:id => 'first_m').set
end

Given(/^I fill in '(\-\d+)' for 'first_m'$/) do |number|
  browser.text_field(:id => 'first_m').set number
end

Given(/^I fill in '(\-\d+)' for 'second_m'$/) do |number|
  browser.text_field(:id => 'second_m').set number
end

Then(/^I should see the number '(\-\d+)'$/) do |number|
  assert_equal(browser.div(:id => 'answer_m').text, number)
end