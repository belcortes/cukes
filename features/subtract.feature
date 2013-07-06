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
  
  Scenario: Subtract only first number
    Given I visit the calculator page for add
    And I fill in '50' for 'first_s'
    And I fill in '' for 'second_s'
    And I click on 'Subtract'
    Then I should view '50'

  Scenario: Subtract only second number
    Given I visit the calculator page for add
    And I fill in '' for 'first_s'
    And I fill in '10' for 'second_s'
    And I click on 'Subtract'
    Then I should view '-10'
  
  Scenario: Subtract bigger number from small number
    Given I visit the calculator page for add
    And I fill in '5' for 'first_s'
    And I fill in '10' for 'second_s'
    And I click on 'Subtract'
    Then I should view '-5'

  Scenario: Subtract no numbers
    Given I visit the calculator page for add
    And I fill in '' for 'first_s'
    And I fill in '' for 'second_s'
    And I click on 'Subtract'
    Then I should view '0'