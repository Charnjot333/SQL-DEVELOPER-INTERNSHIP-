use practice ;

-- Create a Stored Procedure--
 Delimiter //
create procedure salary
(
In id int,
Out sal int 
)
begin
	select salary into sal 
	from employees
	where emp_id = id;
end ;
//

DELIMITER ;
call salary(5,@sal);
select @sal;
drop procedure inc;

select * from employees ;


 -- A procedure to update employee salary:-- 
 delimiter //
 create procedure update_sal(in sal int, in id int)
 begin
	update employees
    set salary = sal
    where emp_id = id;
end; 
//
DELIMITER ;   

call update_sal(80000,2);


-- loop fun -- 
delimiter //
create procedure inc(in id int, in inc int)
begin 
	update employees
    set salary = salary + inc
    where department_id = id;
end;
//
delimiter ;
call inc(1,2);
SET SQL_SAFE_UPDATES = 0;



	