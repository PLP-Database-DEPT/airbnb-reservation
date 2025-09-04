-- create airbnb database
CREATE DATABASE airbnb;
-- work with airbnb database
USE airbnb;

-- Creating a property_type table to store types of properties
CREATE TABLE property_type (
    id INT AUTO_INCREMENT PRIMARY KEY,
    type_name VARCHAR(255)
);

-- Any other existing code...