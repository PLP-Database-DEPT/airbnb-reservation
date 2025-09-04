-- create airbnb database
CREATE DATABASE airbnb;
-- work with airbnb database
USE airbnb;
CREATE TABLE review_component (	
	id INT PRIMARY KEY AUTO_INCREMENT,-- primary key is the unique for each row 
	component_name VARCHAR(100)
);
