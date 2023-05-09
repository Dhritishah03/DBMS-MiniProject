-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 25, 2020 at 10:21 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33
drop DATABASE flight_booking_db;
CREATE DATABASE flight_booking_db;
use flight_booking_db;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE TABLE `airlines_list` (
  `id` int(30) NOT NULL,
  `airlines` text NOT NULL,
  `logo_path` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `airlines_list` (`id`, `airlines`, `logo_path`) VALUES
(1, 'AirAsia','AirAsia_logo_text.png'),
(2, 'GoAir','goair-vector-logo.jpg'),
(3, 'Indigo','indigo-vector-logo-2022.png'),
(4, 'SpiceJet','SPICEJET.png'),
(5, 'JetAirways','Jet_Airways.png'),
(6, 'GoFirst','Go_First.jpg');


CREATE TABLE `airport_list` (
  `id` int(30) NOT NULL,
  `airport` text NOT NULL,
  `location` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `airport_list`
--

INSERT INTO `airport_list` (`id`, `airport`, `location`) VALUES
(1, 'Bhuntar', 'Manali'),
(2, 'Pune Airport', 'Pune'),
(3, 'Rajiv Gandhi International Airport', 'Hyderabad'),
(4, 'Dubai International Airport', 'Dubai'),
(5, 'CSMT Airport', 'Mumbai'),
(6,'Indira Gandhi International Airport','Delhi'),
(7,'Chennai International Airport','Chennai');

CREATE TABLE `booked_flight` (
  `id` int(30) NOT NULL,
  `flight_id` int(30) NOT NULL,
  `name` text NOT NULL,
  `address` text NOT NULL,
  `contact` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `booked_flight` (`id`, `flight_id`, `name`, `address`, `contact`) VALUES
(2, 3, 'Tanish Mehta', 'Swargate', '7020118897'),
(3, 4, 'Dhriti Shah', 'Camp', '8789685858'),
(4, 2, 'Priyank Sharma', 'Kothrud', '9090989897'),
(5, 3, 'Tejas Sontakke', 'MG Road', '9342678540'),
(6, 5, 'Aditya Zagade', 'FC Road', '8076937583'),
(7, 4, 'Disha Mundhe', 'JM Road', '9087643245'),
(8, 2, 'Ishaan Mehta', 'Camp', '8965787777');

CREATE TABLE `flight_list` (
  `id` int(30) NOT NULL,
  `airline_id` int(30) NOT NULL,
  `plane_no` text NOT NULL,
  `departure_airport_id` int(30) NOT NULL,
  `arrival_airport_id` int(30) NOT NULL,
  `departure_datetime` datetime NOT NULL,
  `arrival_datetime` datetime NOT NULL,
  `seats` int(10) NOT NULL DEFAULT 0,
  `price` double NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `flight_list` (`id`, `airline_id`, `plane_no`, `departure_airport_id`, `arrival_airport_id`, `departure_datetime`, `arrival_datetime`, `seats`, `price`, `date_created`) VALUES
(1,1,'AA09-14', 1, 3, '2023-05-17 04:00:00', '2023-05-17 5:30:00', 150, 7500, '2023-04-25 11:23:52'),
(2,2,'GA23-15', 1, 2, '2023-05-14 11:00:00', '2023-05-14 12:50:00', 100, 5000, '2023-03-26 11:46:12'),
(3,3,'IN88-11', 3, 1, '2023-05-30 08:00:00', '2023-05-30 08:45:00', 100, 2500, '2023-05-01 11:57:31'),
(4,4,'SP14-15', 3, 2, '2023-05-14 08:00:00', '2023-05-14 09:10:00', 100, 5000, '2023-02-25 11:46:12'),
(5,5,'JA78-98', 2, 3, '2023-05-14 12:00:00', '2023-05-14 14:00:00', 100, 5000, '2023-03-20 11:46:12'),
(6,6,'GF90-90', 4, 2, '2023-05-14 13:00:00', '2023-05-14 15:00:00', 100, 5000, '2023-01-30 11:46:12'),
(7,3,'IN88-11', 4, 1, '2023-05-14 14:00:00', '2023-05-14 15:10:00', 100, 5000, '2023-04-11 11:46:12'),
(8,5,'JA78-98', 3, 2, '2023-05-14 15:00:00', '2023-05-14 16:50:00', 100, 5000, '2023-03-09 11:46:12'),
(9,3,'IN88-11', 4, 5, '2023-05-14 17:00:00', '2023-05-14 18:35:00', 100, 5000, '2023-02-12 11:46:12'),
(10,3,'IN88-11', 5, 2, '2023-05-07 01:00:00', '2023-05-07 03:00:00', 100, 2500, '2023-04-09 14:50:47');

CREATE TABLE `system_settings` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `cover_img` text NOT NULL,
  `about_content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `system_settings` (`id`, `name`, `email`, `contact`, `cover_img`, `about_content`) VALUES
(1, 'Online Flight Booking System', 'tatpd1701@gmail.com', '9876543421', '1600998360_travel-cover.jpg', '&lt;p style=&quot;text-align: center; background: transparent; position: relative;&quot;&gt;&lt;span style=&quot;background: transparent; position: relative; font-size: 14px;&quot;&gt;&lt;span style=&quot;font-size:28px;background: transparent; position: relative;&quot;&gt;&lt;b style=&quot;margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/b&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-weight: 400; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&rsquo;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/span&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center; background: transparent; position: relative;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;');


CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `name` varchar(200) NOT NULL,
  `address` text NOT NULL,
  `contact` text NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;	

INSERT INTO `users` (id, name, `address`, `contact`, `username`, `password`) VALUES
(1,'Administrator', 'admin@gmail.com', '9898785649', 'admin', 'admin123'),
(7,'George Wilson', 'george@gmail.com', '9876542569', 'gwilson@sample.com', 'd40242fb4f'),
(9,'James Smith', 'james@gmail.com', '5455555623', 'jsmith@info.com', 'jsmith123'),
(10,'Claire Blake', 'claire@gmail.com', '9999988888', 'cblake@gmail.com', 'blake123'),
(15,'Shane Watson', 'shane@gmail.com', '9235456623', 'shane@hotmail.com', '123456789');

ALTER TABLE `airlines_list`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `airport_list`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `booked_flight`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `flight_list`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `airlines_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

ALTER TABLE `airport_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

ALTER TABLE `booked_flight`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

ALTER TABLE `flight_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

ALTER TABLE `system_settings`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;


-- DML

-- 1) List all flights and their departure and arrival airports, including the airport location.
SELECT f.airline_id, al.airlines, f.departure_datetime, f.arrival_datetime, da.airport AS departure_airport, da.location AS departure_location, aa.airport AS arrival_airport, aa.location AS arrival_location
FROM flight_list f
JOIN airlines_list al ON f.airline_id = al.id
JOIN airport_list da ON f.departure_airport_id = da.id
JOIN airport_list aa ON f.arrival_airport_id = aa.id;

-- 2) Cancel a booking
select * from booked_flight;
DELETE FROM booked_flight  WHERE id =2;
select * from booked_flight;

-- 3) Retrieve all flights with available seats
SELECT * FROM flight_list WHERE seats > 0;

-- 4) List the total number of seats available for all flights departing from Mactan-Cebu
SELECT SUM(seats) FROM flight_list WHERE departure_airport_id = (SELECT id FROM airport_list WHERE airport = 'Mactan-Cebu Airport');

-- 5) List all flights that are fully booked
SELECT * FROM flight_list WHERE seats = 0;

-- 6) List all flights that have not yet departed
SELECT * FROM flight_list WHERE departure_datetime > current_time();

-- 7) Retrieve all flights departing on a specific date:
SELECT * FROM flight_list WHERE DATE(departure_datetime) = "2020-10-14";

-- 8) Update the name of an airline in the airlines_list table
UPDATE airlines_list SET airlines = 'AirAsia' WHERE id = 1;
select * from airlines_list;

-- 9) List all flights departing within a specific date range (May 09 to May 30, 2023)
SELECT fl.airline_id, al.airlines, fl.departure_datetime, fl.arrival_datetime FROM flight_list fl JOIN airlines_list al ON fl.airline_id = al.id 
WHERE fl.departure_datetime BETWEEN '2023-05-09' AND '2023-05-30';

-- 10) Retrieve the airline ID and the number of flights for each airline
SELECT airline_id, COUNT(airline_id) AS num_flights FROM flight_list GROUP BY airline_id;



--drop trigger update_seats_available;
-- Triggers
--DELIMITER $$
--CREATE TRIGGER update_seats_available AFTER INSERT ON booked_flight
--FOR EACH ROW
--BEGIN
--    UPDATE flight_list SET seats = seats - 1 WHERE airline_id = NEW.flight_id;
--END$$
--DELIMITER ;


select * from flight_list;
insert into booked_flight values(9, 3, 'Abhinav Ranka', 'MG Road', '9999966666');
select * from booked_flight;
select * from flight_list;

DELIMITER //
CREATE PROCEDURE get_flight_count (IN airline_name VARCHAR(20), OUT flight_count INT)
BEGIN
    SELECT COUNT(airline_id) INTO flight_count FROM flight_list f
    JOIN airlines_list a ON f.airline_id = a.id
    WHERE a.airlines = airline_name;
END//
Delimiter ;
call get_flight_count('Indigo',@m);
select @m as COUNT;