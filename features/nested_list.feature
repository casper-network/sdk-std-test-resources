Feature: Nested CL List Values

  Scenario: Nested Lists
    Given a list is created with U512 values of (1, 2, 3)
    Then the list's bytes are "000000000000"
    And the list's length is 3
    And the list's "1st" item is a CLValue with U512 value of 1
    And the list's "2nd" item is a CLValue with U512 value of 2
    And the list's "3rd" item is a CLValue with U512 value of 3
