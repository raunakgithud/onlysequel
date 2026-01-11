use departments
/**
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(100) NOT NULL,
    Location VARCHAR(50),
    Budget DECIMAL(12,2),
    HeadCount INT,
    ManagerID INT,
    StartDate DATE,
    Status VARCHAR(20),
    Email VARCHAR(100),
    Phone VARCHAR(20),
    CreatedBy VARCHAR(50),
    CreatedDate DATE
);
**/
/**
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    DepartmentID INT,
    Salary DECIMAL(12,2),
    JoinDate DATE,
    Designation VARCHAR(100),
    Experience DECIMAL(4,1),
    Email VARCHAR(100),
    Phone VARCHAR(20),
    Status VARCHAR(20),
    ReportingManager INT,
    CreatedBy VARCHAR(50),
    CreatedDate DATE,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);

**/
/**
CREATE TABLE Projects (
    ProjectID INT PRIMARY KEY,
    ProjectName VARCHAR(100) NOT NULL,
    DepartmentID INT,
    StartDate DATE,
    EndDate DATE,
    Budget DECIMAL(12,2),
    ActualCost DECIMAL(12,2),
    Status VARCHAR(20),
    Priority VARCHAR(10),
    Client VARCHAR(50),
    ProjectManager INT,
    CreatedBy VARCHAR(50),
    CreatedDate DATE,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);
**/
/**
INSERT INTO Departments (DepartmentID, DepartmentName, Location, Budget, HeadCount, ManagerID, StartDate, Status, Email, Phone, CreatedBy, CreatedDate) VALUES 
(1, 'Software Development', 'Bangalore', 2500000.00, 45, 1001, '2022-01-15', 'Active', 'dept1@techcorp.com', '+91-9123456789', 'Admin1', '2022-01-15'),
(2, 'Data Science', 'Hyderabad', 3000000.00, 30, 1002, '2022-02-20', 'Active', 'dept2@techcorp.com', '+91-9234567890', 'Admin2', '2022-02-20'),
(3, 'DevOps', 'Pune', 1800000.00, 20, 1003, '2022-03-10', 'Active', 'dept3@techcorp.com', '+91-9345678901', 'Admin3', '2022-03-10'),
(4, 'Cloud Engineering', 'Chennai', 2200000.00, 25, 1004, '2022-04-05', 'Active', 'dept4@techcorp.com', '+91-9456789012', 'Admin4', '2022-04-05'),
(5, 'Cybersecurity', 'Mumbai', 2800000.00, 15, 1005, '2022-05-12', 'Active', 'dept5@techcorp.com', '+91-9567890123', 'Admin5', '2022-05-12'),
(6, 'AI/ML', 'Delhi', 3200000.00, 35, 1006, '2022-06-18', 'Active', 'dept6@techcorp.com', '+91-9678901234', 'Admin1', '2022-06-18'),
(7, 'Frontend', 'Gurgaon', 1500000.00, 10, 1007, '2022-07-22', 'Active', 'dept7@techcorp.com', '+91-9789012345', 'Admin2', '2022-07-22'),
(8, 'Backend', 'Noida', 1700000.00, 12, 1008, '2022-08-30', 'Active', 'dept8@techcorp.com', '+91-9890123456', 'Admin3', '2022-08-30'),
(9, 'Mobile Development', 'Bangalore', 2000000.00, 18, 1009, '2022-09-14', 'Active', 'dept9@techcorp.com', '+91-9901234567', 'Admin4', '2022-09-14'),
(10, 'Database Administration', 'Hyderabad', 1300000.00, 8, 1010, '2022-10-07', 'Active', 'dept10@techcorp.com', '+91-9012345678', 'Admin5', '2022-10-07'),
(11, 'QA & Testing', 'Pune', 1600000.00, 22, 1011, '2022-11-01', 'Active', 'dept11@techcorp.com', '+91-9123456789', 'Admin1', '2022-11-01'),
(12, 'Product Management', 'Chennai', 1900000.00, 14, 1012, '2022-12-15', 'Active', 'dept12@techcorp.com', '+91-9234567890', 'Admin2', '2022-12-15'),
(13, 'UI/UX Design', 'Mumbai', 1400000.00, 10, 1013, '2023-01-20', 'Active', 'dept13@techcorp.com', '+91-9345678901', 'Admin3', '2023-01-20'),
(14, 'Technical Support', 'Delhi', 1200000.00, 16, 1014, '2023-02-25', 'Active', 'dept14@techcorp.com', '+91-9456789012', 'Admin4', '2023-02-25'),
(15, 'IT Operations', 'Gurgaon', 1100000.00, 9, 1015, '2023-03-10', 'Active', 'dept15@techcorp.com', '+91-9567890123', 'Admin5', '2023-03-10'),
(16, 'Software Development', 'Noida', 2600000.00, 40, 1016, '2023-04-15', 'Active', 'dept16@techcorp.com', '+91-9678901234', 'Admin1', '2023-04-15'),
(17, 'Data Science', 'Bangalore', 3100000.00, 32, 1017, '2023-05-20', 'Active', 'dept17@techcorp.com', '+91-9789012345', 'Admin2', '2023-05-20'),
(18, 'DevOps', 'Hyderabad', 1900000.00, 21, 1018, '2023-06-10', 'Active', 'dept18@techcorp.com', '+91-9890123456', 'Admin3', '2023-06-10'),
(19, 'Cloud Engineering', 'Pune', 2300000.00, 26, 1019, '2023-07-05', 'Active', 'dept19@techcorp.com', '+91-9901234567', 'Admin4', '2023-07-05'),
(20, 'Cybersecurity', 'Chennai', 2900000.00, 16, 1020, '2023-08-12', 'Active', 'dept20@techcorp.com', '+91-9012345678', 'Admin5', '2023-08-12'),
(21, 'AI/ML', 'Mumbai', 3300000.00, 36, 1021, '2023-09-18', 'Active', 'dept21@techcorp.com', '+91-9123456789', 'Admin1', '2023-09-18'),
(22, 'Frontend', 'Delhi', 1600000.00, 11, 1022, '2023-10-22', 'Active', 'dept22@techcorp.com', '+91-9234567890', 'Admin2', '2023-10-22'),
(23, 'Backend', 'Gurgaon', 1800000.00, 13, 1023, '2023-11-30', 'Active', 'dept23@techcorp.com', '+91-9345678901', 'Admin3', '2023-11-30'),
(24, 'Mobile Development', 'Noida', 2100000.00, 19, 1024, '2023-12-14', 'Active', 'dept24@techcorp.com', '+91-9456789012', 'Admin4', '2023-12-14'),
(25, 'Database Administration', 'Bangalore', 1400000.00, 9, 1025, '2024-01-07', 'Active', 'dept25@techcorp.com', '+91-9567890123', 'Admin5', '2024-01-07'),
(26, 'QA & Testing', 'Hyderabad', 1700000.00, 23, 1026, '2024-02-01', 'Active', 'dept26@techcorp.com', '+91-9678901234', 'Admin1', '2024-02-01'),
(27, 'Product Management', 'Pune', 2000000.00, 15, 1027, '2024-03-15', 'Active', 'dept27@techcorp.com', '+91-9789012345', 'Admin2', '2024-03-15'),
(28, 'UI/UX Design', 'Chennai', 1500000.00, 11, 1028, '2024-04-20', 'Active', 'dept28@techcorp.com', '+91-9890123456', 'Admin3', '2024-04-20'),
(29, 'Technical Support', 'Mumbai', 1300000.00, 17, 1029, '2024-05-25', 'Active', 'dept29@techcorp.com', '+91-9901234567', 'Admin4', '2024-05-25'),
(30, 'IT Operations', 'Delhi', 1200000.00, 10, 1030, '2024-06-10', 'Active', 'dept30@techcorp.com', '+91-9012345678', 'Admin5', '2024-06-10');


INSERT INTO Employees (EmployeeID, Name, DepartmentID, Salary, JoinDate, Designation, Experience, Email, Phone, Status, ReportingManager, CreatedBy, CreatedDate) VALUES 
(1001, 'Amit Sharma', 1, 85000.00, '2022-01-15', 'Software Engineer', 5.2, 'emp1001@techcorp.com', '+91-9123456789', 'Active', 1001, 'Admin1', '2022-01-15'),
(1002, 'Priya Patel', 2, 92000.00, '2022-02-20', 'Data Scientist', 6.1, 'emp1002@techcorp.com', '+91-9234567890', 'Active', 1002, 'Admin2', '2022-02-20'),
(1003, 'Rahul Singh', 3, 78000.00, '2022-03-10', 'DevOps Engineer', 4.5, 'emp1003@techcorp.com', '+91-9345678901', 'Active', 1003, 'Admin3', '2022-03-10'),
(1004, 'Sneha Kumar', 4, 87000.00, '2022-04-05', 'Cloud Engineer', 5.8, 'emp1004@techcorp.com', '+91-9456789012', 'Active', 1004, 'Admin4', '2022-04-05'),
(1005, 'Vikram Reddy', 5, 95000.00, '2022-05-12', 'Security Analyst', 7.0, 'emp1005@techcorp.com', '+91-9567890123', 'Active', 1005, 'Admin5', '2022-05-12'),
(1006, 'Neha Gupta', 6, 100000.00, '2022-06-18', 'AI/ML Engineer', 8.3, 'emp1006@techcorp.com', '+91-9678901234', 'Active', 1006, 'Admin1', '2022-06-18'),
(1007, 'Arjun Verma', 7, 75000.00, '2022-07-22', 'Frontend Developer', 4.1, 'emp1007@techcorp.com', '+91-9789012345', 'Active', 1007, 'Admin2', '2022-07-22'),
(1008, 'Meera Iyer', 8, 80000.00, '2022-08-30', 'Backend Developer', 5.5, 'emp1008@techcorp.com', '+91-9890123456', 'Active', 1008, 'Admin3', '2022-08-30'),
(1009, 'Karan Menon', 9, 82000.00, '2022-09-14', 'Mobile Developer', 5.0, 'emp1009@techcorp.com', '+91-9901234567', 'Active', 1009, 'Admin4', '2022-09-14'),
(1010, 'Ananya Das', 10, 70000.00, '2022-10-07', 'DBA', 3.8, 'emp1010@techcorp.com', '+91-9012345678', 'Active', 1010, 'Admin5', '2022-10-07'),
(1011, 'Amit Patel', 11, 76000.00, '2022-11-01', 'QA Engineer', 4.2, 'emp1011@techcorp.com', '+91-9123456789', 'Active', 1011, 'Admin1', '2022-11-01'),
(1012, 'Priya Sharma', 12, 88000.00, '2022-12-15', 'Product Manager', 6.0, 'emp1012@techcorp.com', '+91-9234567890', 'Active', 1012, 'Admin2', '2022-12-15'),
(1013, 'Rahul Patel', 13, 73000.00, '2023-01-20', 'UI/UX Designer', 3.9, 'emp1013@techcorp.com', '+91-9345678901', 'Active', 1013, 'Admin3', '2023-01-20'),
(1014, 'Sneha Singh', 14, 68000.00, '2023-02-25', 'Support Engineer', 3.5, 'emp1014@techcorp.com', '+91-9456789012', 'Active', 1014, 'Admin4', '2023-02-25'),
(1015, 'Vikram Kumar', 15, 72000.00, '2023-03-10', 'IT Admin', 4.0, 'emp1015@techcorp.com', '+91-9567890123', 'Active', 1015, 'Admin5', '2023-03-10'),
(1016, 'Neha Reddy', 16, 86000.00, '2023-04-15', 'Software Engineer', 5.3, 'emp1016@techcorp.com', '+91-9678901234', 'Active', 1016, 'Admin1', '2023-04-15'),
(1017, 'Arjun Gupta', 17, 93000.00, '2023-05-20', 'Data Scientist', 6.2, 'emp1017@techcorp.com', '+91-9789012345', 'Active', 1017, 'Admin2', '2023-05-20'),
(1018, 'Meera Verma', 18, 79000.00, '2023-06-10', 'DevOps Engineer', 4.6, 'emp1018@techcorp.com', '+91-9890123456', 'Active', 1018, 'Admin3', '2023-06-10'),
(1019, 'Karan Iyer', 19, 88000.00, '2023-07-05', 'Cloud Engineer', 5.9, 'emp1019@techcorp.com', '+91-9901234567', 'Active', 1019, 'Admin4', '2023-07-05'),
(1020, 'Ananya Menon', 20, 96000.00, '2023-08-12', 'Security Analyst', 7.1, 'emp1020@techcorp.com', '+91-9012345678', 'Active', 1020, 'Admin5', '2023-08-12'),
(1021, 'Amit Das', 21, 101000.00, '2023-09-18', 'AI/ML Engineer', 8.4, 'emp1021@techcorp.com', '+91-9123456789', 'Active', 1021, 'Admin1', '2023-09-18'),
(1022, 'Priya Kumar', 22, 76000.00, '2023-10-22', 'Frontend Developer', 4.2, 'emp1022@techcorp.com', '+91-9234567890', 'Active', 1022, 'Admin2', '2023-10-22'),
(1023, 'Rahul Reddy', 23, 81000.00, '2023-11-30', 'Backend Developer', 5.6, 'emp1023@techcorp.com', '+91-9345678901', 'Active', 1023, 'Admin3', '2023-11-30'),
(1024, 'Sneha Gupta', 24, 83000.00, '2023-12-14', 'Mobile Developer', 5.1, 'emp1024@techcorp.com', '+91-9456789012', 'Active', 1024, 'Admin4', '2023-12-14'),
(1025, 'Vikram Verma', 25, 71000.00, '2024-01-07', 'DBA', 3.9, 'emp1025@techcorp.com', '+91-9567890123', 'Active', 1025, 'Admin5', '2024-01-07'),
(1026, 'Neha Iyer', 26, 77000.00, '2024-02-01', 'QA Engineer', 4.3, 'emp1026@techcorp.com', '+91-9678901234', 'Active', 1026, 'Admin1', '2024-02-01'),
(1027, 'Arjun Menon', 27, 89000.00, '2024-03-15', 'Product Manager', 6.1, 'emp1027@techcorp.com', '+91-9789012345', 'Active', 1027, 'Admin2', '2024-03-15'),
(1028, 'Meera Das', 28, 74000.00, '2024-04-20', 'UI/UX Designer', 4.0, 'emp1028@techcorp.com', '+91-9890123456', 'Active', 1028, 'Admin3', '2024-04-20'),
(1029, 'Karan Kumar', 29, 69000.00, '2024-05-25', 'Support Engineer', 3.6, 'emp1029@techcorp.com', '+91-9901234567', 'Active', 1029, 'Admin4', '2024-05-25'),
(1030, 'Ananya Reddy', 30, 73000.00, '2024-06-10', 'IT Admin', 4.1, 'emp1030@techcorp.com', '+91-9012345678', 'Active', 1030, 'Admin5', '2024-06-10');


INSERT INTO Projects (ProjectID, ProjectName, DepartmentID, StartDate, EndDate, Budget, ActualCost, Status, Priority, Client, ProjectManager, CreatedBy, CreatedDate) VALUES 
(2001, 'ERP Migration', 1, '2022-01-15', '2022-06-15', 500000.00, 480000.00, 'Completed', 'High', 'Client1', 1001, 'Admin1', '2022-01-15'),
(2002, 'CRM Upgrade', 2, '2022-02-20', '2022-07-20', 600000.00, 580000.00, 'Completed', 'Medium', 'Client2', 1002, 'Admin2', '2022-02-20'),
(2003, 'Data Warehouse', 3, '2022-03-10', '2022-08-10', 400000.00, 390000.00, 'Completed', 'High', 'Client3', 1003, 'Admin3', '2022-03-10'),
(2004, 'AI Chatbot', 4, '2022-04-05', '2022-09-05', 700000.00, 680000.00, 'Completed', 'High', 'Client4', 1004, 'Admin4', '2022-04-05'),
(2005, 'Mobile App v2', 5, '2022-05-12', '2022-10-12', 550000.00, 530000.00, 'Completed', 'Medium', 'Client5', 1005, 'Admin5', '2022-05-12'),
(2006, 'Cloud Migration', 6, '2022-06-18', '2022-11-18', 800000.00, 780000.00, 'Completed', 'High', 'Client6', 1006, 'Admin1', '2022-06-18'),
(2007, 'Security Audit', 7, '2022-07-22', '2022-12-22', 350000.00, 340000.00, 'Completed', 'High', 'Client7', 1007, 'Admin2', '2022-07-22'),
(2008, 'BI Dashboard', 8, '2022-08-30', '2023-01-30', 450000.00, 430000.00, 'Completed', 'Medium', 'Client8', 1008, 'Admin3', '2022-08-30'),
(2009, 'Microservices', 9, '2022-09-14', '2023-02-14', 650000.00, 630000.00, 'Completed', 'High', 'Client9', 1009, 'Admin4', '2022-09-14'),
(2010, 'DevOps Pipeline', 10, '2022-10-07', '2023-03-07', 500000.00, 490000.00, 'Completed', 'Medium', 'Client10', 1010, 'Admin5', '2022-10-07'),
(2011, 'IoT Platform', 11, '2022-11-01', '2023-04-01', 750000.00, 730000.00, 'Completed', 'High', 'Client1', 1011, 'Admin1', '2022-11-01'),
(2012, 'Analytics Engine', 12, '2022-12-15', '2023-05-15', 600000.00, 580000.00, 'Completed', 'Medium', 'Client2', 1012, 'Admin2', '2022-12-15'),
(2013, 'Payment Gateway', 13, '2023-01-20', '2023-06-20', 450000.00, 440000.00, 'Completed', 'High', 'Client3', 1013, 'Admin3', '2023-01-20'),
(2014, 'User Portal', 14, '2023-02-25', '2023-07-25', 550000.00, 540000.00, 'Completed', 'Medium', 'Client4', 1014, 'Admin4', '2023-02-25'),
(2015, 'API Gateway', 15, '2023-03-10', '2023-08-10', 500000.00, 490000.00, 'Completed', 'High', 'Client5', 1015, 'Admin5', '2023-03-10'),
(2016, 'Search Engine', 16, '2023-04-15', '2023-09-15', 600000.00, 590000.00, 'Completed', 'Medium', 'Client6', 1016, 'Admin1', '2023-04-15'),
(2017, 'Notification System', 17, '2023-05-20', '2023-10-20', 400000.00, 390000.00, 'Completed', 'High', 'Client7', 1017, 'Admin2', '2023-05-20'),
(2018, 'Workflow Engine', 18, '2023-06-10', '2023-11-10', 550000.00, 540000.00, 'Completed', 'Medium', 'Client8', 1018, 'Admin3', '2023-06-10'),
(2019, 'Document Management', 19, '2023-07-05', '2023-12-05', 450000.00, 440000.00, 'Completed', 'High', 'Client9', 1019, 'Admin4', '2023-07-05'),
(2020, 'Monitoring Tool', 20, '2023-08-12', '2024-01-12', 500000.00, 490000.00, 'Completed', 'Medium', 'Client10', 1020, 'Admin5', '2023-08-12'),
(2021, 'ERP Migration', 21, '2023-09-18', '2024-02-18', 510000.00, 500000.00, 'Completed', 'High', 'Client1', 1021, 'Admin1', '2023-09-18'),
(2022, 'CRM Upgrade', 22, '2023-10-22', '2024-03-22', 610000.00, 600000.00, 'Completed', 'Medium', 'Client2', 1022, 'Admin2', '2023-10-22'),
(2023, 'Data Warehouse', 23, '2023-11-30', '2024-04-30', 410000.00, 400000.00, 'Completed', 'High', 'Client3', 1023, 'Admin3', '2023-11-30'),
(2024, 'AI Chatbot', 24, '2023-12-14', '2024-05-14', 710000.00, 700000.00, 'Completed', 'High', 'Client4', 1024, 'Admin4', '2023-12-14'),
(2025, 'Mobile App v2', 25, '2024-01-07', '2024-06-07', 560000.00, 550000.00, 'Completed', 'Medium', 'Client5', 1025, 'Admin5', '2024-01-07'),
(2026, 'Cloud Migration', 26, '2024-02-01', '2024-07-01', 810000.00, 800000.00, 'Completed', 'High', 'Client6', 1026, 'Admin1', '2024-02-01'),
(2027, 'Security Audit', 27, '2024-03-15', '2024-08-15', 360000.00, 350000.00, 'Completed', 'High', 'Client7', 1027, 'Admin2', '2024-03-15'),
(2028, 'BI Dashboard', 28, '2024-04-20', '2024-09-20', 460000.00, 450000.00, 'Completed', 'Medium', 'Client8', 1028, 'Admin3', '2024-04-20'),
(2029, 'Microservices', 29, '2024-05-25', '2024-10-25', 660000.00, 650000.00, 'Completed', 'High', 'Client9', 1029, 'Admin4', '2024-05-25'),
(2030, 'DevOps Pipeline', 30, '2024-06-10', '2024-11-10', 510000.00, 500000.00, 'Completed', 'Medium', 'Client10', 1030, 'Admin5', '2024-06-10');
**/

select top 1 * from Departments
select top 1 * from Employees
select top 1 * from Projects