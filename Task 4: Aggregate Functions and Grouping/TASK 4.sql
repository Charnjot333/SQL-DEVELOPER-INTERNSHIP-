
create database practice ;

use practice;

-- Table Student is created-- 
create table student
(
Name varchar(100) not null,
Roll_no int primary key,
age int ,
gender varchar(10),
fees int
);

-- INSERT COMMAND --
INSERT INTO student (Name,Roll_no,age,gender,fees)
VALUES('charan',23,21,"Female",2000),
('riya',24,26,NULL,3000),
('sham',22,25,"Male",2300),
('sita',21,27,NULL,9877),
('geets',20,19,"Male",3254),
('rohan',19,23,NULL,4500),
('Harry',18,30,"Male",8744);

select * from student ;
-- update and handling NULL values -- 
update student
set gender = 'Female'
where gender is Null;

-- Aggregate Functions and Grouping -- 
select gender ,count(*) as Gender_count from student 
group by gender ;

select gender ,sum(fees) as Total_fee from student 
group by gender ;

select gender ,round(avg(age),2) as Average_age from student 
group by gender ;

select max(fees) from student ;

select min(fees) from student ;

select gender ,count(*) as Gender_count from student 
group by gender 
having Gender_count>3;