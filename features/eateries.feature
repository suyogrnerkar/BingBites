Feature: EATERIES LISTING PAGE
  
  As a user 
    So that I can see the list of eateries.

Background:
  Given we authenticate with "Twitter" mock api
  And I am on the list page

Scenario: Search Bar exists
  Then I should see the Search Bar

Scenario: Events link exists
  Then I should see the "Events" link

Scenario: Nightlife link exists
  Then I should see the "Nightlife" link

Scenario: New Listing link exists
  Then I should see the "New Listing" link

Scenario: Trending link exists
  Then I should see the "Trending" link

Scenario: Deals link exists
  Then I should see the "Deals" link

Scenario: Drive Thru link exists
  Then I should see the "Drive Thru" link

Scenario: Location exists
  Then I should see the Location
