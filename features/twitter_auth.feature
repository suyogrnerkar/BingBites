Feature: Twitter auth
  In order to sign in using Twitter
  As a Twitter user
  I want to click an icon and be signed in

  Background:
    Given we are mocking a successful Twitter response

  Scenario: Signing in with Twitter
    Given I am on the homepage
    When I click on "Twitter"
    Then I should be signed in
    
    
  Scenario: Log Out
    Given I am on the list page
    When I click on "LOG OUT" button
    Then I should be on the homepage
 
  Scenario: List the menu items
    Given I am on the list page
    Then I should see "AMERICANO"


