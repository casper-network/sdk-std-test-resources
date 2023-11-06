Feature: Option Values

  Scenario: Option Values
    Given that an option value has an empty value
    Then the option value is not present
    And the option value bytes are ""

    Given that an option value has a "String" value of "The quick brown fox jumps over the lazy dog"
    Then the option value is present
    And the option value bytes are "012b00000054686520717569636b2062726f776e20666f78206a756d7073206f76657220746865206c617a7920646f67"
    And that an option value has a "Bool" value of "true"


