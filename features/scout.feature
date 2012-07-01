@selenium
Feature: Run Scout

  Scenario: Run Scout without logging in
    Given I am on the home page
    And I am not logged in
    When I start a Scout session
    Then I should be given a Scout trial run
