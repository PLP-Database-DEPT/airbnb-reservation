
-- Table: category
-- Description:
-- This table stores different categories that can be applied to a property.
-- Each category has a unique identifier (auto-incremented) and a category name.
-- -----------------------------------

CREATE TABLE category (
    id INT AUTO_INCREMENT PRIMARY KEY, -- Unique identifier for each category (auto-generated)
    category_name VARCHAR(255) NOT NULL -- Name of the category
);
