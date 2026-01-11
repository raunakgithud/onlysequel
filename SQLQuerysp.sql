use IDEAS_DATABASE

select * from Orders$

--create sp for all orders
/**
create procedure show_all_oereds
as 
begin 
select  [Order ID],[Customer Name]  from Orders$
end;
**/
exec show_all_oereds

--2. technology specific orders
/**
create procedure tech_oereds
as 
begin 
select [Product Name],[Product Name],Sales  from Orders$ where Category like '%technology%'
end;

**/
exec tech_oereds

--filter by category
/**
create procedure get_order_by_category
@category varchar(50)
as
begin
select [Order ID],[Customer ID],Sales,Profit from Orders$  where Category = @category
END;
**/
exec get_order_by_category 
@category = 'FURNITURE'


--4. filter by city

create procedure city_type
@cityname varchar(500),
@region varchar(400)
as
begin
select City, Region from Orders$ where City = @cityname and Region = @region
end

exec city_type
@cityname = 'New York City',
@region = 'East'

--5. minimum sales filter

create procedure ordr_Minimun_sales
@minsales float , 
@maxsales float
as 
begin 
select  [Customer Name],sum(Sales) as toatl_sales  from Orders$ 
where Sales between @minsales and @maxsales
group by [Customer Name]
having sum(Sales) > 500
order by toatl_sales desc;
end;

exec ordr_Minimun_sales @minsales = 500, @maxsales = 2000;





