@selenium
Feature: Run a test straight from the home page

  @wip
  Scenario: Start running test from the home page
    Given I am on the home page
    When I try to run a test
    Then I should be asked to create an account
