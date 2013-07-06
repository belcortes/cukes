Feature: Subtraction
  In order to avoid mistakes
  As a math begginer
  I want to see the difference of two numbers

  Scenario: Subtract two numbers
    Given I visit the calculator page for subtract
    And I fill in '30' for 'first_s'
    And I fill in '20' for 'second_s'
    And I click on 'Subtract'
    Then I should view '10'


