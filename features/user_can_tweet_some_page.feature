Feature: Teacher can tweet some page
  In order to share some content
  As a teacher
  I want create twitter message

  @javascript
  Scenario: Create tweet
    Given I am logged in
    And there is a one webspace
    And I visit some webspace
    When I want share some page content
    Then I write tweet
