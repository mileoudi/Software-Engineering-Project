
# EBC Component Descriptions

> This document lists the **Packages** used for the EBC specification. Each Package consists of **Controllers**, **UI**, and **Entities** with descriptions and links to requirements where applicable.

---
## Riddle Package

### Controllers
#### `RiddleController`:
**Methods**
- `answer_riddle(): Answer` — Updates `Answer.answer_text` with the user's submission. **(R-12)**
- `choose_riddle_option(): RiddleType` — Selects the source/type of the riddle.
- `show_fail_message(): void` — Displays a failure message. **(R-15)**
- `show_success_message(): void` — Displays a success message. **(R-20)**
- `show_final_message(): void` — Shows a congratulations message when the final riddle of the story is solved.
- `create_custom_riddle(): Riddle` — Lets a `GamemasterAccount` create a custom riddle. **(R-22)** **(R-30)**
- `request_riddles_from_database(): List<Riddle>` — Fetches riddles from `RiddleDB`. **(R-24)** **(R-32)**
- `show_riddles(): void` — Presents available riddles in the UI.
- `upload_image(): void` — Uploads an image related to the riddle.
- `set_story(): void` — Sets a story using the chosen riddles.

### Entities
#### `RiddleEntity`:
**Attributes**
- `correct_answer: str` — The correct answer of the riddle.
- `riddle_type: RiddleType` — `CUSTOM | DEFAULT | DATABASE` (riddle origin).
- `answered: boolean` — Whether the solver has submitted an answer.
- `riddle_content: str`
- `id: int`

### UserInterface

#### `CreateRiddlesDialog`:
**Methods**
- `btnSubmitPress(): void` — Calls `Riddle.create_custom_riddle()` to create a new `Riddle`.
- `btnRiddleInput(1-3)Press(): void` — Allows the `GamemasterAccount` to input `Riddle.riddle_content`.
- `btnUploadImage(1-3)Press(): void` — Calls `Riddle.upload_image()`.

#### `ChooseDatabaseRiddleDialog`:
**Methods**
- `btnSubmitPress(): void` — Calls `Riddle.request_riddles_from_database()`.
- `btnDownArrowPress(): void` — Shows the next available `Riddle`.
- `btnExpandPress(): void` — Shows full details of the selected `Riddle`.

#### `FinalCongratulationsUI`:
**Methods**
- `btnReturnHomePress(): void` — Returns `GamemasterAccount` or `SolverAccount` to `HomePageUI`.

#### `RiddleOptionsDialog`:
**Methods**
- `btnChooseDefaultPress(): void` — Sets `Riddle.riddle_type = DEFAULT` via `choose_riddle_option()`.
- `btnChooseDatabasePress(): void` — Sets `Riddle.riddle_type = DATABASE` via `choose_riddle_option()`.
- `btnCreateRiddlePress(): void` — Sets `Riddle.riddle_type = CUSTOM` via `choose_riddle_option()`.

#### `AnswerRiddleDialog`:
**Methods**
- `btnRiddleAnswerInputPress(): void` — Solver types into `Answer.answer_text`.
- `btnEnterPress(): void` — Calls `Riddle.answer_riddle()` and then `Answer.check_answer()`.

#### `CorrectAnswerPopUp`:
**Methods**
- `btnContinueStoryPress(): void` — Calls `Story.browse_panels()` to show the next `Panel`.

#### `WrongAnswerPopUp`:
**Methods**
- `btnTryWithoutHintPress(): void` — Closes the pop‑up.
- `btnTryWithHintPress(): void` — Calls `Hint.show_hint_message()`.

---

## Hint Package

### Controllers
#### `HintController`:
**Methods**
- `show_hint_message(): void` — Displays a hint message.

### Entities
#### `HintEntity`:
**Attributes**
- `riddle: Riddle` — The riddle the hint refers to.
- `accepted: boolean` — Whether the solver accepted the hint.
- `hint_content: str`
- `id: int`

### UserInterface
#### `HintPopUp`:
**Methods**
- `btnCancelPress(): void` — Closes the pop‑up.
- `btnShrinkArrowsPress(): void` — Minimizes the pop‑up.

---

## Account Package

### Controllers
#### `AccountController`:
**Methods**
- `create_account(name, pass, id, email, exists=true): void` — Creates an account.
- `choose_role(): str` — Sets role to `GamemasterAccount` or `SolverAccount`. **(R-10)**
- `return_to_homepage(): void` — Navigates back to the homepage. **(R-19)**

### Entities
#### `AccountEntity`:
**Attributes**
- `name: str`, `password: str`, `id: int`, `email: str`, `exists: boolean`
- `role: str` — `GamemasterAccount` or `SolverAccount`.
- `chosen_story: Story`

#### `GamemasterAccountEntity`:
**Attributes**
- `invited_Solvers: List<SolverAccount>` — Solvers invited by the gamemaster.

### UserInterface
#### `HomePageUI`:
**Attributes**
- `btnChooseStory` — Button to select a story.
**Methods**
- `btnChooseStoryPress(): void` — Calls `Story.choose_story()`.
- `btnReturnHomePress(): void` — Redirects to `HomePageUI`.

#### `HomePageGamemasterUI`:
**Methods**
- `btnManageInvitationsPress(): void` — Calls `SolverAccount.invite_solver(solver_id)` to invite a solver.

#### `ChooseDatabaseRiddleDialog`:
(also listed under Riddle Package)
**Methods**
- `btnSubmitPress(): void` — Calls `Riddle.request_riddles_from_database()`.
- `btnDownArrowPress(): void` — Shows the next available `Riddle`.
- `btnExpandPress(): void` — Shows details of the selected `Riddle`.
---

## Invitation Package

### Controllers
#### `InvitationController`:
**Methods**
- `manage_invitation(): boolean` — Accepts or declines an invitation. **(R-29)**  
  - `true` → `Invitation.status = ACCEPTED`  
  - `false` → `Invitation.status = REJECTED`
- `show_invitation(): void` — Displays `InvitationPopUp` when `invite_solver()` is triggered. **(R-41)**

### Entities
#### `InvitationEntity`:
**Attributes**
- `from: GamemasterAccount` — Sender.
- `to: SolverAccount` — Receiver.
- `status: InvitationStatus` — `PENDING | ACCEPTED | REJECTED`.

### UserInterface
#### `InvitationPopUp`:
**Methods**
- `btnAcceptPress(): void` — Calls `Invitation.manage_invitation()` → `ACCEPTED`.
- `btnDeclinePress(): void` — Calls `Invitation.manage_invitation()` → `REJECTED`.
---

## Solver Account Package

### Controllers
#### `SolverAccountController`:
**Methods**
- `invite_solver(solver_id: int): Invitation` — Gamemaster searches by `SolverAccount.id` and sends an invitation. **(R-21)**
- `view_solver_answer(riddle: Riddle): void` — Views a solver's submitted answer for a given riddle. **(R-23)**

### Entities
#### `SolverAccountEntity`: 
**Attributes**
- `invited: boolean` — Whether an invitation has been received.
- `used_hints: int` — Number of hints used on a riddle.

---

## Answer Package

### Controllers
#### `AnswerController`:
**Methods**
- `check_answer(solver: SolverAccount): boolean` — Compares `Answer.answer_text` with `Riddle.correct_answer`; sets `Answer.is_correct`. **(R-14)**

### Entities
#### `AnswerEntity`:
**Attributes**
- `solver: SolverAccount`
- `riddle: Riddle`
- `answer_text: str`
- `is_correct: boolean`

---

## Story Package

### Controllers
#### `StoryController`:
**Methods**
- `choose_story(): Story` — Returns the selected story. **(R-11)**
- `browse_panels(): Panel` — Navigates to previous/next panel.

### Entities
#### `StoryEntity`:
**Attributes**
- `chosen: boolean`
- `id: int`
- `title: str`
- `panels: List<Panel>` — Comic images that make up the story.
- `riddles: List<Riddle>` — Riddles associated with the story. **(R-31)**

### UserInterface
#### `CorrectAnswerPopUp`:
**Methods**
- `btnContinueStoryPress(): void` — Calls `Story.browse_panels()`.

#### `StoryOptionsUI`:
**Methods**
- `btnRightArrow1Press()/2/3: void` — Call `Story.choose_story()` to set the story.
- `btnDownArrowPress(): void` — Shows the next available story.

#### `StoryPanelUI`:
**Methods**
- `btnLeftArrowPress(): void` — Previous panel via `browse_panels()`.
- `btnRightArrowPress(): void` — Next panel via `browse_panels()`.
