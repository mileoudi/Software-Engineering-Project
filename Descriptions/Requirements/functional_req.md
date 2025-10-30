
## Functional Requirements Table

| ID  | Title | Description | Stakeholder | Type | User Priority | System Priority |
|-----|-------|-------------|-------------|------|---------------|-----------------|
| R-10 | Choose role | User selects **gamemaster** or **solver**. | User | F | High | High |
| R-11 | Choose desired story | User selects which story to play. | User | F | High | High |
| R-12 | Submit riddle answer | Solver can type and submit an answer. | Solver | F | High | Medium |
| R-13 | View story panel-by-panel | Solver can only progress forward through panels. | Solver | F | High | Low |
| R-14 | Check answer correctness | System verifies answer vs. the set correct answer. | System | F | Medium | High |
| R-15 | Show fail message | System pops a message when the answer is wrong. | System | F | Medium | High |
| R-16 | Show next/previous panel | System can show the next/previous story panel. | System | F | High | Medium |
| R-17 | Ask for a hint | Solver can request a hint after a wrong answer. | Solver | F | Low | Low |
| R-19 | Return to homepage | User can return to the home page (cancels open progress). | User | F | Low | Low |
| R-20 | Show success message | System pops a message when the answer is correct. | System | F | Low | Low |
| R-21 | Invite solvers | Gamemaster can invite solvers after setting story & riddles. | Gamemaster | F | Medium | High |
| R-22 | Create custom riddle | Gamemaster can create a new riddle. | Gamemaster | F | Low | Low |
| R-23 | View invited solvers’ answers | Gamemaster can view answers of invited solvers. | Gamemaster | F | Low | Low |
| R-24 | Request riddles from DB | Gamemaster can fetch riddles from the database. | Gamemaster | F | Low | Low |
| R-27 | Browse all story panels | Gamemaster can browse back and forth through panels. | Gamemaster | F | Medium | Low |
| R-28 | Show hint message | System pops a hint message when a hint is asked. | System | F | Low | Medium |
| R-29 | Accept/decline invitation | Solver can accept or decline the gamemaster’s invitation. | Solver | F | High | Low |
| R-30 | Integrate custom riddle | Gamemaster can add a custom riddle into a story. | Gamemaster | F | Medium | Low |
| R-31 | Default riddles per story | System provides default riddles selectable by the gamemaster. | System | F | High | Medium |
| R-32 | Database provides riddles | Database layer exposes riddles to the system. | System | F | Medium | Low |
| R-39 | Redirect to Home Page | System can redirect the solver to the home page. | System | F | Low | Low |
| R-41 | Invitation pop‑up | System shows a pop‑up when the gamemaster sends an invitation. | System | F | Medium | Low |