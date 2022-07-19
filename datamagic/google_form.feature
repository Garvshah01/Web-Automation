Feature: Testing Google form
  Scenario: Fill Google form with auto generated values
    Given I am at Google form page
    When Form is filled and Submit Button is click
    Then The response is submitted