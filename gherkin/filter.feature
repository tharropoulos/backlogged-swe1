Feature: Filter search results
    As a user
    I want to filter my search results
    So that I can find specific games based on their developer, franchise, platforms, or publisher

    Scenario: Filter search results by developer
        Given I am on the search results page
        When I click on the "Filter" button
        And I select "Nintendo" as the developer filter
        And I click the apply filter button
        Then I should see a list of search results that includes games developed by Nintendo
    
    Scenario: Filter search results by franchise
        Given I am on the search results page
        When I click on the "Filter" button
        And I select "Super Mario" as the franchise filter
        And I click the apply filter button
        Then I should see a list of search results that includes games from the Super Mario franchise
    
    Scenario: Filter search results by platform
        Given I am on the search results page
        When I click on the "Filter" button
        And I select "Nintendo Switch" as the platform filter
        And I click the apply filter button
        Then I should see a list of search results that includes games available on the Nintendo Switch
    
    Scenario: Filter search results by genre
        Given I am on the search results page
        When I click on the "Filter" button
        And I select "Action" as the genre filter
        And I click the apply filter button
        Then I should see a list of search results that includes games of the Action genre
        
    Scenario: Filter search results by publisher
        Given I am on the search results page
        When I click on the "Filter" button
        And  I select "Electronic Arts" as the publisher filter
        And I click the apply filter button
        Then I should see a list of search results that includes games published by Electronic Arts
    
    Scenario: Multiple filters applied
        Given I am on the search results page
        And I click on the "Filter" button
        And I select "Ubisoft" as the developer filter
        And I select "Assassin's Creed" as the franchise filter
        And I select "PlayStation 5" as the platform filter
        And I click the apply filter button
        Then I should see a list of search results that includes Assassin's Creed games developed by Ubisoft and available on PlayStation 5
