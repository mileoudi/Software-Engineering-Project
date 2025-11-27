Feature: Attempt a riddle
  
  Solver attempts to solve a riddle.
  
   Scenario: Riddle solved
    A success message is shown and the story continues to the next panel.
    Given the Solver has submitted an answer
    When the answer is correct 
    Then a success message is shown 
    And the story continues to the next panel
    
   Scenario: Riddle failed and reattempted with a hint
    A fail message is shown and the solver reattempts the riddle with a hint.
    Given the Solver has submitted an answer 
    When the answer is incorrect
    Then a fail message is shown
    And the solver accepts the hint
    And a hint message is shown
    And Solver reattempts the riddle
    
   Scenario: Riddle failed and reattempted without a hint
    A fail message is shown and the solver reattempts the riddle without a hint.
    Given the Solver has submitted an answer 
    When the answer is incorrect
    Then a fail message is shown
    And the solver declines the hint
    And Solver reattempts the riddle
    
   Scenario: Final riddle solved
    A success message is shown and the story ends.
    Given the Solver has submitted an answer
    When the answer is correct 
    Then a success message is shown 
    And the story ends
    And the Solver is redirected to the Home Page
     