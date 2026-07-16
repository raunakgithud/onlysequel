use practice_new
--[dbo].[attendance]
/**
attendance_id
session_id
student_id
attendance_status
marked_at
**/
--[dbo].[batches]
/**
batch_id
batch_code
program
start_date
end_date
batch_status
**/
--[dbo].[contest_problems]
/**
contest_id
problem_id
problem_order
**/
--ALTER TABLE table_name ADD PRIMARY KEY (column_name);
--ALTER TABLE employees DROP PRIMARY KEY
--ALTER TABLE orders ADD CONSTRAINT fk_customer FOREIGN KEY (customer_id) REFERENCES customers(customer_id);
--[dbo].[contests]
/**
contest_id
course_id
contest_title
start_time
end_time
contest_status
**/
--[dbo].[courses]
/**
course_id
course_code
course_title
course_status
credit_hours
**/
--[dbo].[enrollments]
/**
enrollment_id
student_id
course_id
enrolled_on
enrollment_status
final_grade
**/
--[dbo].[operation_requests]
/**
operation_id
requested_by
operation_type
target_table
target_record_id
requested_at
reason
approval_status
executed_at
**/
--[dbo].[test_results]
/**
result_id
submission_id
test_case_id
result_status
runtime_ms
memory_kb
awarded_points
**/



/**
 
create table attendance
(
attendance_id int primary key , 
session_id int not null,
student_id int unique,
attendance_status varchar(400),
marked_at datetime
)

--select top 10 * from batches

create table batches
(
batch_id varchar(400) primary key,
batch_code varchar(200) not null,
program varchar(300),
start_date date not null,
end_date date , 
batch_status varchar(400)
)

--select top 1 * from contest_problems

create table [dbo].[contest_problems]
(
contest_id varchar(50) primary key, 
problem_id varchar(50) not null, 
problem_order int not null
);

--select top 1 * from contests
create table contests
(
foreign key (contest_id)  references contest_problems(contest_id),
course_id varchar(50) primary key, 
contest_title varchar(500),
start_time datetime not null,
end_time datetime not null, 
contest_status varchar(400)
)

--select  * from courses
create table courses
(
foreign key (course_id) references contest_problems(course_id), 
course_code varchar(50) primary key,
course_title varchar(500) not null, 
course_status varchar(50) not null,
credit_hours int not null
)

--select top 1 * from enrollments

create table enrollments
(
enrollment_id varchar(50) primary key, 
foreign key (student_id) references   attendance(student_id), 
foreign key (course_id) references   contests(course_id), 
enrolled_on date not null, 
enrollment_status varchar(50) not null, 
final_grade char(20) not null
)


--select top 1 * from operation_requests

create table operation_requests
(
operation_id  varchar(50) primary key, 
requested_by varchar(40) unique, 
operation_type varchar(200) not null,
target_table varchar(350) not null, 
target_record_id varchar(250) unique,
requested_at datetime not null,
reason varchar(600) not null, 
approval_status varchar(400), 
executed_at datetime not null
);


--select top 10 * from test_results

create table test_results
(
result_id varchar(50) primary key,
submission_id varchar(50) unique, 
test_case_id varchar(40) unique, 
result_status varchar(50) not null,
runtime_ms int not null, 
memory_kb bigint not null, 
awarded_points int
);

**/ 


select * from operation_requests
select * from attendance
select * from batches
select * from enrollments



