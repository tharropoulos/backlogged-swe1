Feature: Search a game by its title
  As a user
  I want to search a game by its title
  So that I can find the game

  Scenario: Search a game which doesn't exist in the database or it is written wrongly
    Given I am on the home page
    When I enter invalid (it doesn't exist or it is written wrongly) title in the search bar
    And I click the search button
    Then I should see an error message that says "The game with the title you provided does not exist"

  Scenario: Search a game which exists and it is written correctly
    Given I am on the home page
    When I enter valid (it exists and it is written correctly) title in the search bar
    And I click the search button
    Then I should be redirected to the game's page