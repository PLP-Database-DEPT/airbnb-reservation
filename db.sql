-- create airbnb database
CREATE DATABASE airbnb;
-- work with airbnb database
USE airbnb;

-- create property_category table to link properties and categories
CREATE TABLE property_category (
    property_id INT,
    category_id INT,
    FOREIGN KEY (property_id) REFERENCES property(property_id),
    FOREIGN KEY (category_id) REFERENCES category(category_id)
);