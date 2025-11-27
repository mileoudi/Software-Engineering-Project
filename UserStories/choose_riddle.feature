Feature: Choose riddle
  
  Gamemaster chooses one of the riddles for the story
  
  Scenario: Choose default riddle
    The story is set with the default riddle.
    Given the Gamemaster has chosen a story
    When the options appear to the screen
    Then the Gamemaster chooses the default riddle option
    And the story is set with the default riddles
    
  Scenario: Choose a riddle from the Database
    The Gamemaster chooses riddle from the Database 
    Given the Gamemaster has chosen a story
    When the options appear to the screen
    Then the Gamemaster chooses the Database option
    And the Gamemaster chooses a riddle from the Database
    And the story is set with the Database riddles
    
   Scenario: Choose a custom riddle
    The Gamemaster creates a custom riddle
    Given the Gamemaster has chosen a story
    When the options appear to the screen
    Then the Gamemaster chooses the custom riddle option
    And the Gamemaster creates the riddle
    And the story is set with the custom riddles