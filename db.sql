-- create airbnb database
CREATE DATABASE airbnb;
-- work with airbnb database
USE airbnb;

-- create a table named user_account with 7 columns 
CREATE TABLE user_account( 
id INT AUTO_INCREMENT PRIMARY KEY,  -- Column containing the unique id of each user_account row
first_name VARCHAR(50),              -- Column containing the first name of the user with a maximum length of 50 characters
last_name VARCHAR(50),               -- Column containing the last name of the user with a maximum length of 50 characters
email_address VARCHAR(50),           -- Column containing the email address of the user with a maximum length of 50 characters
password VARCHAR(50),                -- Column containing the encrypted password for the user’s account with a maximum length of 50 characters
joined_date DATE,                    -- Column containing the date the user joined the site
date_host_started DATE               -- Column containing the date the host started
);
