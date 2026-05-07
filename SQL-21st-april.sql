[dbo].[Customers]
[dbo].[Departments]
[dbo].[Employees]
[dbo].[OrderItems]
[dbo].[Orders]
[dbo].[Products]
select top 1 * from Customers
begin transaction

--update Customers set Name = 'Raunak' where CustomerID = 5

commit;
rollback

save point

casecade