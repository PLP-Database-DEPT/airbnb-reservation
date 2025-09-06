-- create airbnb database
CREATE DATABASE airbnb;
-- work with airbnb database
USE airbnb;


-- ==============================================
-- Table: favourite
-- Stores records of properties that a user has marked as favourite.
-- Each row links a user to a property via foreign keys.
-- Only the two specified columns are present (requirement).
-- ==============================================

CREATE TABLE favourite (
    property_id INT NOT NULL,
    user_id INT NOT NULL,
    CONSTRAINT pk_favourite PRIMARY KEY (property_id, user_id),
    CONSTRAINT fk_favourite_property
        FOREIGN KEY (property_id)
        REFERENCES property(property_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    CONSTRAINT fk_favourite_user
        FOREIGN KEY (user_id)
        REFERENCES user_account(user_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);
