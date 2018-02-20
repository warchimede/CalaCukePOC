Feature: Get information
  As a user
  I want to be able to tap on a button
  So I can see information in a popup

  Scenario: Tap on the button shows popup
    Given I am on the welcome screen
    When I touch the button
    Then I see the text "Tap"
