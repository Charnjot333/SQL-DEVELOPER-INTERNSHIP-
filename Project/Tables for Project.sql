use practice;

CREATE TABLE Authors (
    author_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);
Create Table books (
book_id SERIAL PRIMARY KEY,
    title VARCHAR(200) NOT NULL,
    isbn VARCHAR(20) UNIQUE,
    published_year INT
);

CREATE TABLE BookAuthors (
    book_id INT REFERENCES Books(book_id),
    author_id INT REFERENCES Authors(author_id),
    PRIMARY KEY (book_id, author_id)
);

CREATE TABLE Members (
    member_id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    join_date DATE DEFAULT (CURRENT_DATE)
);

CREATE TABLE Loans (
    loan_id SERIAL PRIMARY KEY,
    book_id INT REFERENCES Books(book_id),
    member_id INT REFERENCES Members(member_id),
    loan_date DATE DEFAULT (CURRENT_DATE),
    due_date DATE,
    return_date DATE
);




-- inserting the data -- 
truncate authors;
INSERT INTO Authors (name) VALUES
('J.K. Rowling'),             -- 1
('George Orwell'),            -- 2
('Harper Lee'),               -- 3
('Jane Austen'),              -- 4
('F. Scott Fitzgerald'),      -- 5
('J.D. Salinger'),            -- 6
('J.R.R. Tolkien'),           -- 7
('Ray Bradbury'),             -- 8
('Paulo Coelho'),             -- 9
('Aldous Huxley'),            -- 10
('C.S. Lewis'),               -- 11
('Charlotte Brontë'),         -- 12
('Emily Brontë');  ;

Insert Into Books(title , isbn , published_year) 
VALUES
('Harry Potter', '9780747532743', 1997),
('1984', '9780451524935', 1949),
('To Kill a Mockingbird', '9780061120084', 1960),
('Pride and Prejudice', '9781503290563', 1813),
('The Great Gatsby', '9780743273565', 1925),
('The Catcher in the Rye', '9780316769488', 1951),
('The Hobbit', '9780547928227', 1937),
('Fahrenheit 451', '9781451673319', 1953),
('The Alchemist', '9780061122415', 1988),
('Brave New World', '9780060850524', 1932),
('Animal Farm', '9780451526342', 1945),
('The Lord of the Rings', '9780618640157', 1954),
('The Chronicles of Narnia', '9780066238500', 1956),
('Jane Eyre', '9780142437209', 1847),
('Wuthering Heights', '9780141439556', 1847);

INSERT INTO BookAuthors (book_id, author_id) VALUES
(1, 1),   -- Harry Potter → J.K. Rowling
(2, 2),   -- 1984 → George Orwell
(3, 3),   -- To Kill a Mockingbird → Harper Lee
(4, 4),   -- Pride and Prejudice → Jane Austen
(5, 5),   -- The Great Gatsby → F. Scott Fitzgerald
(6, 6),   -- The Catcher in the Rye → J.D. Salinger
(7, 7),   -- The Hobbit → J.R.R. Tolkien
(8, 8),   -- Fahrenheit 451 → Ray Bradbury
(9, 9),   -- The Alchemist → Paulo Coelho
(10, 10), -- Brave New World → Aldous Huxley
(11, 2),  -- Animal Farm → George Orwell
(12, 7),  -- The Lord of the Rings → J.R.R. Tolkien
(13, 11), -- The Chronicles of Narnia → C.S. Lewis
(14, 12), -- Jane Eyre → Charlotte Brontë
(15, 13); -- Wuthering Heights → Emily Brontë

INSERT INTO Members (name, email) VALUES
('Alice Johnson', 'alice@example.com'),
('Bob Smith', 'bob@example.com'),
('Charlie Brown', 'charlie@example.com'),
('Diana Prince', 'diana@example.com'),
('Ethan Hunt', 'ethan@example.com');

INSERT INTO Loans (book_id, member_id, due_date) VALUES
(1, 1, CURRENT_DATE + INTERVAL 14 DAY),
(2, 2, CURRENT_DATE + INTERVAL 14 DAY),
(3, 3, CURRENT_DATE + INTERVAL 14 DAY),
(4, 4, CURRENT_DATE + INTERVAL 14 DAY),
(5, 5, CURRENT_DATE + INTERVAL 14 DAY),
(6, 1, CURRENT_DATE + INTERVAL 14 DAY),
(7, 2, CURRENT_DATE + INTERVAL 14 DAY),
(8, 3, CURRENT_DATE + INTERVAL 14 DAY),
(9, 4, CURRENT_DATE + INTERVAL 14 DAY),
(10, 5, CURRENT_DATE + INTERVAL 14 DAY);

select  *  from  Members ;
select * from Loans;
select * from BookAuthors;
select * from books ;
select * from Authors;


