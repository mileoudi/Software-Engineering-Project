Feature: Enter Story
  
  Solver enters a story
  
  Scenario: Solver chooses a default story
    Given the Solver is in the HomePage
    When the Solver chooses a story from the default story options
    Then the Solver views the first panel of the story
    
  Scenario: Solver enters a story from invitation
    Given the Gamemaster has sent an invitation 
    And the invitation pop up window appears
    When the Solver accepts the invitation
    Then the invitation pop up window disappears
    And the Solver views the first panel of the Gamemaster's story
     
  Scenario: Solver declines entering a story from invitation
    Given the Gamemaster has sent an invitation
    And the invitation pop up window appears
    When the Solver declines the invitation
    Then the invitation pop up window disappears
    