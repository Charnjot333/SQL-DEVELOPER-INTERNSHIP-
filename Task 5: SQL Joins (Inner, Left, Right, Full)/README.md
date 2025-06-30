
# Task 5: SQL Joins (Inner, Left, Right, Full)

## 🎯 Objective
Practice and demonstrate understanding of different types of SQL joins by working with two related tables: `customer` and `orders`.

---

## 🧰 Tools Used
- MySQL Workbench
- DB: `practice`

---

## 🗂️ Table Structures

### 🧾 Customer Table
```sql
CREATE TABLE customer (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100),
    city VARCHAR(50)
);
```

### 🧾 Orders Table
```sql
CREATE TABLE orders (
    customer_id INT,
    order_id INT PRIMARY KEY,
    product VARCHAR(100)
);
```
> Note: Foreign key was not used to allow unmatched joins for learning.

---

## 📌 Sample Data

### 👤 Customers:
```sql
INSERT INTO customer VALUES 
(1, 'Ram', 'Patiala'),
(2, 'Ranjot', 'Mumbai'),
(3, 'Happy', 'Ludhiana'),
(4, 'Simran', 'Amritsar'); -- No order
```

### 📦 Orders:
```sql
INSERT INTO orders VALUES 
(1, 101, 'Laptop'),
(2, 102, 'Phone'),
(3, 103, 'Tablet'),
(5, 105, 'Printer'); -- No matching customer
```

---

## 🔁 SQL Joins Used

### 🔹 INNER JOIN
```sql
SELECT * FROM customer c
INNER JOIN orders o ON c.customer_id = o.customer_id;
```

### 🔹 LEFT JOIN
```sql
SELECT * FROM customer c
LEFT JOIN orders o ON c.customer_id = o.customer_id;
```

### 🔹 RIGHT JOIN
```sql
SELECT * FROM customer c
RIGHT JOIN orders o ON c.customer_id = o.customer_id;
```

### 🔹 FULL OUTER JOIN (Using UNION)
```sql
SELECT * FROM customer c
LEFT JOIN orders o ON c.customer_id = o.customer_id
UNION
SELECT * FROM customer c
RIGHT JOIN orders o ON c.customer_id = o.customer_id;
```

---

## 💬 Interview Questions & Answers

### 1. Difference between INNER and LEFT JOIN?
- `INNER JOIN`: Returns only matching rows.
- `LEFT JOIN`: Returns all rows from the left table + matched rows.

### 2. What is a FULL OUTER JOIN?
- Combines results of LEFT and RIGHT JOINs.

### 3. Can joins be nested?
- Yes, by chaining multiple JOINs.

### 4. How to join more than 2 tables?
- Chain JOINs: `A JOIN B JOIN C`.

### 5. What is a cross join?
- Returns all combinations of rows (Cartesian product).

### 6. What is a natural join?
- Joins tables automatically on columns with the same names.

### 7. Can you join tables without a foreign key?
- Yes, using any logical condition.

### 8. What is a self-join?
- A table joined with itself.

### 9. What causes Cartesian product?
- A join without a proper `ON` condition (or using CROSS JOIN).

### 10. How to optimize joins?
- Add indexes on join keys.
- Use SELECT with specific columns.
- Apply filters early with WHERE clause.
- Use appropriate join type for the scenario.

---

## 📁 Files Included
- `TASK 5.sql`: SQL file with all table creation, data insertion, and join queries.




