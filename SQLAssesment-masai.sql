--create database assesment_masai

use assesment_masai
/**
CREATE TABLE Orders (
    order_id INT,
    customer_name VARCHAR(50),
    product VARCHAR(50),
    category VARCHAR(50),
    quantity INT,
    price INT,
    order_date DATE,
    discount INT
);

INSERT INTO Orders VALUES
(1, 'Amit', 'Laptop', 'Electronics', 1, 70000, '2023-01-10', 5000),
(2, 'Neha', 'Phone', 'Electronics', 2, 30000, '2023-02-15', NULL),
(3, 'Raj', 'Shoes', 'Fashion', 3, 2000, '2023-03-05', 200),
(4, 'Priya', 'Watch', 'Accessories', 1, 5000, '2023-03-20', NULL),
(5, 'Karan', 'Laptop', 'Electronics', 1, 80000, '2023-04-01', 7000),
(6, 'Meena', 'Bag', 'Fashion', 2, 1500, '2023-04-10', NULL),
(7, 'Ravi', 'Phone', 'Electronics', 1, 25000, '2023-05-05', 3000),
(8, 'Anjali', 'Shoes', 'Fashion', 1, 2500, '2023-06-01', NULL),
(9, 'Vikas', 'Headphones', 'Electronics', 2, 4000, '2023-06-15', 500),
(10, 'Suresh', 'Watch', 'Accessories', 1, 6000, '2023-07-01', NULL);
**/




select top 1 * from  Orders

--Find all orders where the product is either Laptop, Phone, or Watch using
select * from Orders where product in ('Laptop','Phone','Watch')
--Retrieve orders where the price is between 2000 and 50000.
select * from Orders where price between 2000 and 50000
--Find all orders placed between '2023-03-01' and '2023-06-30'.
select * from Orders where order_date between '2023-03-01' and '2023-06-30'
--Display all orders where discount is NULL.
select * from Orders where discount is Null
--Display all orders where discount is NOT NULL.
select * from Orders where discount is NOT Null
--Rewrite a query using IN instead of multiple OR conditions:
--Product = Laptop OR Phone OR Shoes
select * from Orders where Product in ( 'Laptop','Phone','Shoes')
--Find orders where:
--Category = 'Electronics' AND
--Price > 30000
select * from Orders where category like '%Electronics%' and Price > 30000
--Retrieve orders where:
--Product is in ('Laptop', 'Phone') AND
--Discount is NOT NULL
select * from Orders where Product in ('Laptop', 'Phone') and discount is not null
--Find orders where:
--Price between 2000 and 60000 AND
--Discount is NULL
select * from Orders where price between 2000 and 60000 and discount is null
--Limit the output to top 5 most expensive orders.
select top 5 * from Orders order by price desc 
--Total Cost = quantity * price
select order_id,customer_name,quantity,price,quantity*price as TotalCost  from Orders
--Final Price = price - discount
select (price - discount) as FinalPrice , * from Orders
--Full Description = customer_name + ' ordered ' + product
select (customer_name + ' ordered ' + product) as FullDescription , * from Orders
--Revenue = quantity * (price - discount)
select (quantity * (price - discount)) as Revenue , * from Orders 
--Find total number of orders per category.
select category , sum(order_id) as TotalOrders from Orders group by category
--Find the category with the highest total sales.
--total sales = quantity * price
select top 1 category,sum(quantity*price) as TotalSales from Orders 
group by category order by TotalSales desc
--Retrieve top 3 customers who spent the most.
select top 3 customer_name , sum(quantity*price - discount) as Mostspent from Orders
group by customer_name order by Mostspent desc
--Search for products containing the word "Phone" (use LIKE).
select * from Orders where product like '%Phone%'
--Export dataset where:
--Category = Electronics
--Price > 20000
select * from Orders where Category like '%Electronics%' and price > 20000
--Rewrite a query avoiding SELECT * and explain why it is better.
select Category, price from Orders where Category like '%Electronics%' and price > 20000
--Write a query using WHERE to reduce dataset before applying conditions.
select Category, price from Orders
select Category, price from Orders where Category like '%Electronics%' and price > 20000
--Identify and correct the mistake: SELECT * FROM Orders WHERE discount = NULL;
SELECT * FROM Orders WHERE discount is NULL
--Write examples of:
--INSERT
--insert into orders values(101, 'Raunak', 'Laptop', 'Electronics', 5, 70000, '2027-01-10', 9000)
--select * from Orders
--UPDATE
--update Orders set order_id = 11 where customer_name like'Raunak'
--select * from Orders
--DELETE
--delete from orders where customer_name like 'Raunak'
--select * from orders






 


