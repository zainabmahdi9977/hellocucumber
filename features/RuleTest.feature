
    Feature: Booking

  Rule: Booking option 
   

  Scenario: morning and Friday
    Given today is "Friday"  
    And Booking period is "morning"
    When save the Booking
    Then price will be 100
      Scenario: evening and Friday
    Given today is "Friday"
    And  Booking period is "evening"
    When save the Booking
    Then price will be 80
  Scenario: morning and Sunday
    Given today is "Sunday"  
    And Booking period is "morning"
    When save the Booking
    Then price will be 70
      Scenario: evening and Sunday
    Given today is "Sunday"
    And Booking period is "evening" 
    When save the Booking
    Then price will be 50