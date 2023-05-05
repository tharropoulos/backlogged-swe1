Feature: Review games and rate them
  As a user
  I want to review games and optionally give them a rating
  So that I can share my thoughts and opinions with others

  Scenario: Review a game without rating
    Given I am on a game's page
    When I write a review for the game
    And I submit the review
    Then I should see a success message
    And my review should be visible on the game's page
    And the review should not have a rating yet

  Scenario: Review a game with rating
    Given I am on a game's page
    When I write a review for the game
    And I give the game a rating of 4 stars
    And I submit the review
    Then I should see a success message
    And my review should be visible on the game's page
    And the review's rating should be updated to 4 stars
    And the game's average rating should be updated based on my rating
