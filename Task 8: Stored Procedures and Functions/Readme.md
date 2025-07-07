
# 🧠 Task 8 – Stored Procedures and Functions

## 📌 Objective
The objective of this task is to practice creating **stored procedures** in SQL to modularize logic using parameters, conditional logic, and loops.

---

## 🛠 Tools Used
- MySQL Workbench
- SQL script file: `Task 8.sql`
- Sample database: `practice`

---

## 📋 Stored Procedures Created

### ✅ 1. `salary` – Procedure with OUT parameter
Fetches the salary of a given employee by ID.

```sql
CREATE PROCEDURE salary (
    IN id INT,
    OUT sal INT
)
BEGIN
    SELECT salary INTO sal 
    FROM employees
    WHERE emp_id = id;
END;
```

**Usage:**
```sql
CALL salary(5, @sal);
SELECT @sal;
```

---

### ✅ 2. `update_sal` – Procedure to Update Salary
Updates the salary of a specific employee by ID.

```sql
CREATE PROCEDURE update_sal (
    IN sal INT,
    IN id INT
)
BEGIN
    UPDATE employees
    SET salary = sal
    WHERE emp_id = id;
END;
```

**Usage:**
```sql
CALL update_sal(80000, 2);
```

---

### ✅ 3. `inc` – Procedure Using Loops/Arithmetic
Increases salary for employees in a department.

```sql
CREATE PROCEDURE inc (
    IN id INT,
    IN inc INT
)
BEGIN 
    UPDATE employees
    SET salary = salary + inc
    WHERE department_id = id;
END;
```

**Usage:**
```sql
CALL inc(1, 2);
```

---

