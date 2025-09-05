-- Active: 1753875628157@@127.0.0.1@3306@airbnb
-- create airbnb database
CREATE DATABASE airbnb;
-- work with airbnb database
USE airbnb;

-- Create country table

CREATE TABLE country (
    id INT PRIMARY KEY,      -- Unique identifier for each country
    region_id INT,            -- Foreign Key linking to the 'region' table
    country_name VARCHAR(255),      -- Name of the country
    CONSTRAINT fk_region FOREIGN KEY (region_id)     -- Foreign Key constraint to ensure that the region_id refers to a valid region in the 'region' table
    REFERENCES region(id)
);