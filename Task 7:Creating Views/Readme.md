
# 🧠 Task 7 – SQL Views

## 📌 Objective
The goal of this task was to understand how to create and use SQL Views for data abstraction, simplification, and security using MySQL.

---

## 🛠 Tools Used
- MySQL Workbench / DB Browser for SQLite
- SQL script file: `Task 7.sql`

---

## 📂 Database Used
- `ecommerce`
- `practice`

---

## 📋 Views Created

### ✅ 1. Simple View
```sql
CREATE VIEW hello AS 
SELECT product FROM orders
WHERE customer_id > 100;
```
**Purpose:** Filters products purchased by customers with ID > 100.  
**Usage:**
```sql
SELECT * FROM hello;
```

---

### ✅ 2. Dropping the View
```sql
DROP VIEW hello;
```

---

### ✅ 3. Complex View
```sql
CREATE VIEW complex AS 
SELECT product, COUNT(product) AS Total_Purchases 
FROM orders
GROUP BY product;
```
**Purpose:** Summarizes the total number of purchases per product.

---

### ✅ 4. View with JOIN
```sql
CREATE VIEW Salary_per_Department AS
SELECT d.department_id, AVG(salary) AS Average, department_name AS avg_salary
FROM employees
JOIN departments d
GROUP BY department_id;
```
**Purpose:** Shows average salary per department using a JOIN.

**Usage:**
```sql
SELECT * FROM Salary_per_Department;
```

---
