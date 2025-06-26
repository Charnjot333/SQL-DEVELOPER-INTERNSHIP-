create database practice ;

use practice;

-- Table Student is created-- 
create table student
(
Name varchar(100) not null,
Roll_no int primary key,
age int ,
gender varchar(10)
);

-- INSERT COMMAND --
INSERT INTO student (Name,Roll_no,age,gender)
VALUES('charan',23,21,"Female"),
('riya',24,26,NULL),
('sham',22,25,"Male"),
('sita',21,27,NULL),
('geets',20,19,"Male"),
('rohan',19,23,NULL),
('Harry',18,30,"Male");




-- SELECT --
select * from student ;

-- WHERE CLAUSE WITH CONDITION --

select * from student 
where roll_no = 21 ;

select * from student 
where age = 21 and roll_no = 23;

select * from student 
where roll_no = 21 or age = 21;

-- LIKE for Pattern Matching --

select * from student 
where name like '%an%'; -- contain --

select * from student 
where name like '%a'; -- end with -- 

select * from student 
where name like 'r%'; -- start with--

-- BETWEEN for Ranges -- 

select * from student 
where age between 20 and 30;
 
--  ORDER BY (Default = ASC) --

select * from student 
where age between 20 and 30
order by age;

select * from student 
where age between 20 and 30
order by age desc;

-- LIMIT --
select * from student 
where age between 20 and 30
order by age DESC 
LIMIT 2;
