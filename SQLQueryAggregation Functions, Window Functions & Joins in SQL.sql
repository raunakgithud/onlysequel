--use practice

--CREATE TABLE Employees ( employee_id INT, name VARCHAR(50), department VARCHAR(50), salary INT, age INT, manager_id INT );
--CREATE TABLE Departments ( department_id INT, department_name VARCHAR(50), location VARCHAR(50) );

--INSERT INTO Employees VALUES (1, 'Amit', 'HR', 40000, 28, 5), (2, 'Neha', 'IT', 70000, 32, 6), (3, 'Raj', 'IT', 60000, 29, 6), (4, 'Priya', 'Finance', 80000, 35, 7), (5, 'Karan', 'HR', 90000, 45, NULL), (6, 'Suresh', 'IT', 100000, 40, NULL), (7, 'Meena', 'Finance', 120000, 50, NULL), (8, 'Ravi', 'HR', 30000, 26, 5), (9, 'Anjali', 'Finance', 75000, 31, 7), (10, 'Vikas', 'IT', 50000, 27, 6);
--INSERT INTO Departments VALUES (1, 'HR', 'Delhi'), (2, 'IT', 'Bangalore'), (3, 'Finance', 'Mumbai'), (4, 'Marketing', 'Pune');

select top 1* from Employees;
select top 1 * from Departments

--Write a query to find:
--Total number of employees
--Average salary
--Minimum and maximum salary

select count(distinct(name)) as totalemployee,avg(salary) as avgsalary,max(salary) as maxsalary,min(salary) as minsalary from Employees

--Find the number of employees with non-null salary values and compare it with total rows.

select count(*) as totalemploye from employees
select count(name) as notnullsalaried from employees where salary is not null

--Display department-wise:
--Total salary
--Average salary
--Number of employees

select d.department_name, sum(e.salary) as Totalsalary,AVG(e.salary) as Averagesalary,count(e.name) as Numberofemployees from 
Departments as d 
right join Employees as e on d.department_name = e.department
group by d.department_name 

--Find departments where the average salary is greater than 50,000.

select d.department_name , AVG(e.salary) as AvrageSalary   from Departments as d 
join Employees as e on d.department_name = e.department group by d.department_name
having AVG(e.salary) > 50000

--Write a query to find departments having more than 3 employees.

select department , count(employee_id) as Noofemployess from Employees
group by department having count(employee_id) > 3;

--Find the total salary of employees whose salary is between 30,000 and 80,000.

select count(*) as Noofemployees from Employees where salary between 30000 and 80000

--Using HAVING, filter departments where:
--Average age > 30 AND
--Total salary > 200,000

--select top 1 * from Employees
--select top 1 * from Departments

select department, AVG(age) as Average_age , sum(salary) as Total_salary from Employees
group by department having AVG(age) > 30 and sum(salary) > 200000

--Find departments where the maximum salary is greater than the overall average salary.

select department , max(salary) as maxsalary from Employees
group by department having max(salary) > (select AVG(salary) from Employees);

--Find departments where:
--Employee count ≥ 2
--Average salary between 40,000 and 90,000

select department, count(name) as noofemployee,AVG(salary) as Averagesalary from Employees
group by department having count(name) >= 2 and (AVG(salary) between 40000 and 90000);

--Write a query to calculate:
--Average Salary = SUM(salary) / COUNT(employee_id)
--Compare it with AVG(salary).

select AVG(salary) as AVGsalary1,  (SUM(salary) / COUNT(employee_id)) as AVGsalary2 from Employees


--Find departments whose total salary is greater than the total salary of 'HR' department.

--select top 1 * from Employees
--select top 1 * from Departments

select department,sum(salary) as Totalsalary from Employees group by department
having sum(salary) > (select sum(salary) from Employees where department like '%HR%');

--Assign a ROW_NUMBER to employees within each department based on salary (highest first).

select name,department,
 salary,ROW_NUMBER() OVER (
        PARTITION BY department
        ORDER BY salary DESC
    ) AS row_num from Employees;


--Rank employees using:
--RANK()
--DENSE_RANK()
--Compare the difference in output.

select name,department,RANK()over(
partition by department
order by salary desc) as Rank_indep,DENSE_RANK() over(
partition by department
order by salary desc) as DENSE_RANK_indept
from Employees


--Calculate a running total of salary for each department.

select department, sum(salary) as totalSalary from Employees group by department

--Find the average salary of each department using window functions (without GROUP BY).

select department, AVG(salary)over( partition by department) as AVGsalary from Employees

--Use LAG() to show the previous employee's salary in the same department.

select department , name , LAG(salary)Over(partition by department order by salary desc) as prevEmployeeSalary
from Employees

--Use LEAD() to show the next employee's salary.

select department,name,LEAD(salary) over(partition by department order by salary desc) as nextSalary from Employees


--Perform an INNER JOIN between Employees and Departments to display:
--Employee name
--Department name
--Location

select E.name,D.department_name,D.location  from Employees as E
inner join Departments as D on E.department = D.department_name;

--Perform a LEFT JOIN and show all employees, including those without matching departments.


select E.name,D.department_name, E.employee_id,E.salary from Employees as E left join Departments as D on  
 E.department = D.department_name

 --Perform a RIGHT JOIN and identify departments with no employees.

 select top 1*  from Employees
  select top 1*  from Departments

select D.department_name, count(E.employee_id) as noofemployee  from Departments as D RIGHT JOIN Employees as E on E.department = D.department_name
group by D.department_name having count(E.employee_id) = 0

--Perform a FULL OUTER JOIN and show unmatched records from both tables.

select  * from Employees as E FULL OUTER JOIN  Departments as D on E.department <> D.department_name

--Write a query using CROSS JOIN and explain the output.

select  * from Employees as E CROSS JOIN  Departments as D --on E.department = D.department_name

--Find department-wise total salary using JOIN.

select  D.department_name,sum(E.salary) as totalsalary  from Employees as E
join Departments as D on E.department = D.department_name
group by D.department_name  

--Find the department with the highest average salary.

select top 1 D.department_name,AVG(E.salary) as average_salary  from Employees as E
join Departments as D on E.department = D.department_name
group by D.department_name order by average_salary desc;

--Find employees whose salary is above the average salary of their department.


--self inner

select name,salary,department from Employees as e1
where e1.salary > (select AVG(e2.salary) from Employees as e2 where e1.department = e2.department)

--Find top 2 highest-paid employees in each department using window functions.

select  *  from (select e.* ,rank()over(partition by department order by salary desc)as paramitter from Employees as e ) sgrgated where paramitter < = 2


--Write a query to find employees who earn more than their manager.

select  * from Employees as e1 where e1.salary > (select e2.salary  from Employees as e2 where e2.employee_id = e1.manager_id)
select  * from Employees






