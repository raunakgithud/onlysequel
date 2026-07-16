use practice_new

--Tutorial Session 10 - Indexing and Optimisation

--Aggregation function 

--[dbo].[attendance]
--[dbo].[batches]
--[dbo].[contest_problems]
--[dbo].[courses]
--[dbo].[enrollments]
--[dbo].[example]
--COUNT: Counts the number of rows or non-null values.
--SUM: Returns the total sum of a numeric column.
--AVG: Returns the average value of a numeric column.
--MIN: Returns the minimum value in the column.
--MAX: Returns the maximum value in the column.
---------------------------------------------------------------

select * from attendance

select * from batches

select * from contest_problems

--count of contest_id in problem_order(1,2)

select problem_order,count(contest_id) as count_of_contest_id from contest_problems group by problem_order having problem_order in (1,2)
