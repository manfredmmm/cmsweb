Feature: Teacher create a webspace
  In order to I want create webspace
  As a teacher
  I want to create a new webspace

  @javascript
  Scenario: Create webspace
    Given I am logged in
    When I create a webspace
    And I fill in the index page
    Then I should see the webspace with one page
