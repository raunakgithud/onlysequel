use healthcare
/**

CREATE TABLE Patients (
    PatientID       INT PRIMARY KEY,
    FirstName       VARCHAR(30),
    LastName        VARCHAR(30),
    Gender          CHAR(1),
    DOB             DATE,
    City            VARCHAR(40),
    StateProvince   VARCHAR(40),
    Country         VARCHAR(40),
    BloodGroup      VARCHAR(5),
    ChronicCondition VARCHAR(40),
    InsuranceProvider VARCHAR(40),
    InsurancePlan   VARCHAR(30),
    Phone           VARCHAR(15),
    Email           VARCHAR(60)
);
**/
/**
INSERT INTO Patients
(PatientID, FirstName, LastName, Gender, DOB, City, StateProvince, Country,
 BloodGroup, ChronicCondition, InsuranceProvider, InsurancePlan, Phone, Email)
VALUES
(1, 'Rahul', 'Sharma', 'M', '1985-01-15', 'Pune',      'Maharashtra', 'India', 'B+', 'Diabetes',      'MediCarePlus', 'Gold',   '9001000001', 'rahul.sharma@example.com'),
(2, 'Sneha', 'Iyer',   'F', '1990-03-22', 'Mumbai',    'Maharashtra', 'India', 'O+', 'Hypertension',  'HealthSecure', 'Silver', '9001000002', 'sneha.iyer@example.com'),
(3, 'Amit',  'Patel',  'M', '1978-07-09', 'Ahmedabad', 'Gujarat',     'India', 'A-', 'Asthma',        'MediCarePlus', 'Gold',   '9001000003', 'amit.patel@example.com'),
(4, 'Priya', 'Rao',    'F', '1988-11-30', 'Bengaluru', 'Karnataka',   'India', 'AB+', 'None',        'LifeHealth',   'Basic',  '9001000004', 'priya.rao@example.com'),
(5, 'Arjun', 'Naik',   'M', '1995-05-18', 'Hyderabad', 'Telangana',   'India', 'O-', 'Diabetes',      'HealthSecure', 'Platinum','9001000005','arjun.naik@example.com'),
(6, 'Meera', 'Das',    'F', '1972-02-04', 'Kolkata',   'West Bengal', 'India', 'B-', 'CKD',          'MediCarePlus', 'Silver', '9001000006', 'meera.das@example.com'),
(7, 'Vikram','Singh',  'M', '1982-09-27', 'Delhi',     'Delhi',       'India', 'A+', 'Hypertension',  'LifeHealth',   'Gold',   '9001000007', 'vikram.singh@example.com'),
(8, 'Kavya', 'Menon',  'F', '1993-12-12', 'Kochi',     'Kerala',      'India', 'O+', 'Hypothyroid',   'HealthSecure', 'Basic',  '9001000008', 'kavya.menon@example.com'),
(9, 'Sanjay','Yadav',  'M', '1980-06-05', 'Lucknow',   'Uttar Pradesh','India','B+', 'None',         'MediCarePlus', 'Platinum','9001000009','sanjay.yadav@example.com'),
(10,'Riya',  'Kapoor', 'F', '1999-08-21', 'Noida',     'Uttar Pradesh','India','AB-','PCOS',         'LifeHealth',   'Silver', '9001000010', 'riya.kapoor@example.com');

**/
/**
CREATE TABLE Visits (
    VisitID         INT PRIMARY KEY,
    PatientID       INT,
    VisitDate       DATE,
    Department      VARCHAR(40),
    Diagnosis       VARCHAR(60),
    ProcedureCode   VARCHAR(15),
    DoctorName      VARCHAR(40),
    VisitType       VARCHAR(20),   -- OPD / IPD / Emergency
    RoomType        VARCHAR(20),   -- Ward / ICU / Private
    AdmissionDate   DATE NULL,
    DischargeDate   DATE NULL,
    BillingAmount   DECIMAL(10,2),
    PaymentMethod   VARCHAR(20),
    FollowUpDate    DATE NULL,
    CONSTRAINT FK_Visits_Patients
        FOREIGN KEY (PatientID) REFERENCES Patients(PatientID)
);
**/
/**
INSERT INTO Visits
(VisitID, PatientID, VisitDate, Department, Diagnosis, ProcedureCode,
 DoctorName, VisitType, RoomType, AdmissionDate, DischargeDate,
 BillingAmount, PaymentMethod, FollowUpDate)
VALUES
(101, 1, '2025-01-10', 'Endocrinology', 'Type 2 Diabetes Checkup', 'PROC-DIAB-CHK',
 'Dr. S. Kulkarni', 'OPD', 'Ward', NULL, NULL, 1500.00, 'Cash', '2025-02-10'),
(102, 2, '2025-01-15', 'Cardiology', 'Hypertension Review', 'PROC-HTN-REV',
 'Dr. R. Mehta', 'OPD', 'Ward', NULL, NULL, 1800.00, 'Card', '2025-03-15'),
(103, 3, '2025-02-01', 'Pulmonology', 'Asthma Exacerbation', 'PROC-ASTH-ER',
 'Dr. A. Ghosh', 'Emergency', 'ICU', '2025-02-01', '2025-02-03', 24000.00, 'Insurance', '2025-02-20'),
(104, 4, '2025-02-12', 'General Medicine', 'Viral Fever', 'PROC-FEV-OPD',
 'Dr. P. Nair', 'OPD', 'Ward', NULL, NULL, 900.00, 'Cash', NULL),
(105, 5, '2025-02-20', 'Nephrology', 'CKD Stage 2', 'PROC-NEPH-CKD',
 'Dr. S. Reddy', 'IPD', 'Private', '2025-02-20', '2025-02-25', 52000.00, 'Insurance', '2025-03-25'),
(106, 6, '2025-03-05', 'Nephrology', 'CKD Follow-up', 'PROC-CKD-FUP',
 'Dr. S. Reddy', 'OPD', 'Ward', NULL, NULL, 2000.00, 'Card', '2025-04-05'),
(107, 7, '2025-03-11', 'Cardiology', 'Hypertension & Chest Pain', 'PROC-CARD-ANG',
 'Dr. R. Mehta', 'Emergency', 'ICU', '2025-03-11', '2025-03-14', 37500.00, 'Insurance', '2025-04-10'),
(108, 8, '2025-03-20', 'Endocrinology', 'Hypothyroidism Review', 'PROC-THYR-REV',
 'Dr. S. Kulkarni', 'OPD', 'Ward', NULL, NULL, 1600.00, 'UPI', '2025-05-20'),
(109, 9, '2025-04-02', 'General Medicine', 'Annual Health Check', 'PROC-ANN-CHK',
 'Dr. P. Nair', 'OPD', 'Ward', NULL, NULL, 3000.00, 'Cash', NULL),
(110,10, '2025-04-15', 'Gynecology', 'PCOS Management', 'PROC-PCOS-PLAN',
 'Dr. M. Sharma', 'OPD', 'Private', NULL, NULL, 2200.00, 'Card', '2025-06-15');
 **/

 --The set operators is use to combine results of two or more select statements
 --The primary set operator union union all except intersect (minus in some databases)
 --key rules fr set operator
 --every select statement must return the same no. of columns
 --The data type of the coresponding column in all select statements must be compatible

 --select top 1* from Patients
 --select top 1* from VISITS

 --1. list all unique cities where patients have visited hospitals

 --drop table Patients

 --drop table VISITS
 /**
CREATE TABLE Table1 (
    ID INT,
    Name VARCHAR(50),
    Age INT,
    Gender VARCHAR(10),
    Diagnosis VARCHAR(50),
    Treatment VARCHAR(50),
    AdmissionDate DATE,
    DischargeDate DATE,
    Doctor VARCHAR(50),
    Hospital VARCHAR(50),
    InsuranceID VARCHAR(20),
    Notes VARCHAR(100),
    City VARCHAR(50)
);

**/
/**

CREATE TABLE Table2 (
    ID INT,
    Name VARCHAR(50),
    Age INT,
    Gender VARCHAR(10),
    Diagnosis VARCHAR(50),
    Treatment VARCHAR(50),
    AdmissionDate DATE,
    DischargeDate DATE,
    Doctor VARCHAR(50),
    Hospital VARCHAR(50),
    InsuranceID VARCHAR(20),
    Notes VARCHAR(100),
    City VARCHAR(50)
);

**/
/**
INSERT INTO Table1 VALUES
(1, 'John Doe', 45, 'Male', 'Diabetes', 'Insulin', '2023-01-15', '2023-01-20', 'Dr. Smith', 'City Hosp', 'INS001', NULL, 'CityA'),
(2, 'Jane Smith', 38, 'Female', 'Hypertension', 'Medication', '2023-02-10', '2023-02-15', 'Dr. Brown', 'City Hosp', 'INS002', 'Regular follow-up', 'CityB'),
(3, 'Alice Brown', 29, 'Female', 'Asthma', 'Inhaler', '2023-03-05', '2023-03-10', 'Dr. Green', 'City Hosp', 'INS003', NULL, 'CityC'),
(4, 'Bob Johnson', 52, 'Male', 'Diabetes', 'Insulin', '2023-04-01', '2023-04-06', 'Dr. Smith', 'City Hosp', 'INS004', 'Referred to specialist', 'CityA'),
(5, 'Charlie Davis', 33, 'Male', 'Migraine', 'Medication', '2023-05-12', '2023-05-17', 'Dr. White', 'City Hosp', 'INS005', NULL, 'CityB'),
(6, 'Diana Evans', 41, 'Female', 'Asthma', 'Inhaler', '2023-06-20', '2023-06-25', 'Dr. Green', 'City Hosp', 'INS006', 'Discharged early', 'CityC'),
(7, 'Edward Fox', 55, 'Male', 'Heart Disease', 'Surgery', '2023-07-08', '2023-07-15', 'Dr. Black', 'City Hosp', 'INS007', NULL, 'CityA'),
(8, 'Fiona Gray', 30, 'Female', 'Depression', 'Therapy', '2023-08-14', '2023-08-21', 'Dr. Blue', 'City Hosp', 'INS008', 'Counselling required', 'CityB'),
(9, 'George Hill', 48, 'Male', 'Diabetes', 'Insulin', '2023-09-02', '2023-09-07', 'Dr. Smith', 'City Hosp', 'INS009', NULL, 'CityA'),
(10, 'Helen King', 36, 'Female', 'Hypertension', 'Medication', '2023-10-11', '2023-10-16', 'Dr. Brown', 'City Hosp', 'INS010', 'Regular checkup', 'CityB'),
(11, 'Ian Lewis', 27, 'Male', 'Asthma', 'Inhaler', '2023-11-20', '2023-11-25', 'Dr. Green', 'City Hosp', 'INS011', NULL, 'CityC'),
(12, 'Julia Moore', 44, 'Female', 'Diabetes', 'Insulin', '2023-12-05', '2023-12-10', 'Dr. Smith', 'City Hosp', 'INS012', 'Diet plan', 'CityA'),
(13, 'Kevin Nelson', 39, 'Male', 'Migraine', 'Medication', '2024-01-18', '2024-01-23', 'Dr. White', 'City Hosp', 'INS013', NULL, 'CityB'),
(14, 'Laura Owen', 42, 'Female', 'Asthma', 'Inhaler', '2024-02-22', '2024-02-27', 'Dr. Green', 'City Hosp', 'INS014', 'Recovery good', 'CityC'),
(15, 'Mark Parker', 50, 'Male', 'Heart Disease', 'Surgery', '2024-03-10', '2024-03-17', 'Dr. Black', 'City Hosp', 'INS015', NULL, 'CityA'),
(16, 'Nancy Quinn', 28, 'Female', 'Depression', 'Therapy', '2024-04-05', '2024-04-12', 'Dr. Blue', 'City Hosp', 'INS016', 'Follow-up needed', 'CityB'),
(17, 'Oliver Reed', 47, 'Male', 'Diabetes', 'Insulin', '2024-05-14', '2024-05-19', 'Dr. Smith', 'City Hosp', 'INS017', NULL, 'CityA'),
(18, 'Paula Scott', 37, 'Female', 'Hypertension', 'Medication', '2024-06-21', '2024-06-26', 'Dr. Brown', 'City Hosp', 'INS018', 'Medication adjusted', 'CityB'),
(19, 'Quinn Taylor', 26, 'Male', 'Asthma', 'Inhaler', '2024-07-15', '2024-07-20', 'Dr. Green', 'City Hosp', 'INS019', NULL, 'CityC'),
(20, 'Rachel Upton', 43, 'Female', 'Diabetes', 'Insulin', '2024-08-08', '2024-08-13', 'Dr. Smith', 'City Hosp', 'INS020', 'Referred to specialist', 'CityA'),
(21, 'Steve Vance', 35, 'Male', 'Migraine', 'Medication', '2024-09-10', '2024-09-15', 'Dr. White', 'City Hosp', 'INS021', NULL, 'CityB'),
(22, 'Tina Walsh', 40, 'Female', 'Asthma', 'Inhaler', '2024-10-05', '2024-10-10', 'Dr. Green', 'City Hosp', 'INS022', 'Discharged early', 'CityC'),
(23, 'Victor Xiong', 53, 'Male', 'Heart Disease', 'Surgery', '2024-11-12', '2024-11-19', 'Dr. Black', 'City Hosp', 'INS023', NULL, 'CityA'),
(24, 'Wendy Young', 31, 'Female', 'Depression', 'Therapy', '2024-12-03', '2024-12-10', 'Dr. Blue', 'City Hosp', 'INS024', 'Counselling required', 'CityB'),
(25, 'Xavier Zane', 46, 'Male', 'Diabetes', 'Insulin', '2025-01-07', '2025-01-12', 'Dr. Smith', 'City Hosp', 'INS025', NULL, 'CityA'),
(26, 'Yvonne Adams', 34, 'Female', 'Hypertension', 'Medication', '2025-02-14', '2025-02-19', 'Dr. Brown', 'City Hosp', 'INS026', 'Regular checkup', 'CityB'),
(27, 'Zachary Bell', 25, 'Male', 'Asthma', 'Inhaler', '2025-03-20', '2025-03-25', 'Dr. Green', 'City Hosp', 'INS027', NULL, 'CityC'),
(28, 'Anna Clark', 49, 'Female', 'Diabetes', 'Insulin', '2025-04-02', '2025-04-07', 'Dr. Smith', 'City Hosp', 'INS028', 'Diet plan', 'CityA'),
(29, 'Brian Dean', 32, 'Male', 'Migraine', 'Medication', '2025-05-11', '2025-05-16', 'Dr. White', 'City Hosp', 'INS029', NULL, 'CityB'),
(30, 'Carol Evans', 41, 'Female', 'Asthma', 'Inhaler', '2025-06-18', '2025-06-23', 'Dr. Green', 'City Hosp', 'INS030', 'Recovery good', 'CityC'),
(31, 'David Fox', 54, 'Male', 'Heart Disease', 'Surgery', '2025-07-09', '2025-07-16', 'Dr. Black', 'City Hosp', 'INS031', NULL, 'CityA'),
(32, 'Emma Gray', 29, 'Female', 'Depression', 'Therapy', '2025-08-13', '2025-08-20', 'Dr. Blue', 'City Hosp', 'INS032', 'Follow-up needed', 'CityB'),
(33, 'Frank Hill', 45, 'Male', 'Diabetes', 'Insulin', '2025-09-01', '2025-09-06', 'Dr. Smith', 'City Hosp', 'INS033', NULL, 'CityA'),
(34, 'Grace King', 38, 'Female', 'Hypertension', 'Medication', '2025-10-10', '2025-10-15', 'Dr. Brown', 'City Hosp', 'INS034', 'Medication adjusted', 'CityB'),
(35, 'Henry Lewis', 27, 'Male', 'Asthma', 'Inhaler', '2025-11-20', '2025-11-25', 'Dr. Green', 'City Hosp', 'INS035', NULL, 'CityC');

-- Insert 35 rows into Table2
INSERT INTO Table2 VALUES
(1, 'John Doe', 45, 'Male', 'Diabetes', 'Insulin', '2023-01-15', '2023-01-20', 'Dr. Smith', 'City Hosp', 'INS001', NULL, 'CityA'),
(2, 'Jane Smith', 38, 'Female', 'Hypertension', 'Medication', '2023-02-10', '2023-02-15', 'Dr. Brown', 'City Hosp', 'INS002', 'Regular follow-up', 'CityB'),
(3, 'Alice Brown', 29, 'Female', 'Asthma', 'Inhaler', '2023-03-05', '2023-03-10', 'Dr. Green', 'City Hosp', 'INS003', NULL, 'CityC'),
(4, 'Bob Johnson', 52, 'Male', 'Diabetes', 'Insulin', '2023-04-01', '2023-04-06', 'Dr. Smith', 'City Hosp', 'INS004', 'Referred to specialist', 'CityA'),
(5, 'Charlie Davis', 33, 'Male', 'Migraine', 'Medication', '2023-05-12', '2023-05-17', 'Dr. White', 'City Hosp', 'INS005', NULL, 'CityB'),
(6, 'Diana Evans', 41, 'Female', 'Asthma', 'Inhaler', '2023-06-20', '2023-06-25', 'Dr. Green', 'City Hosp', 'INS006', 'Discharged early', 'CityC'),
(7, 'Edward Fox', 55, 'Male', 'Heart Disease', 'Surgery', '2023-07-08', '2023-07-15', 'Dr. Black', 'City Hosp', 'INS007', NULL, 'CityA'),
(8, 'Fiona Gray', 30, 'Female', 'Depression', 'Therapy', '2023-08-14', '2023-08-21', 'Dr. Blue', 'City Hosp', 'INS008', 'Counselling required', 'CityB'),
(9, 'George Hill', 48, 'Male', 'Diabetes', 'Insulin', '2023-09-02', '2023-09-07', 'Dr. Smith', 'City Hosp', 'INS009', NULL, 'CityA'),
(10, 'Helen King', 36, 'Female', 'Hypertension', 'Medication', '2023-10-11', '2023-10-16', 'Dr. Brown', 'City Hosp', 'INS010', 'Regular checkup', 'CityB'),
(11, 'Ian Lewis', 27, 'Male', 'Asthma', 'Inhaler', '2023-11-20', '2023-11-25', 'Dr. Green', 'City Hosp', 'INS011', NULL, 'CityC'),
(12, 'Julia Moore', 44, 'Female', 'Diabetes', 'Insulin', '2023-12-05', '2023-12-10', 'Dr. Smith', 'City Hosp', 'INS012', 'Diet plan', 'CityA'),
(13, 'Kevin Nelson', 39, 'Male', 'Migraine', 'Medication', '2024-01-18', '2024-01-23', 'Dr. White', 'City Hosp', 'INS013', NULL, 'CityB'),
(14, 'Laura Owen', 42, 'Female', 'Asthma', 'Inhaler', '2024-02-22', '2024-02-27', 'Dr. Green', 'City Hosp', 'INS014', 'Recovery good', 'CityC'),
(15, 'Mark Parker', 50, 'Male', 'Heart Disease', 'Surgery', '2024-03-10', '2024-03-17', 'Dr. Black', 'City Hosp', 'INS015', NULL, 'CityA'),
(16, 'Nancy Quinn', 28, 'Female', 'Depression', 'Therapy', '2024-04-05', '2024-04-12', 'Dr. Blue', 'City Hosp', 'INS016', 'Follow-up needed', 'CityB'),
(17, 'Oliver Reed', 47, 'Male', 'Diabetes', 'Insulin', '2024-05-14', '2024-05-19', 'Dr. Smith', 'City Hosp', 'INS017', NULL, 'CityA'),
(18, 'Paula Scott', 37, 'Female', 'Hypertension', 'Medication', '2024-06-21', '2024-06-26', 'Dr. Brown', 'City Hosp', 'INS018', 'Medication adjusted', 'CityB'),
(19, 'Quinn Taylor', 26, 'Male', 'Asthma', 'Inhaler', '2024-07-15', '2024-07-20', 'Dr. Green', 'City Hosp', 'INS019', NULL, 'CityC'),
(20, 'Rachel Upton', 43, 'Female', 'Diabetes', 'Insulin', '2024-08-08', '2024-08-13', 'Dr. Smith', 'City Hosp', 'INS020', 'Referred to specialist', 'CityA'),
(21, 'Steve Vance', 35, 'Male', 'Migraine', 'Medication', '2024-09-10', '2024-09-15', 'Dr. White', 'City Hosp', 'INS021', NULL, 'CityB'),
(22, 'Tina Walsh', 40, 'Female', 'Asthma', 'Inhaler', '2024-10-05', '2024-10-10', 'Dr. Green', 'City Hosp', 'INS022', 'Discharged early', 'CityC'),
(23, 'Victor Xiong', 53, 'Male', 'Heart Disease', 'Surgery', '2024-11-12', '2024-11-19', 'Dr. Black', 'City Hosp', 'INS023', NULL, 'CityA'),
(24, 'Wendy Young', 31, 'Female', 'Depression', 'Therapy', '2024-12-03', '2024-12-10', 'Dr. Blue', 'City Hosp', 'INS024', 'Counselling required', 'CityB'),
(25, 'Xavier Zane', 46, 'Male', 'Diabetes', 'Insulin', '2025-01-07', '2025-01-12', 'Dr. Smith', 'City Hosp', 'INS025', NULL, 'CityA'),
(26, 'Yvonne Adams', 34, 'Female', 'Hypertension', 'Medication', '2025-02-14', '2025-02-19', 'Dr. Brown', 'City Hosp', 'INS026', 'Regular checkup', 'CityB'),
(27, 'Zachary Bell', 25, 'Male', 'Asthma', 'Inhaler', '2025-03-20', '2025-03-25', 'Dr. Green', 'City Hosp', 'INS027', NULL, 'CityC'),
(28, 'Anna Clark', 49, 'Female', 'Diabetes', 'Insulin', '2025-04-02', '2025-04-07', 'Dr. Smith', 'City Hosp', 'INS028', 'Diet plan', 'CityA'),
(29, 'Brian Dean', 32, 'Male', 'Migraine', 'Medication', '2025-05-11', '2025-05-16', 'Dr. White', 'City Hosp', 'INS029', NULL, 'CityB'),
(30, 'Carol Evans', 41, 'Female', 'Asthma', 'Inhaler', '2025-06-18', '2025-06-23', 'Dr. Green', 'City Hosp', 'INS030', 'Recovery good', 'CityC'),
(31, 'David Fox', 54, 'Male', 'Heart Disease', 'Surgery', '2025-07-09', '2025-07-16', 'Dr. Black', 'City Hosp', 'INS031', NULL, 'CityA'),
(32, 'Emma Gray', 29, 'Female', 'Depression', 'Therapy', '2025-08-13', '2025-08-20', 'Dr. Blue', 'City Hosp', 'INS032', 'Follow-up needed', 'CityB'),
(33, 'Frank Hill', 45, 'Male', 'Diabetes', 'Insulin', '2025-09-01', '2025-09-06', 'Dr. Smith', 'City Hosp', 'INS033', NULL, 'CityA'),
(34, 'Grace King', 38, 'Female', 'Hypertension', 'Medication', '2025-10-10', '2025-10-15', 'Dr. Brown', 'City Hosp', 'INS034', 'Medication adjusted', 'CityB'),
(35, 'Henry Lewis', 27, 'Male', 'Asthma', 'Inhaler', '2025-11-20', '2025-11-25', 'Dr. Green', 'City Hosp', 'INS035', NULL, 'CityC');

**/

select top 1* from table1
select top 1* from table2

select Diagnosis from table1
union 
select Diagnosis from table2

---list all hospitals where patients are treated

select Hospital from table1
union 
select Hospital from table2


---show all diagnosis including duplicates

select Diagnosis from table1
union all 
select Diagnosis from table2
order by diagnosis asc

-- identify hospital present in both tables

select HOSPITAL from table1
INTERSECT
select HOSPITAL from table2

--list doctors present in both tables

select Doctor from table1

select Doctor from table2

---it includes all rows preserving duplicates for faster performance
--find the diagnosis in table 1 and not present in table2



select Diagnosis from table2
except
select Diagnosis from table1






