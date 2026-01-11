use IDEAS_DATABASE

select * from customers

select * from orders

/**
insert into orders values

(10,'2024-01-10',5000.7,103),
(20,'2024-01-10',4000.5,102),
(30,'2023-06-12',6500.8,105)
;**/
/**
insert into orders values
(40,'2024-01-10',5000.7,111)


**/

select * from [dbo].[Orders$]


--display the orders from west region


--select [Order ID],[Customer ID],Region from [dbo].[Orders$] where Region in( 'WEST','EAST','SOUTH');

--select [Order ID],[Customer ID],Region from [dbo].[Orders$] where Region not in( 'WEST','EAST','SOUTH');

--find te cells above 10000


--select [Customer ID],Region,Sales from Orders$ where Sales > 10000;

--list the products for quantity sold between 3 and 5

--select [Product ID],[Product Name],Quantity,Sales from Orders$ where Quantity between 3 and 5; 

--select [Product ID],[Product Name],Quantity,Sales from Orders$ where Quantity not between 3 and 5; 

--display the details only for segments consumer, corporate

--select [Order ID],Segment,Sales from Orders$ where Segment <> 'Home office'

-- <>   !=   used for not eq to , to fetch multiple informations of a perticular column

select * from customers

---------------------------------------

--alter table customers add city char(255);

--alter table customers add phone_no bigint , country int;

--syntax for deleting column

--alter table customers drop column city;

--alter table customers drop column phone_no, country;

--alter table customers alter column customer_name char(500);
select * from customers

--sp_helptext 'SP_RENAME'

--exec sp_rename 'customers.email_id','email';

--exec sp_rename 'customers','client';

----------------------------------------------------------------------------------

--sp_helptext 'SP_RENAME'

--exec sp_rename 'customers.email_id','email';

--exec sp_rename 'customers','client';

select * from client;






















































