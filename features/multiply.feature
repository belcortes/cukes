Feature: Multiplication
  In order to avoid mistakes
  As a math begginer
  I want to see the product of two numbers

  Scenario: Multiply two numbers
    Given I visit the calculator page for multiply
    And I fill in '2' for 'first_m'
    And I fill in '3' for 'second_m'
    And I click on 'Multiply'
    Then I should see the number '6'
  
  Scenario: Multiply one numbers
    Given I visit the calculator page for multiply
    And I fill in '2' for 'first_m'
    And I fill in '' for 'second_m'
    And I click on 'Multiply'
    Then I should see the number '0'

  Scenario: Multiply two negative numbers
    Given I visit the calculator page for multiply
    And I fill in '-2' for 'first_m'
    And I fill in '-3' for 'second_m'
    And I click on 'Multiply'
    Then I should see the number '6'

  Scenario: Multiply a negative by a positive
    Given I visit the calculator page for multiply
    And I fill in '-2' for 'first_m'
    And I fill in '3' for 'second_m'
    And I click on 'Multiply'
    Then I should see the number '-6'

  Scenario: Multiply no numbers
    Given I visit the calculator page for multiply
    And I fill in '' for 'first_m'
    And I fill in '' for 'second_m'
    And I click on 'Multiply'
    Then I should see the number '0'