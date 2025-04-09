Feature: Booking

  Background: 
    Given today is "Friday"

  Scenario: morning
    Given Booking period is "morning"
    When save the Booking
    Then price will be 100

  Scenario: evening
    Given Booking period is "evening"
    When save the Booking
    Then price will be 80