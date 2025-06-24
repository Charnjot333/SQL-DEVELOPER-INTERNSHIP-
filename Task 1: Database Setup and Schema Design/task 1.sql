CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(100)
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);
INSERT INTO Customers (CustomerID, Name)
VALUES 
    (1, 'Aman Singh'),
    (2, 'Simran Kaur'),
    (3, 'Raj Mehta'),
    (4, 'Pooja Sharma');
    
INSERT INTO Orders (OrderID, CustomerID)
VALUES 
    (101, 1),
    (102, 2),
    (103, 3),
    (104, 1),
    (105, 4);
    
