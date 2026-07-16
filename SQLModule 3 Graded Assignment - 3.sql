use practice_new
---------------
--Task 1
---------------
/**
create table Students (
sudent_id varchar(40) not null primary key ,
grade varchar(20),
student_name varchar(50),
);


create table Course (
course_id varchar(40) not null primary key,
course_name varchar(60), 
grade varchar(20)
);




create table instructor (
course_id varchar(40) references Course(course_id),
instructor_id varchar(40) not null  primary key,
instructor_name varchar(80)
);



create table enrollment(
enrollment_id varchar(40) not null primary key,
course_id varchar(40) references Course(course_id),
instructor_id varchar(40) references instructor(instructor_id),
);
**/
select * from Students;
select * from Course;
select * from instructor;
select * from enrollment;
-----------------
--Task 3
-----------------
--PRAGMA foreign_keys = ON;
/**
insert into Students values 
('MASAI2001','A', 'Rohit'),
('MASAI2002','A+','Mohit'),
('MASAI2003','B','Rahul'),
('MASAI2004','B+','Romila'),
('MASAI2005','A','Roshni'),
('MASAI2006','C','Aditya'),
('MASAI2007','A+','Akansha'),
('MASAI2008','A','Rehman'),
('MASAI2009','B','kamal'),
('MASAI2010','A','Sashi');


insert into Course values 

('CSE3001','CS','NULL'),
('CSE3002','AIML','NULL'),
('CSE3003','CG','NULL'),
('CSE3004','SD','NULL'),
('CSE3005','DA','NULL'),
('CSE3006','TOC','NULL'),
('CSE3007','JAVA','NULL'),
('CSE3008','DBA','NULL'),
('CSE3009','ROS','NULL'),
('CSE3010','REACT','NULL'),
('CSE3011','','');

insert into instructor values 
('CSE3001','INS001','PRAKASH'),
('CSE3002','INS002','PRANAY'),
('CSE3003','INS003','PAROMITA'),
('CSE3004','INS004','AKASH'),
('CSE3005','INS005','ASHISH'),
('CSE3006','INS006','AKSHAY'),
('CSE3007','INS007','PRAVIN'),
('CSE3008','INS008','SURYA'),
('CSE3009','INS009','SURESH'),
('CSE3010','INS010','PURAN');



insert into enrollment values
('en101','CSE3001','INS001'),
('en102','CSE3002','INS002'),
('en103','CSE3003','INS003'),
('en104','CSE3004','INS004'),
('en105','CSE3005','INS005'),
('en106','CSE3006','INS006'),
('en107','CSE3007','INS007'),
('en108','CSE3008','INS008'),
('en109','CSE3009','INS009'),
('en110','CSE3010','INS010');

**/

----------
--Task 4
----------

--One query using IN and one using BETWEEN
set transaction isolation level read committed;
begin transaction in_and_between;
select instructor_id ,instructor_name from instructor where instructor_name in ('PRAKASH','AKASH','SURYA','PURAN');
select i.instructor_name ,e.enrollment_id,e.course_id  from instructor as i Left join enrollment as e on i.course_id = e.course_id where i.instructor_id between 'INS001' and 'INS005';
commit;


--One query using IS NULL or IS NOT NULL correctly (not = NULL).

set transaction isolation level read committed;
begin transaction null_not_null;
select* from Course where grade is null;
commit;

--One query using GROUP BY with HAVING (not WHERE) to filter an aggregate.

set transaction isolation level read committed;
begin transaction Groupby_having;
select count(course_id) as no_of_courseper_instractor,course_id  from enrollment group by course_id having count(course_id) = 1;
commit;



--At least three different join types among INNER JOIN, LEFT JOIN, RIGHT JOIN, and FULL OUTER JOIN 
--(use whichever your chosen database engine supports; if your engine lacks FULL OUTER JOIN, note the substitution in a comment).




set transaction isolation level read committed ;
begin transaction joins;
--inner join between Course and instructor
select C.course_id, i.instructor_name  from Course as C inner join instructor as i on i.course_id = C.course_id where C.course_name in ('CS','JAVA','TOC');
--LEFT JOIN between instructor and enrollment
select i.instructor_name ,e.enrollment_id,e.course_id  from instructor as i Left join enrollment as e on i.course_id = e.course_id where i.instructor_id between 'INS001' and 'INS005';
--FULL OUTER JOIN  between Course and enrollment
select C.course_name,C.course_name,e.enrollment_id,e.instructor_id,C.grade  from Course as C Full outer join enrollment as e on C.course_id = e.course_id ;

commit;

--One scalar subquery, one correlated subquery, and one query using EXISTS.

set transaction isolation level read committed;
begin transaction sub_q;
--scalar subquery
select instructor_name  from instructor where course_id = (select course_id from Course where course_name = 'AIML');
--correlated subquery
select instructor_name ,instructor_id from instructor where course_id in  (select course_id from Course where course_name in ('AIML','DBA','JAVA'));
---one query using EXISTS
if exists (select 1 from Course where course_name is not null)
select course_name from Course;
commit;

---One query using a set operation (UNION, UNION ALL, INTERSECT, or EXCEPT).

set transaction isolation level read uncommitted;
begin transaction set_operations;
--UNION
select course_id from Course
UNION
select course_id from instructor;
--UNION ALL
select course_id from instructor
UNION ALL 
select course_id from enrollments;
--INTERSECT
select instructor_id from instructor
INTERSECT
select instructor_id from enrollment;
rollback;

--One query using a window function (ROW_NUMBER(), RANK(), or an aggregate window function with PARTITION BY).

set transaction isolation level read committed;
begin transaction window_function;
select student_name, rank()over(partition by  sudent_id order by grade ) as Student_index    from Students;
commit;


/**
select name,department,RANK()over(
partition by department
order by salary desc) as Rank_indep,DENSE_RANK() over(
partition by department
order by salary desc) as DENSE_RANK_indept
from Employees
**/

---------------------
---Task 5
---------------------

/**
Indexing. Choose at least two columns used in the WHERE, JOIN, or ORDER BY clauses of your Task 4 queries and write 
CREATE INDEX statements for them (including at least one composite index on two columns used together). In README.md, 
justify each index by naming the specific query it speeds up, and explain in text one case where you deliberately did
not index a column (e.g., low cardinality, or a column with heavy write load) and why.
**/

begin transaction indexing;
create index Student_indexing on students(sudent_id,grade)
select * from students where sudent_id like '%MASAI2%' and grade is not null;
rollback;




-------------------
---Task 6
-------------------
--Transactions and isolation. Write one multi-statement transaction (using your engine's BEGIN/COMMIT/ROLLBACK syntax) that 
--updates two related rows together (e.g., enrolling a student decrements an available-seats count and inserts an enrollment row) 
--so that both changes succeed or neither does. In README.md, describe a concrete concurrent-access scenario on this schema 
--(e.g., two students enrolling in the last open seat at the same time) that could cause a lost update or a dirty read, name which 
--isolation level (Read Uncommitted, Read Committed, Repeatable Read, or Serializable) prevents the specific problem you described, 
--and justify your choice.

set transaction isolation level read Uncommitted;
begin transaction multi_statement;
--updates two related rows together (e.g., enrolling a student decrements an available-seats count and inserts an enrollment row) 
--so that both changes succeed or neither does.

select count(*) as studentCount from students; --student count
select count(*) as enrollmentCount from enrollment; --enrollment count
--enrolling a student decrements an available-seats 
insert into students values ('MASAI2021','C', 'Rima');
--inserts an enrollment row
insert into Course values ('CSE3013','ANGULAR',NULL);
insert into instructor values ('CSE3013','INS013','PARUL');
insert into enrollment values ('en113','CSE3013','INS013');




select count(*) as studentCount from students; --student count
select count(*) as enrollmentCount from enrollment; --enrollment count

rollback;

