


  Feature: Booking

 

    Scenario Outline: Booking on different days
      Given today is "<day>"
      And Booking period is "<period>"
      When save the Booking
      Then price will be <price>

    Examples:
      | day     | period   | price |
      | Friday  | morning  | 100   |
      | Friday  | evening  | 80   |
      | Sunday  | morning  | 70    |
      | Sunday  | evening  | 50    |
