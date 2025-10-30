# Xplore Web Application - Software Engineering Project
<p align="center">
  <img src=".\Mockups\Xplore_logo.png" alt="Xplore Logo" width="200"/>
</p>

## 📚 Overview

**Xplore** is an educational storytelling web application developed as part of aν ΑUTH university course on Software Engineering. Inspired by the graphic novel *"Ποιός σκότωσε τον κ. Χ;"*, the platform allows interactive learning through stories, riddles, and character-driven progress.

The project follows a **Design-First API** approach and adheres to the **OpenAPI 3.0.4 specification**.

---

## 🧠 Functional Features

-  **Gamemaster**: Can browse stories and panels, invite solvers, and add riddles.
- **Solver**: Accepts invitations and solves riddles.
- **Story Flow**: Users proceed through stories using narrative panels.
- **Custom Riddles**: Gamemasters can create or fetch riddles from the database.

---

## 📦 Project Deliverables

The development of the project followed a structured process organized in **three main deliverables**:

### Deliverable 1

- Collection of **User Requirements**
- Definition of **User Stories**
- Design of **Use Case Diagrams**
- Creation of **Activity Diagrams** for key functionalities

### Deliverable 2

- Design of the **Class Diagrams**
- Implementation of **Sequence Diagrams** to model system interactions

### Deliverable 3

- Definition and implementation of the **RESTful API**
- Documentation of the API using **OpenAPI (Swagger)**
- Organized project structure based on a **Design-First** approach
---

## 📂 Repository Structure
```
├── Descriptions/ 
│ ├── EBC/
│ ├── Requirements/
├── Diagrams/
│ ├── ActivityDiagrams/
│ ├── ClassDiagrams/
├── Swagger/
│ ├── api.json
│ └── comonents.json
└── README.md
```

---

## API Specification

The full OpenAPI spec is defined in [`initial.json`](./initial.json), describing endpoints such as:

- `POST /user`: Create new user (solver or gamemaster)
- `GET /user/{id}/story/{story-id}/panel`: View panels
- `PUT /user/{id}/invitation/{invitation-id}`: Respond to invitations
- `POST /user/{id}/story/{story-id}/riddle`: Add custom riddles
- `GET /user/{id}/answer`: Retrieve answers by solvers

---

## 🛠️ Technologies Used

- **OpenAPI 3.0.4**
- **Swagger UI / Editor**
- **JSON/YAML Schema Design**
- **UML Diagrams** (Activity, Class, Use Case)
## 📄 License


