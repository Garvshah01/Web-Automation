Feature: Tesing order place at Flipkart
    Scenario: Login into website
        Given I am on login page
        When I enter the email
        And I enter Password
        And I press Login
        Then I see my email
        And I see my password
        And Name changes to UserName
    
    Scenario: Searching and Selecting the item
        Given I am at HomePage
        When I typed in search box
        And I press search button
        Then I get types value in search box
        And I get the result
        

    