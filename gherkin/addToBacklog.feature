Feature: Add game to backlog
    As a user
    I want to add a game to my backlog
    So that I can keep track of my games

    Scenario: Add game to backlog
        Given I am on the game page
        When I click on the "Add to backlog" button
        Then I should the "Add to backlog" button should be replaced by a "Remove from backlog" button
        And I should see the game in my backlog

    Scenario: Game already in backlog
        Given I am on the game page
        And the game is already in my backlog
        Then I should see the "Remove from backlog" button