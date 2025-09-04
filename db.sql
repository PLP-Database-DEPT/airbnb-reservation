-- create airbnb database
CREATE DATABASE airbnb;
-- work with airbnb database
USE airbnb;

-- create a properties table
CREATE TABLE property (
    id INT AUTO_INCREMENT PRIMARY KEY,
    location_id INT NOT NULL,
    place_type_id INT NOT NULL,
    property_type_id INT NOT NULL,
    host_id INT NOT NULL,
    nightly_price DECIMAL(10,2) NOT NULL,
    property_name VARCHAR(255) NOT NULL,
    num_guests INT NOT NULL,
    num_beds INT NOT NULL,
    num_bedrooms INT NOT NULL,
    num_bathrooms INT NOT NULL,
    is_guest_favourite TINYINT(1) DEFAULT 0 CHECK (is_guest_favourite IN (0,1)),
    description TEXT,
    address_line_1 VARCHAR(255),
    address_line_2 VARCHAR(255),

    -- Foreign Keys
    CONSTRAINT fk_property_location FOREIGN KEY (location_id) REFERENCES location(id),
    CONSTRAINT fk_property_place_type FOREIGN KEY (place_type_id) REFERENCES place_type(id),
    CONSTRAINT fk_property_property_type FOREIGN KEY (property_type_id) REFERENCES property_type(id),
    CONSTRAINT fk_property_host FOREIGN KEY (host_id) REFERENCES host(id)
);

