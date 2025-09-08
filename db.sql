-- create airbnb database
CREATE DATABASE airbnb;
-- work with airbnb database
USE airbnb;

--
-- Table structure for table `property_category`
--
-- This table links properties to categories, establishing a many-to-many relationship.
-- Each row represents a specific category assigned to a property.
--
-- `property_id`: Foreign key referencing the `property` table.
-- `category_id`: Foreign key referencing the `category` table.
--

CREATE TABLE `property_category` (
  `property_id` INT NOT NULL,
  `category_id` INT NOT NULL
);

--
-- Constraints for table `property_category`
--
ALTER TABLE `property_category`
  ADD CONSTRAINT `fk_property_category_property` FOREIGN KEY (`property_id`) REFERENCES `property` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_property_category_category` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE;