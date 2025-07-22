-- Create Reports Using JOIN, GROUP BY, and Aggregates -- 
-- Report 1 – Total books borrowed by each member: -- 

SELECT m.name AS member_name, COUNT(*) AS total_books_borrowed
FROM Loans l
JOIN Members m ON m.member_id = l.member_id
GROUP BY m.member_id, m.name;

-- Report 2 – Books borrowed but not yet returned: -- 
select b.title,l.due_date , m.name from books b join Loans l 
on b.book_id  = l.book_id 
join members m on m.member_id = l.member_id
where l.return_date is null;

-- Report 2 – Most borrowed books: -- 
select b.title , count(*) as times_borrowed from books b 
join Loans l 
on b.book_id = l.book_id 
group by b.title 
ORDER BY times_borrowed DESC;




