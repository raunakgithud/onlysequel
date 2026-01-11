--create database IDEAS_DATABASE

use IDEAS_DATABASE

--select * from sys.procedures

/**

create table name 
(
col1 name datatype constaint,
col2 name datatype,
col3 name datatype
);




**/


--use master

--select * from sys.procedures

--sp_helptext 'sp_MSrepl_startup'


/**
  
create procedure dbo.sp_MSrepl_startup  
as  
    exec sys.sp_MSrepl_startup_internal  
**/

/**
create table employee
(
emp_id int ,
emp_name varchar(200),
emp_salary Money
)
**/

--select * from employee


--select e.emp_name, e.emp_salary from employee e

--select * from employee;

/**

create table department
(
dept_id int not null,
dept_name varchar(100) unique,
dept_location char(120)
);

**/

--select * from employee
--select * from department

/**
create table customers
(
customer_id int primary key,
customer_name varchar(100) not null,
email_id varchar(150) unique
);

**/

--foreign key
/**
create table orders
(
order_id int primary key,
order_date date not null,
total_amount decimal(10,2),
customer_id int foreign key 
references customers
);

**/
--select * from orders
--select * from customers
--select * from department
--select * from employee

/**
insert into customers values
(101,'reena roy','reena@outlook.com'),
(102,'niraj goswami','niraj@outlook.com'),
(103,'nitin ahir','nitin@outlook.com'),
(104,'shubhas bhora','shubhas@outlook.com'),
(105,'saraj singh','saraj@outlook.com');
**/



select top 10 * from [dbo].[Orders$]

select top 10 * from [dbo].[People$]

select top 10 * from [dbo].[Returns$]


















