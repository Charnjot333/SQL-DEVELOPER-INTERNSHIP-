use ecommerce;

--  a Simple View-- 
create view hello as 
select product from orders
where customer_id>100;
select * from hello;

-- Drop View -- 
drop view hello;

-- complex view --
use practice;
create view complex as 
select product , count(product) as Total_Purchases from orders
group by product;
select * from complex;

-- View with JOIN --
create view Salary_per_Department as
select d.department_id, avg(salary) as Average, department_name as avg_salary 
from employees
join departments d
group by department_id;


-- Query View -- 
select * from Salary_per_Department;

