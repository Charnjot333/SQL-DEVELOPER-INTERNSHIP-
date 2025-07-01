USE practice;
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

INSERT INTO departments VALUES (1, 'HR'), (2, 'IT'), (3, 'Sales');

INSERT INTO employees VALUES 
(1, 'Alice', 1, 50000),
(2, 'Bob', 2, 70000),
(3, 'Charlie', 2, 60000),
(4, 'David', 3, 55000),
(5, 'Eva', 1, 45000);

-- select emp_id,name ,(select department_name from departments) as dept_name from employees;-- 

SELECT 
  name,
  salary,
  (SELECT AVG(salary) FROM employees) AS avg_salary
FROM employees;

SELECT 
  name,
  salary,
  (SELECT AVG(salary) FROM employees) AS avg_salary
FROM employees
where salary>50000;

select name ,emp_id , salary ,(select avg(salary) from employees) as avg_salary from employees 
where salary > (select avg(salary) from employees);

select name , salary from employees e
where (salary = (select max(salary) from employees
where e.department_id = department_id));

select d.department_name, avg(e.salary)as Avg_Salary 
from employees e
join departments d 
on e.department_id = d.department_id
group by department_name
order by Avg_Salary desc;

