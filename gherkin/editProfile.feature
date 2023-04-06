Feature: Edit profile functionality
    As a user
    I want to edit my profile
    So that I can keep my information up-to-date

    Scenario: Succesful profile edit  
        Given I am on the edit profile page
        When I enter valid updated profile information
        And I click the save button
        Then I should see a success message that says "Your profile has been updated"
        And I should be redirected  to my new profile page

    Scenario: Edit profile with invalid image size
        Given I am on the edit profile page
        When I upload a profile image that is larger than 2MB
        Then I should see an error message that says "The image is too large"
         
    Scenario: Passwords do not match
        Given I am on the edit profile page
        When I enter a password
        And I enter a different password in the confirm password field
        And I click the save button
        Then I should see an error message that says "The passwords do not match"