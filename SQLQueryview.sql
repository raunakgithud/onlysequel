use IDEAS_DATABASE


--1. design a view to display order id customer name segment for subcategory 'Appliences'

select * from Orders$
/*
create view Appliences
as
select [Order ID],[Customer Name],Segment  from Orders$
where [Sub-Category] = 'Appliences';

**/
--select * from Appliences

--Drop view Appliences

--2 regional performance view
--Leadership wants regional summary(region-state level)

create view vw_Region_state_performance
as
select Region,State,round(sum(SALES),2) as total_sales, round(sum(Profit),2) as total_profit, count(distinct([Order ID])) as order_count
from Orders$  group by Region,State

--where [Sub-Category] = 'Appliences';
/**
create view vw_Region_state_performance
as
select Region,State,round(sum(SALES),2) as total_sales, round(sum(Profit),2) as total_profit, count(distinct([Order ID])) as order_count
from Orders$  group by Region,State
**/
select * from vw_Region_state_performance
--3.display the high value customers creating a view
create view High_value_customers
as
select [Customer ID],[Customer Name],sum(Sales) as total_sale,sum(Profit) as total_profit  from Orders$
group by [Customer ID] , [Customer Name]

select * from High_value_customers

--4.yearly category trend view(for time series)
--year([Order Date]
--category
--sum(sales)
--sum(Profit)

create view Yearly_category_trend
as
select   year([Order Date]) as yearly,Category,sum(Sales) as total_sales,sum(Profit) as total_profit from Orders$
where Category = 'TECHNOLOGY'
group by Category, year([Order Date])

select * from Yearly_category_trend












