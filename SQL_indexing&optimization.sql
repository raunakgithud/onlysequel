--use practice

--[dbo].[Customers]
--[dbo].[Departments]
--[dbo].[Employees]
--[dbo].[links]
--[dbo].[OrderItems]
--[dbo].[Orders]
--[dbo].[Products]
/**
=====
ACID
=====

*Atomicity
*consistency
*Integrity
*Durability



sp_helptext '[sys].[sp_add_agent_parameter]'

select * from links 

Isolation:
ensures that when multiple transactions run simultaneously, 
they do not negatively affect each other’s data.

----------------------------------------------------
Dirty read

--transaction T1
select * from Products where productID = 1
--transaction T2
update Products set stockquantity = 110
----------------------------------------------------
Non repeatable read

--T1
select * from Employees where employee_id = 5
--T2
update Employees set salary = '5000' where employee_id = 5;
commit;
--T3
select * from Employees where employee_id = 5
--------------------------------------------------------
Phantom read

select * from Employees where employee_id > 5;

begin transaction 

insert into Employees values 
(11,'sangi','HR','14000',32,5);

commit;

select * from Employees where employee_id > 5;
---------------------------------------------------------
--set transaction isolation lebel serializable;
begin transaction;
select top 10 * from Employees
commit;
--------------------------------------------------------------------------
concurrency control in database:
------------------------------------
---T1
update Employees set age = 40 where employee_id = 5
---T2
update Employees set age = 50 where employee_id = 5

--concurrency control techniques:

--Lockbased:--shared locks for reading , exclusive locks for the writting.
--Timestamp-based:--Assining timestamp to the transactions
--Optimistic concurrency control:--
--Multi-version-concurrency-control: --
----------------------------------------
Indexing:
---------

create index ids_employee on Employees(employee_id)
create index composite_id on Employees(employee_id,age)
create unique index ids_unique on Employees(employee_id)
-----------------------------------------
select min(name) as min_name from Employees

select max(name) as min_name from Employees

begin transaction;
update Employees set age = 90 where name like '%Vikas%';
select * from employees where name like '%Vikas%';
rollback;


serializable conflict
precedence graph 

set transaction t1;
begin transaction t1;
update Employees set age = 95 where name like '%Vikas%';
select * from employees where name like '%Vikas%';
commit;
rollback;
















