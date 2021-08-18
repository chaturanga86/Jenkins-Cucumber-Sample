#Smoke#Regression
  Feature: User Login
    Scenario: Sucessful Login
      Given User is on the "Home" page on URL "http://automationpractice.com/index.php"
      When User click on "Sign In" link
      When User fill in "Email" with "testbdd@gmail.com"
      And User fill in "Password" with "test@123"
      And User click on the "Sign In" button
      Then User should be on the "My Account" page on URL "http://automationpractice.com/index.php?controller=my-account"
      And User should see "Welcome to your account" message
      And User should see the "Sign out" button
      And User close the browser

    Scenario Outline: Multiple User Login
      Given User is on the "Home" page on URL "http://automationpractice.com/index.php"
      When User click on "Sign In" link
      When User fill in login credentials with "<email>" and "<password>"
      And User click on the "Sign In" button
      Then User should be on the "My Account" page on URL "http://automationpractice.com/index.php?controller=my-account"
      And User should see "Welcome to your account" message
      And User should see the "Sign out" button
      And User close the browser

      Examples:
      |email            |password|
      |testbdd@gmail.com|test@123|
      |testbdd@gmail.com|test@1234|