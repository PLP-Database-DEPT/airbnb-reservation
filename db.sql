-- create airbnb database
CREATE DATABASE airbnb;
-- work with airbnb database
USE airbnb;

-- Create booking_guests table
CREATE TABLE booking_guests (
    booking_id INT,
    guest_type_id INT,
    num_guests INT,
    FOREIGN KEY (booking_id) REFERENCES booking(id),
    FOREIGN KEY (guest_type_id) REFERENCES guest_type(id)
);

