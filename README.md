# Xplore Web Application - Software Engineering Project
<p align="center">
  <img src=".\Mockups\Xplore_logo.png" alt="Xplore Logo" width="200"/>
</p>

## Overview

**Xplore** is an educational storytelling web application developed as part of aν ΑUTH university course on Software Engineering. Inspired by the graphic novel *"Ποιός σκότωσε τον κ. Χ;"*, the platform allows interactive learning through stories, riddles, and character-driven progress.

The project follows a **Design-First API** approach and adheres to the **OpenAPI 3.0.4 specification**.

> The project was initially developed on the [Usereq](<https://usereq.issel.ee.auth.gr/>) platform, where the course deliverables were submitted.
---

## Repository Structure
```
├── Descriptions/ 
│ ├── EBC/
│ ├── Requirements/
├── Diagrams/
│ ├── ActivityDiagrams/
│ ├── ClassDiagrams/
│ ├── DesignPatterns/
│ ├── SequenceDiagrams/
│ └── UseCaseDiagrams/
├── Mockups/ 
├── UserStories/ 
├── ApiSpecification/
```

---

## API Specification
The full OpenAPI spec is defined in [`api.json`](./api.json), describing endpoints such as:

- `POST /user`: Create new user (solver or gamemaster)
- `GET /user/{id}/story/{story-id}/panel`: View panels
- `PUT /user/{id}/invitation/{invitation-id}`: Respond to invitations
- `POST /user/{id}/story/{story-id}/riddle`: Add custom riddles
- `GET /user/{id}/answer`: Retrieve answers by solvers

---

## Technologies Used

- **OpenAPI 3.0.4**
- **Swagger UI / Editor**
- **JSON/YAML Schema Design**
- **UML Diagrams** (Activity, Class, Use Case

## Development
- *[Xplore Frontend]* **Frontend Github Repository**:https://github.com/mileoudi/XploreFrontend
- *[Xplore Backend]* **Backend Github Repository**: https://github.com/mileoudi/XploreBrontend

