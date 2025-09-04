-- create airbnb database
CREATE DATABASE airbnb;
-- work with airbnb database
USE airbnb;


-- Table: place_type
-- This table stores records for the type of place a property can be categorized under.

CREATE TABLE place_type (
    id INT PRIMARY KEY AUTO_INCREMENT,  -- Unique identifier for each place type
    type_name VARCHAR(100)              -- The name/description of the place type
);
