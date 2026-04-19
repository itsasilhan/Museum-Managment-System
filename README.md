#  Museum Management System

This project is a fully designed Database Management System (DBMS) for managing museum operations. It was built from scratch, including database architecture, entity relationships, business logic, and a user interface

---

##  Project Overview

The goal of this project is to design and implement a system that:

- Stores museum data (collections, artworks, staff, exhibitions, conservation)
- Maintains data integrity using relational database principles
- Supports analytics and report generation
- Provides a user-friendly interface for interacting with the database

---

##  System Architecture

The system follows a **three-layer architecture**:

###  Data Layer
- Relational tables with real generated data  
- Views for structured data access  

###  Logic Layer
- PL/SQL functions  
- Procedures  
- Packages  
- Triggers  

###  UI Layer
- Oracle APEX (App Builder)  
- Forms, reports, and action buttons (insert, delete, search)  

---

##  Database Design

The system includes **11 interconnected tables**, representing real-world museum operations:

### Core Entities:
- Museums  
- Collections  
- Artworks  
- Artists  
- Staff  
- Departments  

### Relationships:
- Museum → Collections → Artworks  
- Departments → Staff  

All tables are connected using **primary and foreign keys**, ensuring data integrity.

---

##  Implementation

- Each table contains **100+ rows of realistic data**  
- Data was generated to simulate real museum operations  
- The database is fully functional and ready for analytical queries  

---

##  SQL & PL/SQL Features

The project includes:

- **20+ SQL queries** for real-world use cases  
- PL/SQL functions and procedures  
- Cursors for iterative operations  
- Triggers for automation and integrity  

### Examples:
- Calculate the size of collections for each museum  
- Count the number of artworks per artist  
- Generate analytical reports  

---

##  Application Interface (Oracle APEX)

An interactive interface was built using **Oracle APEX App Builder**:

### Features:
- View and search data  
- Insert and delete records  
- Execute predefined database actions  
- Generate reports  

 The UI allows users to interact with the system **without direct database access**, ensuring safety and usability

---

##  Analytical Capabilities

The system supports:

- Collection size analysis  
- Artist productivity tracking  
- Museum-level reporting  
- Data-driven decision making  

---

##  Key Concepts Applied

- Database design from scratch  
- Entity-Relationship Diagram (ERD)  
- Normalization  
- Data integrity (PK/FK constraints)  
- Modular architecture  

---

##  Technologies Used

- SQL  
- PL/SQL  
- Oracle Database  
- Oracle APEX  

---

## Final Result

- Fully implemented DBMS  
- Structured and normalized database  
- 20+ real-world queries  
- Interactive application interface  

---



