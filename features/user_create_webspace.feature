Feature: Teacher create a webspace
  In order to share some content with webspace
  As a teacher
  I want to create a new webspace

  @javascript
  Scenario: Create webspace
    Given I am logged in
    When I create a webspace
    And I save the index page
    Then I should see the webspace with one page
