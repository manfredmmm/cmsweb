Feature: User can login
  In order to use the application
  As a teacher
  I want to login

  Scenario: I want browse for
    Given I am not logged in
    When I am log in
    Then I should I am logged in
    And I should be on home page
