use practice_new
--[dbo].[attendance]
--[dbo].[batches]
--[dbo].[contest_problems]
--[dbo].[contests]
--[dbo].[courses]
--Atomicity, consistancy, isolation, Durability
------------------------------------------------------------------------------------
--isolation problems 
--------------------------
begin transaction Dirty_read;
update attendance set attendance_status = 'proxy' where attendance_id = 'A000001';
select * from attendance where attendance_id = 'A000001';
rollback;

begin transaction dirty_read_committed;
select * from attendance where attendance_id = 'A000001';
commit;
-------------------------------------------------------------------------------------
begin transaction repetable_read;
select * from attendance where attendance_id = 'A000001';
update attendance set attendance_status = 'proxy' where attendance_id = 'A000001';
select * from attendance where attendance_id = 'A000001';
rollback;
--------------------------------------------------------------------------------------

begin transaction phantom_read;
select count(*) as row_count from attendance where attendance_status = 'present';
delete attendance where attendance_status = 'present';
select count(*) as row_count from attendance where attendance_status = 'present';
rollback;
----------------------------------------------------------------------------------------
--isolation levels
------------------


set transaction isolation level read Uncommitted;
begin transaction read_uncommitted;
select * from attendance where attendance_id = 'A000001';
update attendance set attendance_status = 'proxy' where attendance_id = 'A000001';
select * from attendance where attendance_id = 'A000001';
rollback;

set transaction isolation level read committed;
begin transaction raed_commited;
select session_id from attendance where attendance_id = 'A000001';
select session_id from attendance where attendance_id in ('A000001','A000002','A000004');
commit;

set transaction isolation level repeatable read;
begin transaction repeatable_read;
select student_id as id_1 from attendance where attendance_id = 'A000001';
select student_id as id_2 from attendance where attendance_id = 'A000001';
select student_id as id_3 from attendance where attendance_id = 'A000001';
commit;

set transaction isolation level serializable read;
begin transaction serializable_read;
select student_id as id_1 from attendance where attendance_id = 'A000001';
select student_id as id_2 from attendance where attendance_id = 'A000002';
select student_id as id_3 from attendance where attendance_id = 'A000004';
commit;
-------------------------------------------------------------------------------------
--Academic Session 9 - Relation Database Design

--indexing

begin transaction indexing;
select * from attendance where attendance_status = 'present';
create index in_status on attendance(attendance_status);
select * from attendance where attendance_status = 'present';
commit;

--begin transaction T1;
--drop index in_status;
--rollback;

--------------------------------------------------------------------------------------
--normalization 
----------------

--Normal forms 
--1st NF no multi valued attribute
--2nd NF  1st NF + no partial dependencies: no non-pime depends on prime key
--3rd NF  2nd NF + no transitive dependencies:no non- prim - key will not be dependent on other.
--non prime key.
--BNF stronger version of 3NF

  --PRIMARY KEY(student_id, course_id),--PRIMARY KEY(student_id, course_id) -- Composite key
  --FOREIGN KEY(student_id) REFERENCES students(student_id),
  --FOREIGN KEY(course_id) REFERENCES courses(course_id)

