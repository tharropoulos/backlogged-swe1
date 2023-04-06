Feature: Login functionality
    As a user
    I want to log in to my account
    So that I can access my home page

    Scenario: Succesful login with email and password
        Given I am on the login page
        When I enter valid email and password credentials
        And I click the login button
        Then I should be redirected to my home page
    
    Scenario: Succesful login with Discord
        Given I am on the login page
        When I click on the login with Discord button
        And I authorize the application to use my Discord credentials
        Then I should be redirected to my home page
        
    Scenario: Invalid email and password credentials
        Given I am on the login page
        When I enter invalid email and password credentials
        And I click the login button
        Then I should see an error message that says "The email/password combination is not correct"

    Scenario: Unsuccesful Discord login
        Given I am on the login page
        When I click on the login with Discord button
        And the authorization process of Discord fails
        Then I should see an error message that says "The Discord login was unsuccesful, please try again or choose another form of login"

    