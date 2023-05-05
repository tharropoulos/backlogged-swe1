Feature: Manage backlog
    As a user
    I want to manage my backlog
    So that I can keep track of my games

    Scenario: Add game to backlog
        Given I am on the game page
        When I click on the "Add to backlog" button
        Then I should see a confirmation message
        And I should see the game in my backlog when I go to my backlog

    Scenario: Remove game from backlog
        Given I am on the game page
        And the game is already in my backlog
        When I click on the "Remove from backlog" button
        Then I should see a confirmation message
        gnd I should not see the game in my backlog when I go to my backlog