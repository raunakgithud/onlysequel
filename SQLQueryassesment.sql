--create database assesment

use assesment
/**
CREATE TABLE Patients (
PatientID INT PRIMARY KEY,
FirstName VARCHAR(50),
LastName VARCHAR(50),
DateOfBirth DATE,
Gender VARCHAR(10),
Phone VARCHAR(15),
Email VARCHAR(100),
Address VARCHAR(200),
City VARCHAR(50),
State VARCHAR(50),
Pincode VARCHAR(10),
IsActive varchar(10)
);
**/
/**
CREATE TABLE Appointments (
AppointmentID INT PRIMARY KEY,
PatientID INT,
AppointmentDate DATE,
AppointmentTime TIME,
DoctorName VARCHAR(100),

Department VARCHAR(50),
Purpose VARCHAR(100),
Status VARCHAR(20),
FOREIGN KEY (PatientID) REFERENCES Patients(PatientID)
);
**/
/**
INSERT INTO Patients VALUES
(1, 'Amit', 'Sharma', '1985-06-15', 'Male', '9876543210', 'amit.sharma@email.com', '123 Main St', 'Mumbai', 'Maharashtra', '400001', 'TRUE'),
(2, 'Priya', 'Patel', '1990-03-22', 'Female', '8765432109', 'priya.patel@email.com', '456 Oak Ave', 'Delhi', 'Delhi', '110001', 'TRUE'),
(3, 'Rahul', 'Kumar', '1988-11-08', 'Male', '7654321098', 'rahul.kumar@email.com', '789 Pine Rd', 'Bangalore', 'Karnataka', '560001', 'TRUE'),
(4, 'Sneha', 'Singh', '1992-07-14', 'Female', '6543210987', 'sneha.singh@email.com', '321 Elm St', 'Hyderabad', 'Telangana', '500001', 'TRUE'),
(5, 'Vikram', 'Verma', '1980-02-28', 'Male', '5432109876', 'vikram.verma@email.com', '654 Maple Ave', 'Chennai', 'Tamil Nadu', '600001', 'TRUE'),
(6, 'Neha', 'Gupta', '1995-09-10', 'Female', '4321098765', 'neha.gupta@email.com', '987 Birch Rd', 'Kolkata', 'West Bengal', '700001', 'TRUE'),
(7, 'Arjun', 'Reddy', '1983-12-05', 'Male', '3210987654', 'arjun.reddy@email.com', '147 Cedar St', 'Pune', 'Maharashtra', '411001', 'TRUE'),
(8, 'Meera', 'Sharma', '1987-04-17', 'Female', '2109876543', 'meera.sharma@email.com', '258 Spruce Ave', 'Ahmedabad', 'Gujarat', '380001', 'TRUE'),
(9, 'Karan', 'Malhotra', '1991-08-20', 'Male', '1098765432', 'karan.malhotra@email.com', '369 Willow Rd', 'Jaipur', 'Rajasthan', '302001', 'TRUE'),
(10, 'Anjali', 'Mehta', '1989-01-25', 'Female', '9876543211', 'anjali.mehta@email.com', '741 Ash St', 'Lucknow', 'Uttar Pradesh', '226001', 'TRUE');
**/
/**
INSERT INTO Appointments VALUES
(1, 1, '2025-12-10', '10:00:00', 'Dr. Smith', 'Cardiology', 'Routine Checkup', 'Scheduled'),
(2, 2, '2025-12-11', '11:30:00', 'Dr. Patel', 'Dermatology', 'Skin Allergy', 'Scheduled'),
(3, 3, '2025-12-12', '09:00:00', 'Dr. Kumar', 'Orthopedics', 'Joint Pain', 'Scheduled'),
(4, 4, '2025-12-13', '14:00:00', 'Dr. Singh', 'Pediatrics', 'Child Checkup', 'Scheduled'),
(5, 5, '2025-12-14', '16:00:00', 'Dr. Verma', 'Neurology', 'Headache', 'Scheduled'),
(6, 6, '2025-12-15', '10:30:00', 'Dr. Gupta', 'Gynecology', 'Pregnancy Checkup', 'Scheduled'),
(7, 7, '2025-12-16', '13:00:00', 'Dr. Reddy', 'ENT', 'Ear Infection', 'Scheduled'),
(8, 8, '2025-12-17', '15:30:00', 'Dr. Sharma', 'Ophthalmology', 'Eye Checkup', 'Scheduled'),
(9, 9, '2025-12-18', '17:00:00', 'Dr. Malhotra', 'Dentistry', 'Toothache', 'Scheduled'),
(10, 10, '2025-12-19', '18:00:00', 'Dr. Mehta', 'General Medicine', 'Fever', 'Scheduled');

**/

select top 1 * from Patients
select top 1 * from Appointments

--1.Add a new column named EmergencyContact to the Patients table with data type VARCHAR(15) 
alter table Patients add  EmergencyContact VARCHAR(15);
--2.Modify the Status column in the Appointments table to allow values up to 30 characters.
alter table Appointments alter column Status varchar(30)
--3.Retrieve the first name, last name, and appointment date for all patients who have an appointment scheduled for '2025-12-12' .

select p.FirstName,p.LastName,a.AppointmentDate   from  Patients as p
left join 
Appointments as a on p.PatientID = a.PatientID
where a.AppointmentDate = '2025-12-12';

--4.Write a query to display all appointments with patient names where the appointment purpose is 'Routine Checkup' .
select a.AppointmentID,a.AppointmentDate,a.AppointmentTime,p.FirstName,p.LastName,a.Purpose from   Patients as p
 right join
Appointments as a on p.PatientID = a.PatientID
where a.Purpose = 'Routine Checkup';
--5.Find all patients who have not scheduled any appointments (use a LEFT JOIN and WHERE clause).
select p.FirstName,p.LastName,a.AppointmentDate   from Patients as p
left join
Appointments as a on p.PatientID = a.PatientID
where a.AppointmentID is Null;
--6.List all appointments with patient names and doctor names for appointments that are scheduled after '2025-12-14'.

select p.FirstName,p.LastName,a.DoctorName,a.AppointmentDate     from Patients as p
inner join
Appointments as a on p.PatientID = a.PatientID
where a.AppointmentDate > '2025-12-14' order by a.AppointmentDate desc

--7.Write a query to show all appointments where the patient's last name is 'Sharma' and the appointment status is 'Scheduled'.
select a.AppointmentID,a.PatientID,a.AppointmentDate,a.AppointmentTime,p.FirstName,p.LastName from Patients as p
right join
Appointments as a on p.PatientID = a.PatientID

where( p.LastName = 'Sharma' )and (a.Status = 'Scheduled')

--8.Retrieve the appointment date and purpose for all appointments where the patient's city is 'Mumbai' .

select a.AppointmentDate,a.Purpose,p.city    from Patients as p
inner join
Appointments as a on p.PatientID = a.PatientID
where p.City = 'Mumbai';

--9.Display the patient name and appointment date for all appointments where the appointment time is after '14:00:00' .

select p.FirstName,p.LastName,a.AppointmentDate   from Patients as p
inner join
Appointments as a on p.PatientID = a.PatientID
where a.AppointmentTime > '14:00:00';

--10.Show the first name, last name, and appointment date for all patients whose phone number starts with '98' and have an appointment in the 'Cardiology' department.
select  p.FirstName,p.LastName,a.AppointmentDate    from Patients as p
inner join
Appointments as a on p.PatientID = a.PatientID
where (p.Phone like '98%') and( a.Department = 'Cardiology');