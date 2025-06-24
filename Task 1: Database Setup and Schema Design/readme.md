# Task 1 – SQL Customers and Orders Schema

This task demonstrates a basic relational database design using SQL DDL commands. It includes two tables with a one-to-many relationship using a foreign key constraint.

## 🧱 Tables

### Customers
- `CustomerID` (Primary Key)
- `Name`

### Orders
- `OrderID` (Primary Key)
- `CustomerID` (Foreign Key referencing `Customers.CustomerID`)

## 🔗 Relationship

One customer can place many orders.  
This is implemented using a **foreign key** in the `Orders` table that references the `Customers` table.

## 🗃️ ER Diagram

The ER diagram below shows the one-to-many relationship between `Customers` and `Orders`.

![ER Diagram]([task1 er diagram.png](https://github.com/Charnjot333/SQL-DEVELOPER-INTERNSHIP-/issues/1#issue-3171046384))

## 🛠️ Tools Used

- MySQL Workbench
- SQL (DDL)
- GitHub

## 📜 Files Included

- `customer_order_schema.sql`: SQL file to create the tables and relationship
- `er_diagram.png`: Visual diagram showing the relationship
