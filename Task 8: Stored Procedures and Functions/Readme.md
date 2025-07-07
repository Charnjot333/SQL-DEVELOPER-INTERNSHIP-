
# 🧠 Task 8 – Stored Procedures and Functions

## 📌 Objective
In this task, I focused on learning and implementing SQL stored procedures to modularize logic and make my SQL operations more efficient and reusable.

---

## 🛠 What I Used
- **Database**: `practice`
- **Tool**: MySQL Workbench
- **Table Used**: `employees`
- **SQL Features**:
  - Stored Procedures
  - IN and OUT parameters
  - DELIMITER usage
  - Safe Update Mode handling

---

## 🔍 What is a Stored Procedure?
A stored procedure is a precompiled collection of one or more SQL statements that can be executed as a single unit. It's used to perform operations like querying, updating, or performing logic on data. Procedures can take parameters as input (`IN`), output (`OUT`), or both (`INOUT`).

---

## 🧾 What I Did

1. **Created a stored procedure** to get an employee’s salary using an OUT parameter.
2. **Created another procedure** to update the salary of an employee based on their ID.
3. **Developed a procedure** that increases the salary of all employees in a specific department (to simulate a loop-based logic).
4. **Handled MySQL's Safe Update Mode** to allow updates using proper key-based WHERE clauses or by disabling safe mode when needed.
5. **Tested all procedures** using appropriate calls and checked the output using SELECT statements.

---

## 📚 What I Learned

- How to define and call procedures using `CREATE PROCEDURE` and `CALL`.
- The use of `DELIMITER` to properly define multi-line SQL blocks.
- The concept and use of IN, OUT, and INOUT parameters.
- How stored procedures help in reusability and reduce repetitive SQL code.
- Managing SQL Safe Update Mode to avoid update restrictions.



## 🔗 Submission
All the SQL procedures and details of this task are included in my GitHub repository.  
The repository link has been submitted via the official form.

