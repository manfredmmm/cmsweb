Feature: Teacher can add page on webspace
  In order to share some content
  As a teacher
  I want create new page

  @javascript
  Scenario: Create new page
    Given I am logged in
    And I visit my webspace section
    And I enter on webspace
    When I create a new page
    And I write a title for page
    Then I should see the new page
