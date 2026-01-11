--use IDEAS_DATABASE

--create database aviation

use aviation

/**

CREATE TABLE Flights (
    FlightID        INT PRIMARY KEY,
    AirlineCode     VARCHAR(5),
    FlightNumber    VARCHAR(10),
    OriginAirport   VARCHAR(5),
    DestinationAirport VARCHAR(5),
    DepartureDate   DATE,
    DepartureTime   TIME,
    ArrivalTime     TIME,
    DistanceKM      INT,
    BaseFare        DECIMAL(10,2),
    Status          VARCHAR(20)
);
**/
/**
CREATE TABLE Bookings (
    BookingID       INT PRIMARY KEY,
    FlightID        INT,
    PNR             VARCHAR(12),
    BookingDate     DATE,
    TravelClass     VARCHAR(10),
    SeatNumber      VARCHAR(5),
    PassengerName   VARCHAR(80),
    PassengerType   VARCHAR(15),
    TicketPrice     DECIMAL(10,2),
    PaymentMethod   VARCHAR(20),
    BookingStatus   VARCHAR(20),
    CONSTRAINT FK_Bookings_Flights
        FOREIGN KEY (FlightID) REFERENCES Flights(FlightID)
);
**/
/**
insert into Flights values
(1,'AI','AI851','PNQ','DEL','2025-01-10','07:30','09:40',1180,4500,'On Time'),
(2,'AI','AI852','DEL','PNQ','2025-01-10','18:30','20:40',1180,4400,'Delayed'),
(3,'6E','6E101','BOM','BLR','2025-01-11','06:15','08:05',980,3800,'On Time'),
(4,'6E','6E102','BLR','BOM','2025-01-11','21:00','22:50',980,3900,'Cancelled'),
(5,'UK','UK901','DEL','BLR','2025-01-12','09:00','11:30',1740,5200,'On Time'),
(6,'UK','UK902','BLR','DEL','2025-01-12','17:00','19:30',1740,5100,'On Time'),
(7,'SG','SG415','PNQ','BOM','2025-01-13','10:00','11:00',120,2500,'On Time'),
(8,'SG','SG416','BOM','PNQ','2025-01-13','15:00','16:00',120,2400,'Delayed'),
(9,'AI','AI601','BOM','DEL','2025-01-14','08:30','10:45',1150,4700,'On Time'),
(10,'AI','AI602','DEL','BOM','2025-01-14','20:00','22:15',1150,4600,'On Time'),
(11,'6E','6E301','DEL','CCU','2025-01-15','05:45','08:00',1300,4300,'On Time'),
(12,'6E','6E302','CCU','DEL','2025-01-15','19:15','21:30',1300,4200,'Delayed'),
(13,'UK','UK711','BOM','HYD','2025-01-16','12:30','14:00',620,3500,'On Time'),
(14,'UK','UK712','HYD','BOM','2025-01-16','15:30','17:00',620,3400,'On Time'),
(15,'SG','SG201','DEL','PNQ','2025-01-17','06:00','08:10',1180,4300,'Cancelled'),
(16,'SG','SG202','PNQ','DEL','2025-01-17','19:00','21:10',1180,4200,'On Time'),
(17,'AI','AI775','CCU','BLR','2025-01-18','07:15','09:30',1540,5000,'On Time'),
(18,'AI','AI776','BLR','CCU','2025-01-18','18:30','20:45',1540,4900,'Delayed'),
(19,'6E','6E555','HYD','DEL','2025-01-19','09:45','11:55',1250,4100,'On Time'),
(20,'6E','6E556','DEL','HYD','2025-01-19','16:15','18:25',1250,4050,'On Time');
**/

/**
insert into Bookings values
(101,1,'PNR001','2024-12-20','Economy','12A','Anita Sharma','Adult',4800,'Card','Confirmed'),
(102,1,'PNR002','2024-12-22','Economy','12B','Rahul Verma','Adult',4700,'UPI','Confirmed'),
(103,2,'PNR003','2024-12-25','Business','2A','Sneha Kulkarni','Adult',9800,'Card','Confirmed'),
(104,3,'PNR004','2024-12-26','Economy','18C','Vikram Patil','Adult',3900,'NetBanking','Confirmed'),
(105,3,'PNR005','2024-12-27','Economy','18D','Kiran Joshi','Adult',3850,'Card','Cancelled'),
(106,4,'PNR006','2024-12-28','Economy','20A','Pooja Desai','Adult',4000,'Card','Cancelled'),
(107,5,'PNR007','2024-12-28','Business','3C','Amit Kulkarni','Adult',11200,'Card','Confirmed'),
(108,5,'PNR008','2024-12-29','Economy','15A','Meera Nair','Adult',5400,'UPI','Confirmed'),
(109,6,'PNR009','2024-12-30','Economy','16B','Suresh Rao','Adult',5300,'Card','Confirmed'),
(110,7,'PNR010','2025-01-01','Economy','10C','Manish Kapoor','Adult',2700,'Card','Confirmed'),
(111,8,'PNR011','2025-01-01','Economy','11A','Neha Gandhi','Adult',2600,'UPI','Confirmed'),
(112,9,'PNR012','2025-01-02','Business','4A','Prakash Iyer','Adult',10200,'Card','Confirmed'),
(113,10,'PNR013','2025-01-02','Economy','19D','Rita Menon','Adult',4900,'NetBanking','Confirmed'),
(114,10,'PNR014','2025-01-03','Economy','19E','Arjun Mehta','Adult',4850,'Card','No Show'),
(115,11,'PNR015','2025-01-03','Economy','14B','Divya Saxena','Adult',4600,'Card','Confirmed'),
(116,12,'PNR016','2025-01-04','Economy','14C','Nitin Bose','Adult',4500,'UPI','Confirmed'),
(117,13,'PNR017','2025-01-04','Economy','22A','Isha Jain','Adult',3700,'Card','Confirmed'),
(118,14,'PNR018','2025-01-05','Business','1A','Rohan Gupta','Adult',8200,'Card','Confirmed'),
(119,18,'PNR019','2025-01-05','Economy','21C','Tarun Kale','Adult',5200,'UPI','Confirmed'),
(120,20,'PNR020','2025-01-06','Economy','17D','Lakshmi Pillai','Adult',4400,'Card','Confirmed');
**/


select top 1 * from Flights
select top 1 * from Bookings
/**
declare
@bid int = (select BookingID from Bookings where PNR = 'PNR001')
print @bid
if @bid = 101
print 'correct'
**/
-------------------------------------------------------------------

--select   from Flights f 

--inner join Bookings b on f.FlightID = b.FlightID

/**
select b.BookingStatus,f.FlightID,f.FlightNumber  from  Bookings b

join

Flights f on b.FlightID = f.FlightID

where BookingStatus = 'Confirmed';
**/

--find all flights with their booking show null if no booking

select top 1 * from Flights
select top 1 * from Bookings


select fl.FlightID , fl.FlightNumber,fl.OriginAirport,fl.DestinationAirport,bk.BookingID,bk.BookingStatus,bk.PassengerName   from  Flights as fl
left join
Bookings as bk on fl.FlightID = bk.FlightID
where BookingStatus is null order by FlightID asc

select fl.FlightID , fl.FlightNumber,fl.OriginAirport,fl.DestinationAirport,bk.BookingID,bk.BookingStatus,bk.PassengerName   from  Flights as fl
left join
Bookings as bk on fl.FlightID = bk.FlightID
where BookingStatus is not null order by FlightID desc


--show all bookings and status


select * from Flights as fl 

full join 

Bookings as bk on fl.FlightID = bk.FlightID


select bk.BookingID,bk.BookingDate,bk.BookingStatus,fl.Status,BK.PassengerName from Flights as fl 

right join 

Bookings as bk on fl.FlightID = bk.FlightID

where PassengerName in ('Pooja Desai', 'Vikram Patil')  ---like '%Vikram%' -- '_a%',-- 'p%' 


--display data of pooja patil and vikram desai

--display all flights and all bookings(matched or unmatched)


select fl.FlightID, fl.FlightNumber,bk.BookingID,bk.BookingDate,bk.BookingStatus   from Flights fl
full join 
Bookings bk on fl.FlightID = bk.FlightID


------------------------------

--display the passanger detail departing from mumbai(BOM)


select top 1 * from Flights
select top 1 * from Bookings



select bk.PassengerName,bk.PassengerType,bk.BookingDate,fl.OriginAirport   from Flights fl 
right join
Bookings bk on fl.FlightID = bk.FlightID
where fl.OriginAirport = 'BOM';

--bookings with no fligt records

select fl.FlightID,fl.FlightNumber,bk.BookingStatus  from Bookings as bk 
right join 
Flights as fl on fl.FlightID = bk.FlightID
where fl.FlightID is null













