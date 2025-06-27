# Task 4 – Aggregate Functions and Grouping

## Objective
This task demonstrates the use of aggregate functions and the `GROUP BY` clause to analyze and summarize student data from a database table.

## Concepts Used
- Aggregate functions: `COUNT()`, `SUM()`, `AVG()`, `MAX()`, `MIN()`
- Grouping with `GROUP BY`
- Filtering grouped results using `HAVING`
- Rounding numeric results using `ROUND()`
- Handling `NULL` values using `UPDATE`

## Table Structure
A `student` table was created with the following fields:
- `Name` (VARCHAR)
- `Roll_no` (INT, Primary Key)
- `Age` (INT)
- `Gender` (VARCHAR)
- `Fees` (INT)

## Data Inserted
Seven student records were inserted, with some having `NULL` values for gender, which were later handled using an `UPDATE` statement.

## Queries Performed
- Count of students grouped by gender
- Sum of fees grouped by gender
- Average age grouped by gender and rounded to two decimal places
- Maximum and minimum fee
- Group filtering with `HAVING` (e.g., groups with more than 3 students)

## File Included
- `TASK 4.sql`: Contains all the SQL commands for creating the table, inserting data, handling NULLs, and applying aggregation.

## Tools Used
- MySQL Workbench 



