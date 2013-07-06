require 'watir'
browser = Watir::Browser.new
url = "http://localhost:3000"

Given(/^I visit the calculator page for subtract$/) do
  browser.goto "#{url}/subtract"
end

Given(/^I fill in '(\d+)' for 'first_s'$/) do |number|
  browser.text_field(:id => 'first_s').set number
end

Given(/^I fill in '(\d+)' for 'second_s'$/) do |number|
  browser.text_field(:id => 'second_s').set number
end

Given(/^I click on 'Subtract'$/) do
  browser.button(:id => 'subtract_button').click
end

Then(/^I should view '(\d+)'$/) do |number|
  assert_equal(browser.div(:id => 'answer_s').text, number)
end

Given(/^I fill in '' for 'second_s'$/) do
  browser.text_field(:id => 'second_s').set
end

Given(/^I fill in '' for 'first_s'$/) do
  browser.text_field(:id => 'first_s').set
end

Then(/^I should view '(\-\d+)'$/) do |number|
  assert_equal(browser.div(:id => 'answer_s').text, number)
end