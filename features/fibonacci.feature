Feature: Fibonacci number sequences

  Scenario: Default sequence initiated
    When a fibonacci sequence is started
    Then the next number should be 1

  Scenario: Initialized with a legitimate fibonacci number
    Given a fibonacci sequence initialized to 8
    Then the next number should be 13
    
  Scenario: Sequence is initialized and skipped
    Given a fibonacci sequence initialized to 2
    When the sequence is skipped 3 times
    Then the state should be "The current number is 8"
    And the next number should be 13

  Scenario: Initialized with a illegitimate fibonacci number
    Given a fibonacci sequence to an illegitimate initialized number 7
    Then it will throw an exception

  Scenario: fibonacci is started and skipped a large amount
    Given a fibonacci sequence is started
    When the sequence is skipped 30 times
    Then the state should be "The current number is 1346269"
    And the next number should be 2178309

  Scenario: fibonacci iniatialised to a legitimate number, then skipped and the finding the next number
    Given a fibonacci sequence initialized to 2
    When the sequence is skipped 4 times
    Then the next number should be 21

  Scenario: Iniatialising the fibonacci with a decimal number
    Given a fibonacci sequence initialized with a float integra to 2.2
    Then it will throw an exception