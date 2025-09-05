-- create airbnb database
CREATE DATABASE airbnb;
-- work with airbnb database
USE airbnb;

-- creat property_attribute table
CREATE TABLE property_attribute(
    property_id INT,
    attribute_id INT,
    FOREIGN KEY (property_id) REFERENCES property(property_id)
    FOREIGN KEY (attribute_id) REFERENCES attribute(attribute_id)
)