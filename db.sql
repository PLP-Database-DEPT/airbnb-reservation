-- create airbnb database
CREATE DATABASE airbnb;
-- work with airbnb database
USE airbnb;

-- Table: attribute_category
-- Description: Stores categories for attributes

CREATE TABLE attribute_category (
    id INT PRIMARY KEY, -- Unique identifier for each category
    category_name VARCHAR(255) NOT NULL
);
-- Table: attribute
-- Description: Stores a list of all the attributes 
-- that can be applied to a property.
 
CREATE TABLE attribute (
    id INT PRIMARY KEY, -- Unique identifier for each attribute
    category_id INT NOT NULL, -- Links to attribute_category table
    attribute_name VARCHAR(255) NOT NULL, -- Name of the attribute
    description TEXT, -- Optional description of the attribute
    FOREIGN KEY (category_id) REFERENCES attribute_category(id)
);