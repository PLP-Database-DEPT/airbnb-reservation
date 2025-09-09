-- create airbnb database
CREATE DATABASE airbnb;
-- work with airbnb database
USE airbnb;

CREATE TABLE category (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    category_name VARCHAR(255) NOT NULL 
);

CREATE TABLE attribute_category (
    id INT PRIMARY KEY, 
    category_name VARCHAR(255) NOT NULL
);

CREATE TABLE attribute (
    id INT PRIMARY KEY,
    category_id INT NOT NULL,
    attribute_name VARCHAR(255) NOT NULL, 
    description TEXT,
    FOREIGN KEY (category_id) REFERENCES attribute_category(id)
  );
  
CREATE TABLE region(
id INT PRIMARY KEY AUTO_INCREMENT,  
region_name  VARCHAR(20) NOT NULL     
);

CREATE TABLE country (
    id INT PRIMARY KEY,     
    region_id INT,           
    country_name VARCHAR(255),     
    CONSTRAINT fk_region FOREIGN KEY (region_id) REFERENCES region(id)
);

CREATE TABLE location(
id INT PRIMARY KEY AUTO_INCREMENT,
location_name VARCHAR(255) NOT NULL
country_id INT,
FOREIGN KEY (country_id) REFERENCES country(country_id)
);

CREATE TABLE place_type (
    id INT PRIMARY KEY AUTO_INCREMENT, 
    type_name VARCHAR(100)              
);

CREATE TABLE property_type (
    id INT PRIMARY KEY AUTO_INCREMENT,
    type_name VARCHAR(255)
 );
 
CREATE TABLE user_account( 
id INT AUTO_INCREMENT PRIMARY KEY,         
first_name VARCHAR(50) NOT NULL,         
last_name VARCHAR(50) NOT NULL,           
email_address VARCHAR(50) NOT NULL,        
password VARCHAR(50) NOT NULL,            
joined_date DATE NOT NULL,              
date_host_started DATE NOT NULL           
);

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
    CONSTRAINT fk_property_location FOREIGN KEY (location_id) REFERENCES location(id),
    CONSTRAINT fk_property_place_type FOREIGN KEY (place_type_id) REFERENCES place_type(id),
    CONSTRAINT fk_property_property_type FOREIGN KEY (property_type_id) REFERENCES property_type(id),
    CONSTRAINT fk_property_host FOREIGN KEY (host_id) REFERENCES host(id)
);
CREATE TABLE property_category (
    property_id INT,
    category_id INT,
    FOREIGN KEY (property_id) REFERENCES property(property_id),
    FOREIGN KEY (category_id) REFERENCES category(category_id)
);
CREATE TABLE favourite (
    property_id INT NOT NULL,
    user_id INT NOT NULL,
    language_id INT NOT NULL,
    PRIMARY KEY (user_id, language_id),
    FOREIGN KEY (user_id) REFERENCES user_account(user_id),
    FOREIGN KEY (language_id) REFERENCES language(language_id)
);


CREATE TABLE review_component (	
	id INT PRIMARY KEY AUTO_INCREMENT,
	component_name VARCHAR(100)
);

CREATE TABLE booking_status(
id INT PRIMARY KEY,
status_name VARCHAR(100) 
);

CREATE TABLE booking (
id INT PRIMARY KEY,
property_id INT NOT NULL,
user_id INT NOT NULL,
booking_status_id INT NOT NULL,
checkin_date DATE NOT NULL,
checkout_date DATE NOT NULL,
nightly_price DECIMAL(10,2) NOT NULL,
service_fee DECIMAL(10,2) NOT NULL,
cleaning_fee DECIMAL(10,2) NOT NULL,
total_price DECIMAL(10,2) NOT NULL,
FOREIGN KEY (property_id) REFERENCES property(id),
FOREIGN KEY (user_id) REFERENCES user_account(id),
FOREIGN KEY (booking_status_id) REFERENCES booking_status(id)
);

CREATE TABLE booking_guests (
    booking_id INT,
    guest_type_id INT,
    num_guests INT,
    FOREIGN KEY (booking_id) REFERENCES booking(id),
    FOREIGN KEY (guest_type_id) REFERENCES guest_type(id)
);

CREATE TABLE language (
    id INT PRIMARY KEY,
    language_name VARCHAR(50)
);

CREATE TABLE user_language (
  user_id INT,
  language_id INT,
  FOREIGN KEY (user_id) REFERENCES user_account(id),
  FOREIGN KEY (language_id) REFERENCES language(id)
  );