use practice_new
/**
[dbo].[attendance]
[dbo].[batches]
[dbo].[contest_problems]
[dbo].[contests]
[dbo].[courses]
[dbo].[enrollments]
[dbo].[example]
[dbo].[operation_requests]

select * from attendance

Atomicity: Entire transaction is treated as a single unit which either succeeds completely or fails completely.
Consistency: Database remains in a consistent state before and after the transaction.
Isolation: Transactions running concurrently do not interfere with each other’s data.
Durability: Once committed, the transaction’s changes are permanent.
**/
begin transaction T1;
select top 10*  from attendance;
select top 10 * from batches;
Commit ;---atomicity

begin transaction T2 ;
update attendance set attendance_status = 'absent' where attendance_id = 'A000001';
select * from attendance where attendance_id = 'A000001';
rollback;
----------
--common isolation problems
----------
begin transaction T3;
update batches set batch_status = 'completed' where batch_id = 'B003';
select * from batches where batch_id = 'B003';
rollback;

begin transaction T4; 
select * from batches where batch_id = 'B003';
commit;

------dirty  read;
--
begin transaction nonreapetable_read;
select * from batches where batch_id = 'B003';
update batches set batch_status = 'completed' where batch_id = 'B003';
select * from batches where batch_id = 'B003';
rollback;--- nonreapetable_read 
---------
set transaction isolation level serializable;
begin transaction phantom_read;
--select * from contests
select count(*) as row_count from contests where contest_status = 'published';
--delete   contests where contest_status = 'published';
select count(*) as row_count from contests where contest_status = 'published';
rollback;----phantom read

-------------------------------------------------------------

--------
--isolation levels and their effects
--------

set transaction isolation level read uncommitted;
begin transaction read_committed;
select * from contests where contest_title = 'CS103 Weekly Challenge 10';
update contests set contest_status = 'undone' where contest_title = 'CS103 Weekly Challenge 10';
select * from contests where contest_title = 'CS103 Weekly Challenge 10';
rollback;

set transaction isolation level read committed;
begin transaction read_committed;
select course_id from contests where contest_title = 'CS103 Weekly Challenge 10';
select course_id from contests where contest_title in ('CS103 Weekly Challenge 10','CS203 Weekly Challenge 3','CS205 Weekly Challenge 6');
commit;

set transaction isolation level repeatable read;
begin transaction repeatable_read;
select * from contests as contests1 where contest_title = 'CS103 Weekly Challenge 10';
select * from contests as contests2 where contest_title = 'CS103 Weekly Challenge 10';
select * from contests as contests3 where contest_title = 'CS103 Weekly Challenge 10';
commit;

set transaction isolation level serializable;
begin transaction serialize;
select * from contests where contest_title = 'CS103 Weekly Challenge 10';
select * from contests where contest_title = 'CS203 Weekly Challenge 3';
select * from contests where contest_title = 'CS205 Weekly Challenge 6';
commit;

----------------------------------------------------------------------------------
--concurrency control in database

begin transaction lost_update1;
update contests set contest_status = 'complicated' where course_id = 'C003';
update contests set contest_status = 'notcomplicated' where course_id = 'C003';
select * from contests where course_id = 'C003'
rollback;
--------------------------------------------------------------------------

--Indexing in database

begin transaction creating_index;
select * from contests where contest_status = 'completed'
create index idx_content on contests(contest_status);
select * from contests where contest_status = 'completed';
commit;

---------------------------------------------------------------------------------
--relational database design 
----------------------------------











