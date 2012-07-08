@selenium
Feature: Invalid users should not be able to log in

  Scenario: Invalid login
    Given I am a registered user
    And I have an invalid password
    When I attempt to log into the site
    Then I should be told my credentials are invalid
