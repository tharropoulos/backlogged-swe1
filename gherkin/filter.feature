Feature: Filter games based on some properties
    As a user
    I want to filter games based on some properties
    So that I can find easier the games that I'm interested in

    Scenario: Filter games by developer studio
    Given I am on the homepage of the app
    And I have selected "Filter by developer studio"
    When I select one or more specific developer studios from the list of available studios
    Then I should only see games developed by this studio

    Scenario: Filter games by genre
    Given I am on the homepage of the app
    And I have selected "Filter by genre"
    When I select one or more specific genres from the list of available genres
    Then I should only see games categorized as this genre

    Scenario: Filter games by franchise
    Given I am on the homepage of the app
    And I have selected "Filter by franchise"
    When I select one or more franchises from the list of available franchises
    Then I should only see games in the specific's franchise

    Scenario: Filter games by platform
    Given I am on the homepage of the app
    And I have selected "Filter by platform"
    When I select one or more platforms from the list of available platforms
    Then I should only see games that can be played on this specific platform