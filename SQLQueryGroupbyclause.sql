
use IDEAS_DATABASE

select top 1* from Orders$

--1. Display total sales by region

select Region,Sales from Orders$

select Region,sum(Sales) as total_revenue from Orders$ group by Region;

--2. Average profit by product catagory

select  Category,AVG(Profit) as prof   from Orders$ group by Category

--3. Count of orders by ship mode

--select Ship Mode, count( Order ID ) as orders from Orders$ group by Ship Mode;

--4. count of quantity by segment and state

select COUNT(Quantity) as quan , Segment,State  from Orders$ group by Segment ,State

--1. cities with total sales over 5000

select City,SUM(Sales) as t_sales   from Orders$ group by City having  SUM(Sales) > 5000;

--2.Category with Average profilt above 80

select Category,AVG(Profit) as Av_profit  from Orders$ group by Category having AVG(Profit) < 80

--3.Ship Mode with more than 600

--4 segment with total quantity sold over 7500

select  SUM(Quantity) as t_quanity, Sales  from Orders$  group by Sales having SUM(Quantity) < 7500


-- ship mode ranked by number of orders asc

select [Ship Mode],COUNT([Order ID]) as order_count  from Orders$ group by [Ship Mode] order by order_count desc


---segment ranked by total discount

select Segment,SUM(Discount) as total_dis  from Orders$ group by Segment order by total_dis desc

--- Products with min profit(asc)

select [Product Name],MIN(Profit) as min_profit  from Orders$ group by [Product Name] order by min_profit desc