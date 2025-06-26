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
('riya',24,NULL,NULL),
('sham',22,22,"Male");

-- update command ---
UPDATE student 
set name = "Site"
WHERE Roll_no = 24;

-- Null Handling --

delete from student 
where Roll_no = 24 AND gender is null and age is null ;

-- SELECT --
Select * from student;
