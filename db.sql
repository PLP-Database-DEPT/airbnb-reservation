-- create airbnb database
CREATE DATABASE airbnb;
-- work with airbnb database
USE airbnb;

/* ----------------------------------------------------------
   Table: booking
   Purpose: Stores bookings made by users for properties,
            including status and associated fees.
   Notes:
    - property_id, user_id, booking_status_id are foreign keys
---------------------------------------------------------- */

CREATE TABLE IF NOT EXISTS booking (
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

-- Foreign key references
FOREIGN KEY (property_id) REFERENCES property(id),
FOREIGN KEY (user_id) REFERENCES user_account(id),
FOREIGN KEY (booking_status_id) REFERENCES booking_status(id)
);