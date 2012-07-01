@selenium
Feature: Subscribe straight from the home page

  Scenario: Start subscribe from home page
    Given I am on the home page
    When I subscribe
    Then I should see the pricing plans

