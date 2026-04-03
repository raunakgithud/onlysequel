use practice
/**
create table Customers(
CustomerID INT PRIMARY KEY,
Name VARCHAR(100),
City VARCHAR(50))create table Orders(
 OrderID INT PRIMARY KEY,
 CustomerID INT REFERENCES Customers(CustomerID),
 OrderDate DATE,
 Status VARCHAR(20))create table Products(
 ProductID INT PRIMARY KEY,
 ProductName VARCHAR(100),
 Price DECIMAL(10,2),
 StockQuantity INT)create table OrderItems(
 OrderID INT REFERENCES Orders(OrderID),
 ProductID INT REFERENCES Products(ProductID),
 Quantity INT)**/--Q1. Write an SQL query to display all customers who do not have any orders yet./**select  c.Name , count(o.OrderID) as ordercount  from Orders O join Customers c on o.CustomerID = c.CustomerIDgroup by c.Name having count(o.OrderID) = 0--Suppose you want to change the status of all orders placed before ‘2023-01-01’ to ‘Archived’.
--Write the SQL statement to do this.

select Status,OrderDate,OrderID,
case
when OrderDate < '2023-01-01' then 'pastorder'
else 'CurrentOrder'
end as 'orderstatus'
from Orders

--Write an SQL statement to insert a new product called ’Wireless Mouse’ with a price of
--25.99 and stock quantity of 100.

Products

--insert into Products values ( 1,'Wireless Mouse',25.99,100)
select * from Products
**/
--A customer named ’Alice Smith’ has made an order today. Write an INSERT query for
--the Orders table assuming her CustomerID is 5 and status is ‘Pending’.

--insert into Orders  values(1,5,GETDATE(),'Pending')

--insert into Customers values( 5,'','')

--You discover some products have a stock quantity less than zero due to a bug. Write an
--UPDATE query to set any negative stock quantities to zero.

--update Products set StockQuantity = 0 where StockQuantity < 0 

--Write an SQL query to delete all cancelled orders (Status = ’Cancelled’) that were placed
--in 2022.

--select  * from Orders

--Orders
--OrderDate between '2022-01-01' and '2022-12-31' 
--Status 'cancelled'

--delete from Orders where Status between '2022-01-01' and '2022-12-31'

-- A customer moves to a new city. Write an UPDATE statement to change the city of the
--customer with CustomerID = 3 to ‘San Francisco’.--Customers--update Customers set City = 'San Francisco' where CustomerID = 3