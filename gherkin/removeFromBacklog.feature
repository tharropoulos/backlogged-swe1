Feature: Remove game from backlog
    As a user
    I want to remove a game from my backlog
    So that I can keep track of the games I want to play

    Scenario: Remove game from backlog
        Given I am on my profile page
        And there is a list of the games in my backlog
        When I click the "Remove from backlog" button
        Then the game should be removed from my backlog
        And I should see the remaining games in my backlog
    
    