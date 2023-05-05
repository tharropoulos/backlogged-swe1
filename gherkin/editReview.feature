Feature: Edit review or rating for a game
  As a user
  I want to edit my review or rating for a game
  So that I can rewrite my review or change my rating

  Scenario: Edit review text and rating
    Given I am on a game's page
    And I have already written a review for a game
    When I click on the "More" button on my review
    And I click on the "Edit" button
    And I change my review's rating and text
    And I click on the "Save" button
    Then I should see a success message
    And I should see the updated review and rating on the game's page

  Scenario: Edit rating
    Given I am on a game's page
    And I have already written a review for a game
    When I click on the "More" button on my review
    And I click on the "Edit" button
    And I change my review's rating
    And I click on the "Save" button
    Then I should see a success message
    And I should see the updated rating on the game's page
  
  Scenario: Edit review text
    Given I am on a game's page
    And I have already written a review for a game
    When I click on the "More" button on my review
    And I click on the "Edit" button on the context menu
    And I update the review text
    And I click on the "Save" button
    Then I should see a success message
    And I should see the updated review on the game's page
