-- create airbnb database
CREATE DATABASE airbnb;
-- work with airbnb database
USE airbnb;

-- create a table named user_account with 7 columns 
CREATE TABLE user_account( 
id INT AUTO_INCREMENT PRIMARY KEY,         -- Column containing the unique id of each user_account row
first_name VARCHAR(50) NOT NULL,           -- Column containing the first name of the user with a maximum length of 50 characters and cannot be null
last_name VARCHAR(50) NOT NULL,            -- Column containing the last name of the user with a maximum length of 50 characters and cannot be null
email_address VARCHAR(50) NOT NULL,        -- Column containing the email address of the user with a maximum length of 50 characters and cannot be null
password VARCHAR(50) NOT NULL,             -- Column containing the encrypted password for the user’s account with a maximum length of 50 characters and cannot be null
joined_date DATE NOT NULL,                 -- Column containing the date the user joined the site and cannot be null
date_host_started DATE NOT NULL            -- Column containing the date the host started and cannot be null
);
