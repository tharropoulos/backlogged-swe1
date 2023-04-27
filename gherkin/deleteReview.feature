Feature: Delete a review for a game
  As a user 
  I want to delete my review for a game
  So that I can remove my review from the game page.
  
Scenario: Delete review
    Given I am on game's page
    And I have already written a review for a game
    When I click on the "More" button on the review 
    And I click "Delete" button on the context menu
    And I click the "Delete" button on the confirmation modal
    Then I should see a success message
    And the review should be removed from the game page
    
Scenario: Cancel Deletion
    Given I am on game's page
    And I have already written a review for a game
    When I click on the "More" button on the review 
    And I click "Delete" button on the context menu
    And I click the "Cancel" button on the confirmation modal
    Then the review should still be visible on the game page