-- create airbnb database
CREATE DATABASE airbnb;
-- work with airbnb database
USE airbnb;

-- Table: user_review
-- This table stores reviews left by users on properties.
-- Includes property, user, rating, comment, and date of review.
-- Assumes 'property' table and 'users' table already exist.

CREATE TABLE user_review (
    id INT PRIMARY KEY,
    property_id INT NOT NULL,
    user_id INT NOT NULL,
    overall_rating INT NOT NULL,
    comment TEXT,
    review_date DATE,

    -- Foreign key to property table
    FOREIGN KEY (property_id) REFERENCES property(id),

    -- Foreign key to users table (assumed to exist)
    FOREIGN KEY (user_id) REFERENCES users(id)
);
