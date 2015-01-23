Feature: I would like to edit Wydzial

  Scenario Outline: Insert records
    Given I am on homepage
    And I follow "Login"
    And I fill in "Username" with "admin"
    And I fill in "Password" with "loremipsum"
    And I press "Login"
    And I go to "/admin/pupil"
    Then I should not see "<surname>"
    And I follow "Create a new entry"
    Then I should see "Wydzial creation"
    When I fill in "Name" with "<name>"
    
    And I press "Create"
   
  Examples:
    | name                          |
    | WYDZIAL RECORD Informatyczny  |
    | WYDZIAL RECORD Matematyczny   |
    | WYDZIAL RECORD Humanistyczny  |


  Scenario Outline: Edit records
    Given I am on homepage
    And I follow "Login"
    And I fill in "Username" with "admin"
    And I fill in "Password" with "loremipsum"
    And I press "Login"
    And I go to "/admin/wydzial"
    When I follow "Edit"
    And I fill in "Name" with "<new-name>"
    And I press "Update"
    And I follow "Back to the list"

  Examples:
    | new-name                        |
    | NEW WYDZIAL RECORD Mechaniczny  |


  Scenario Outline: Delete records
    Given I am on homepage
    And I follow "Login"
    And I fill in "Username" with "admin"
    And I fill in "Password" with "loremipsum"
    And I press "Login"
    And I go to "/admin/wydzial"
    Then I should see "<name>"
    When I follow "<name>"
    Then I should see "<name>"
    When I press "Delete"
    Then I should not see "<name>"

  Examples:
    | name                               |
    | WYDZIAL RECORD Informatyczny       |
    | WYDZIAL RECORD Matematyczny        |
    | NEW WYDZIAL RECORD Psychologiczny  |