Feature: Homepage for BingBites
  
  As a user 
  So that I can get an overview of the product, team members, social connect.

Scenario: Go to HomePage
   Given I am on the home page
   When I click on the BingBites
   Then I should be on the home page
   And I should see the Welcome message

Scenario: Product description
   Given I am on the home page
   Then I should see the product info

Scenario: Team members
   Given I am on the home page
   Then I should see The Team

Scenario: Social Connect
   Given I am on the home page
   Then I should see the social connect
    
Scenario: Visiting the Sign In page
    Given I am on the home page
    Then I should see the twitter button
