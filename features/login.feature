@selenium
Feature: A user should be able to log in
  As a registered user
  I should always be able to log into the site
  In order to access my past tests, etc.


  Scenario: Invalid login
    Given I am a registered user
    And I have an invalid password
    When I attempt to log into the site
    Then I should be told my credentials are invalid

  Scenario: Valid login
    Given I am a registered user
    When I attempt to log into the site
    Then I should be logged in
