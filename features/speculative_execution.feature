Feature: speculative_execution

  Scenario: speculative_execution
    Given that a deploy is executed against a node using the speculative_exec RPC API
    Then a valid speculative_exec_result will be returned
    And the speculative_exec has an api_version of "1.0.0"
    And the speculative_exec has a valid block_hash
    And the execution_results contains a cost of 100000000
    And the speculative_exec has a valid execution_result
    And the speculative_exec execution_result contains a valid transfer transform
    And the speculative_exec execution_result contains a valid deploy transform
    And the speculative_exec execution_result contains a valid balance transform
    And the speculative_exec execution_result contains a valid AddUInt512 transform with a value of 100000000
