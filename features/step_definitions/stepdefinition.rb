require 'uri'
require 'cgi'
require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "paths"))

    When(/^I click on the link$/) do
    visit root_path
    end

    Then(/^I should see the Welcome message$/) do
    expect(page).to have_content("Welcome to BingBites")
    end

    When(/^I click on the product desc$/) do
    visit root_path
    end
    
    Then (/^I should see the product info$/) do
    expect(page).to have_content("amazing experience")
    end
    
    When(/^I click on the "team members"$/) do
    visit root_path
    end
    
    Then (/I should see the team members$/) do
    expect(page).to have_content("The Team")
      end
    
    When(/^I click on the single sign up$/) do
    visit root_path
    end

    Then(/^I should goto homepage$/) do
    expect(page).to have_content("Welcome to BingBites")
    end
    
    
    Then(/^I should see the sign up button$/) do
    expect{ click_button "Sign Up" }
    end
    
    Then (/^I should see "([^"]*)" button/) do |name|
    find_button(name).should_not be_nil
    end

    Then(/^I should see the twitter button$/) do
    expect{ click_button "Twitter" }
    end
    
    Then (/^I should see "([^"]*)" button/) do |name|
    find_button(name).should_not be_nil
    end

