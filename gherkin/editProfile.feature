Feature: Edit profile functionality
    As a user
    I want to edit my profile
    So that I can keep my information up-to-date

    Scenario: Succesful profile edit with no password or email change  
        Given I am on the edit profile page
        When I enter valid updated profile information with no changes to password or email
        And I click the save button
        Then I should see a success message that says "Your profile has been updated"
        And I should be redirected  to my new profile page
    
    Scenario: Succesful profile edit with password or email change
        Given I am on the edit profile page
        When I enter valid updated profile information with changes to password or email
        And I enter the correct current password
        And I click the save button
        Then I should see a success message that says "Your profile has been updated"
        And I should be redirected  to my new profile page

    Scenario: Edit profile with invalid image size
        Given I am on the edit profile page
        When I upload a profile image that is larger than 2MB
        And I click the save button
        Then I should see an error message that says "The image is too large"
         
    Scenario: Passwords do not match
        Given I am on the edit profile page
        When I enter a new password
        And I enter a different password in the confirm password field
        And I provide the correct current password
        And I click the save button
        Then I should see an error message that says "The passwords do not match"

    Scenario: Email is already taken
        Given I am on the edit profile page
        When I enter an email that is already taken
        And I provide the correct current password
        And I click the save button
        Then I should see an error message that says "The email has already been taken"

    Scenario: Current password is wrong
        Given I am on the edit profile page
        When I enter valid updated profile information with changes to password or email
        And I provide the wrong current password
        And I click the save button
        Then I should see an error message that says "The current password is incorrect"