
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

