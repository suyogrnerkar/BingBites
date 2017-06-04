Feature: Eateries listing page
  
  As a user 
    So that I can see the list of eateries.

Background:
  Given we are mocking a successful Twitter response

Scenario: Signing in with Twitter
    Given I am on the homepage
    When I follow "Twitter"
    Then I should be signed in