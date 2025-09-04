-- create airbnb database
CREATE DATABASE airbnb;
-- work with airbnb database
USE airbnb;

 -- Create region table to store world regions 
CREATE TABLE region(
id INT PRIMARY KEY AUTO_INCREMENT,  -- Unique identifier for each region
region_name  VARCHAR(20) NOT NULL      -- Name of the region
);

