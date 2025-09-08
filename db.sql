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

CREATE TABLE favourite (
    property_id INT NOT NULL,
    user_id INT NOT NULL,
    CONSTRAINT pk_favourite PRIMARY KEY (property_id, user_id),
    CONSTRAINT fk_favourite_property FOREIGN KEY (property_id) REFERENCES property(property_id),
    CONSTRAINT fk_favourite_user FOREIGN KEY (user_id) REFERENCES user_account(user_id)
  );

CREATE TABLE property_attribute(
    property_id INT,
    attribute_id INT,
    FOREIGN KEY (property_id) REFERENCES property(property_id)
    FOREIGN KEY (attribute_id) REFERENCES attribute(attribute_id)
);

CREATE TABLE user_review (
    id INT PRIMARY KEY,
    property_id INT NOT NULL,
    user_id INT NOT NULL,
    overall_rating INT NOT NULL,
    comment TEXT,
    review_date DATE,
    FOREIGN KEY (property_id) REFERENCES property(id),
    FOREIGN KEY (user_id) REFERENCES users(id)
  );
  
CREATE TABLE component_rating(
    component_id INT,
    review_id INT,
    rating INT,
    FOREIGN KEY (component_id) REFERENCES review_component(id),
    FOREIGN KEY (review_id) REFERENCES user_review(id)
);

