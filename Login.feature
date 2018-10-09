Feature: Login feature
This feature tests for positive and negative login scenarios
#This is comments

Scenario: Positive Login Scenario
Given I am able to access magento web page
And I click on user icon
When I input the username as "natarajan.ramanathan93@gmail.com"
And I input the password as "Welcome123"
And I click on the login button
Then I should see the magento ID as "ID : MAG123123" 