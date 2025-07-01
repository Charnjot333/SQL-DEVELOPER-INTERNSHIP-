# Task 6: SQL Subqueries and Nested Queries

## Database Used
practice

## Tables Created

```sql
CREATE TABLE employees (
  emp_id INT PRIMARY KEY,
  name VARCHAR(100),
  department_id INT,
  salary INT
);

CREATE TABLE departments (
  department_id INT PRIMARY KEY,
  department_name VARCHAR(100)
);
Data Inserted
sql
Copy
Edit
INSERT INTO departments VALUES (1, 'HR'), (2, 'IT'), (3, 'Sales');

INSERT INTO employees VALUES 
(1, 'Alice', 1, 50000),
(2, 'Bob', 2, 70000),
(3, 'Charlie', 2, 60000),
(4, 'David', 3, 55000),
(5, 'Eva', 1, 45000);
Queries Used
sql
Copy
Edit
SELECT 
  name,
  salary,
  (SELECT AVG(salary) FROM employees) AS avg_salary
FROM employees;
sql
Copy
Edit
SELECT 
  name,
  salary,
  (SELECT AVG(salary) FROM employees) AS avg_salary
FROM employees
WHERE salary > 50000;
sql
Copy
Edit
SELECT name, emp_id, salary, 
  (SELECT AVG(salary) FROM employees) AS avg_salary
FROM employees 
WHERE salary > (SELECT AVG(salary) FROM employees);
sql
Copy
Edit
SELECT name, salary 
FROM employees e
WHERE salary = (
  SELECT MAX(salary) 
  FROM employees 
  WHERE e.department_id = department_id
);
sql
Copy
Edit
SELECT d.department_name, AVG(e.salary) AS Avg_Salary 
FROM employees e
JOIN departments d 
ON e.department_id = d.department_id
GROUP BY department_name
ORDER BY Avg_Salary DESC;
Commented Out Query
sql
Copy
Edit
-- SELECT emp_id, name, (SELECT department_name FROM departments) AS dept_name FROM employees;
Files Included
Task 6.sql

README.md

yaml
Copy
Edit

---

All set! Paste this into your `README.md` file on GitHub and you’re done. 🙌  
If you ever need it as a `.md` file, just say the word!








Ask ChatGPT



Tools



