-- create view -> Borrowed Books -- 
create view Borrowed_Books as 
select m.name as member_name,b.title,l.due_date ,l.return_date from Loans l
join Members m 
on m.member_id = l.member_id
join books b 
on b.book_id = l.book_id
where l.return_date is Null;

drop view Borrowed_Books;
select * from Borrowed_Books;


-- Over Due Books -- 

create view OverDue_Books as 
select m.name as member_name,b.title,l.due_date ,l.return_date from Loans l
join Members m 
on m.member_id = l.member_id
join books b 
on b.book_id = l.book_id
where l.due_date < current_date and l.return_date is Null;
select * from OverDue_Books;
drop view OverDue_Books;
