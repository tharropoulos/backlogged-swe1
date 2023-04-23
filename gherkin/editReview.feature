Feature: Edit review or rating for a game
  As a user
  I want to edit my review or rating for a game
  So that I can rewrite my review or change my rating

  Scenario: Edit review
    Given I am on a game's page
    And I have written a review for a game
    When I am on my review
    And I click on the "Edit" button
    Then I should be able to update the review text
    And when I submit my changes
    Then I should see a success message
    And I should see the updated review on the game's page

  Scenario: Edit rating
    Given I am on a game's page
    And I have rated a game
    When I am on my review
    And I click on the "Edit" button
    Then I should be able to update my rating
    And when I submit my changes
    Then I should see a success message
    And I should see the updated rating on the game's page