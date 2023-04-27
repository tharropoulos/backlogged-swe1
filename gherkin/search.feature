Feature: Search a game by title
    As a user
    I want to search for games by title
    So that I can find specific games

    Scenario: Search for a game by exact title match
        Given I am on the home page
        When I type "The Legend of Zelda: Breath of the Wild" into the search bar
        And I click the search button
        Then I should see a list of search results that includes "The Legend of Zelda: Breath of the Wild"
    
    Scenario: Search for games by partial title match
        Given I am on the home page
        When I type "Mario" into the search bar
        And I click the search button
        Then I should see a list of search results that includes games with "Mario" in their title
    
    Scenario: No search results found
        Given I am on the home page
        When I type "abcdefg" into the search bar
        And I click the search button
        Then I should see a message that says "No search results found"