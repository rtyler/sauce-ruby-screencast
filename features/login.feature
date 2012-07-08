@selenium
Feature: A user should be able to log in
  As a registered user
  I should always be able to log into the site
  In order to access my past tests, etc.

  Scenario: Valid login
    Given I am a registered user
    When I attempt to log into the site
    Then I should be logged in
