use IDEAS_DATABASE

--find orders eceeding avrage sales
select [Order ID],[Customer Name],Sales   from Orders$ where Sales >
(select AVG(Sales) from Orders$)

--orders with quantity above 2017 average

select [Order ID],[Product Name] from Orders$ where Quantity >
(select avg(Quantity) from Orders$ where YEAR([Order Date]) >= 2017)

----------------------------------

select [Order ID],[Product Name] from Orders$ where YEAR([Order Date])>=2017 and Quantity >
(select avg(Quantity) from Orders$ where YEAR([Order Date]) >= 2017)


--Display regions beating central region's total  profit

select    Region,sum(Profit) as regionnal_profits from Orders$ group by Region having sum(Profit) >

(select sum(Profit) from Orders$ where Region = 'CENTRAL')

/**
(No column name)
286397.021699999

(No column name)
39706.3625
**/

