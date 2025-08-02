--use practice_new

--select * from sys.tables

--declare @sys int(200) = select COUNT

use master

select * from sys.procedures

--declare @sys int = 



declare @COUNT_PROC int = (select distinct(COUNT(name)) from master.sys.procedures)

if (@COUNT_PROC = 2)
print @COUNT_PROC 
else
print 'incorrect count'

declare @t varchar(200) = getdate()
print @t



