-- create airbnb database
CREATE DATABASE airbnb;
-- work with airbnb database
USE airbnb;
-- customer table
CREATE TABLE customer(
  customerId INT PRIMARY KEY,
  FirstName VARCHAR(200),
  SurName  VARCHAR(200),
  PhoneNo INT
); 
-- bnbs table
CREATE TABLE bnbs(
  bnbId INT PRIMARY KEY,
  location VARCHAR(1000),
  type VARCHAR(1000)
);
-- booking table
CREATE TABLE booking(
  bookingId INT AUTO_INCREMENT PRIMARY KEY,
  customerId INT,
  bnbId  INT ,
  FOREIGN KEY (customerId) REFERENCE customer(customerId),
  FOREIGN KEY (bnbId) REFERENCE bnbs(bnbId)
); 
-- payment table
 CREATE TABLE payment(
  paymentId INT PRIMARY KEY,
  bookingId INT,
  FOREIGN KEY (bookingId) REFERENCE booking(bookingId)
 );
