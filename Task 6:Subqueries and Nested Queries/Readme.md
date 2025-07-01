# Task 6: Subqueries and Nested Queries

## 📌 Objective
The goal of this task is to strengthen SQL skills by using **subqueries** (scalar, correlated, and in `FROM`, `WHERE`, `SELECT` clauses) on a sample database.

---

## 🛠 Tools Used
- MySQL Workbench / DB Browser for SQLite
- Custom SQL database named: `practice`

---

## 🧱 Database Schema

### 1. `departments`
| Column           | Type         |
|------------------|--------------|
| department_id     | INT (PK)     |
| department_name   | VARCHAR(100) |

### 2. `employees`
| Column         | Type         |
|----------------|--------------|
| emp_id         | INT (PK)     |
| name           | VARCHAR(100) |
| department_id  | INT (FK)     |
| salary         | INT          |

---

## 🧪 Sample Data

### `departments`:
```sql
INSERT INTO departments VALUES (1, 'HR'), (2, 'IT'), (3, 'Sales');
