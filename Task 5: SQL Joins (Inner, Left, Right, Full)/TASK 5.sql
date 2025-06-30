use practice;
-- customer table created --
create table customer 
(
Customer_id int primary key,
Name varchar(100),
city varchar(50)
);

drop table customer;
drop table orders;

-- orders table created --

create table orders(
customer_id int ,
order_id int primary key,
product varchar(100)
);

-- data added to the tables -- 
insert into customer 
VALUES 
(1,'ram','Patiala'),
(2,'Ranjot','Mumbai'),
(3,'Happy','Ludhiana')
;
insert into orders
VALUES 
(1, 101, 'Laptop'),
(2, 102, 'Phone'),
(3, 103, 'Tablet'); 

INSERT INTO customer VALUES (4, 'Simran', 'Amritsar');
INSERT INTO orders VALUES (5,105,'Printer');  -- Customer ID 5 doesn't exist in customer

-- SQL Joins (Inner, Left, Right, Full) -- 
select * from customer c
inner join orders o on 
c.customer_id = o.customer_id;

select * from customer c
left join orders o on 
c.customer_id = o.customer_id;

select * from customer c
right join orders o on 
c.customer_id = o.customer_id;

select * from customer c
left join orders o on 
c.customer_id = o.customer_id
union 
select * from customer c
right join orders o on 
c.customer_id = o.customer_id;