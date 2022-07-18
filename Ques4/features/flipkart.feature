Feature: Login
  Scenario: Login into flipkart website
    Given We are at flipkart website
    When We enter email address
    And We enter the password
    And Click Login button
    Then I see my email
    And I see my password
    And Name changes to UserName

   Scenario: Searching and Selecting the item
        Given I am at HomePage
        When I typed in search box
        And I press search button
        Then I get types value in search box
        And I get the result