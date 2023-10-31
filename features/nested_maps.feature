Feature: Nested CL Map Values

  Scenario: Nested Maps
    Given a map is created {"ONE": 2}
    Then the map's bytes are "01000000030000004f4e4502000000"
    Given a map is created {"ONE": 2, "TWO": {"THREE": 4}}
    Then the map's bytes are "02000000030000004f4e45020000000300000054574f0100000005000000544852454504000000"
    Given a map is created {"ONE": 2, "TWO": {"THREE": 4, "FIVE": {"SIX": 7}}}
    Then the map's bytes are "02000000030000004f4e45020000000300000054574f02000000050000005448524545040000000400000046495645010000000300000053495807000000"
    Given that the nested map is deployed in a transfer
    And the transfer containing the nested map is successfully executed
