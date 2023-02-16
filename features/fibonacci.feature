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
    When the sequence is skipped 300 times
    Then the state should be "The current number is 137347080577163115432025771710279131845700275212767467264610201"
    And the next number should be 222232244629420445529739893461909967206666939096499764990979600

  Scenario: fibonacci iniatialised to a legitimate number, then skipped and the finding the next number
    Given a fibonacci sequence initialized to 2
    When the sequence is skipped 4 times
    Then the next number should be 21

  Scenario: Iniatialising the fibonacci with a decimal number
    Given a fibonacci sequence initialized to 2.2
    Then it will throw an exception