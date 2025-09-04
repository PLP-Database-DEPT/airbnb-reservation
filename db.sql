-- create airbnb database
CREATE DATABASE airbnb;
-- work with airbnb database
USE airbnb;

-- Creating the location table
CREATE TABLE location(
id INT PRIMARY KEY UNIQUE,
country_id INT REFERENCES country(country_id) ON DELETE CASCADE,
location_name VARCHAR(255) NOT NULL
);