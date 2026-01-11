use IDEAS_DATABASE

select top 5 * from Orders$
select top 5 * from Returns$


select o.[Order ID],o.[Customer Name],o.Region,r.Returned   from Orders$  o
inner join
Returns$ r on o.[Order ID] = r.[Order ID]

select o.[Order ID],o.[Customer Name],o.Region,r.Returned   from Orders$  o
left join
Returns$ r on o.[Order ID] = r.[Order ID]

select o.[Order ID],o.[Customer Name],o.Region,r.Returned   from Orders$  o
right join
Returns$ r on o.[Order ID] = r.[Order ID]

select o.[Order ID],o.[Customer Name],o.Region,r.Returned   from Orders$  o
full join
Returns$ r on o.[Order ID] = r.[Order ID]

select * from People$
truncate table People$

select * from Orders$

--agrigate function 

select Region, sum(sales) as total_sales from Orders$ group by Region

select Region,Category, sum(sales) as total_sales from Orders$ group by Region,Category