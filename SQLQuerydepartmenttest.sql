use departments

select top 1 * from Departments
select top 1 * from Employees
select top 1 * from Projects

--1. Scenario: List all employees and their department names.

select  d.DepartmentName,e.Name      from   Employees e
inner join 
Departments d  on d.DepartmentID = e.DepartmentID 

--2. Scenario: Show all departments and their employees (including departments with no employees).

select  d.DepartmentName,e.Name ,d.DepartmentID     from   Employees e
left join 
Departments d  on d.DepartmentID = e.DepartmentID 

--Scenario: Find employees with a salary greater than 50000.

select  Name,EmployeeID,Salary      from Employees where Salary > 50000;

--4. Scenario: List employees in descending order of salary.


select  Name,EmployeeID,Salary      from Employees order by Salary desc

--5. Scenario: Categorize employees as 'High', 'Medium', or 'Low' based on salary.

select top 1 * from Employees

select  Name, salary, EmployeeID,
case
when salary between 35000.00 and 50000.00 then 'low'
when Salary between 50000.00 and 85000.00 then 'Medium'
when Salary > 85000.00 then 'High'
else 'high'
end as Salarycatagory
from Employees


--6. Scenario: Add a column Experience to the Employees’ table.

alter table Employees add  Experiences date

--7. Scenario: Count the number of employees in each department.

select top 1 * from Departments
select top 1 * from Employees
select top 1 * from Projects

select count(Name) as employee_no, DepartmentID from Employees group by DepartmentID

select   count(E.EmployeeID) as empcount,D.DepartmentID        from Departments D
left join
employees E
on E.DepartmentID = D.DepartmentID
group by D.DepartmentID

--8. Scenario: Show departments with more than 2 employees.

select   count(E.EmployeeID) as empcount,D.DepartmentName       from Departments D
left join
employees E
on E.DepartmentID = D.DepartmentID
group by D.DepartmentName
having count(E.EmployeeID) > 2

--9. Scenario: Create a view showing employee names and their project names.

select top 1 * from Departments
select top 1 * from Employees
select top 1 * from Projects
/**
create view employee_projects
as 
select   e.Name, p.ProjectName      from Employees e
inner join 
Projects p on p.DepartmentID = e.DepartmentID
**/
select * from employee_projects


-----------------------------
---Additional Scenarios----
----------------------------------

--1. Scenario: Show all employees and their department names (including employees with no department).

select top 1 * from Departments
select top 1 * from Employees
select top 1 * from Projects

select D.DepartmentName,E.Name     from Departments D
inner join 
Employees E on D.DepartmentID = E.DepartmentID


--2. Scenario: Find employees who joined after January 1, 2024.

select top 1 * from Employees

select [Name]  from Employees where JoinDate > 2024-01-01

--3. Scenario: List employees by department and then by salary (descending).
select top 1 * from Departments
select top 1 * from Employees
select top 1 * from Projects

select  Count(E.EmployeeID) as emp_count,E.Salary,D.DepartmentName       from  Departments D
inner join 
Employees E on E.DepartmentID = D.DepartmentID
group by E.Salary, D.DepartmentName

--4. Scenario: Count employees in each salary category






