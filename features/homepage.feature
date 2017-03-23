Feature: Homepage for Bing Bites
  
  As a user 
  So that I can get an overview of the product, team members, social connect.

Scenario: Go to HomePage
   Given I am on the home page
   When I click on the link
   Then I should see the Welcome message


Scenario: Product description
   Given I am on the home page
   When I click on the product desc
   Then I should see the product info

Scenario: Team members
   Given I am on the home page
   When I click on the "team members"
   Then I should see the team members

Scenario: Social Connect
   Given I am on the home page
   When I click on the single sign up
   Then I should goto homepage


Scenario: Visiting the sign up page
    Given I am on the home page
    Then I should see the sign up button
    
Scenario: Visiting the sign in page
    Given I am on the home page
   Then I should see the twitter button
