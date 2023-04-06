Feature: Sign up functionality
    As a user
    I want to create a new account
    So that I can access the application

    Scenario: Succesful sign up    
        Given I am on the sign up page
        When I enter valid sign up information
        And I check the accept the Terms of Service and Privacy Policy radio button
        And I click the sign up button
        Then I should be notified my account was created
        And I should be redirected to my home page

    Scenario: Sign up with existing email
        Given I am on the sign up page
        When I enter an email address that is already in use
        And I click on the sign up button
        Then I should see an error message that says "The email address is already in use"
        
    Scenario: Passwords do not match
        Given I am on the sign up page
        When I enter a password
        And I enter a different sign up password in the confirm password field
        And I click the sign up button
        Then I should see an error message that says "The passwords do not match"

    Scenario: Haven't accepted the Terms of Service
        Given I am on the sign up page
        When I haven't checkced the accept the Terms of Service and Privacy Policy radio button
        Then the sign up button should be disabled
        