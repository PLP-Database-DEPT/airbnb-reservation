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
