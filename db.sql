-- create airbnb database
CREATE DATABASE airbnb;
-- work with airbnb database
USE airbnb;

-- Booking status table
CREATE TABLE booking_status(
id INT PRIMARY KEY, -- unique identifier
status_name VARCHAR(100) -- name of the booking status
);