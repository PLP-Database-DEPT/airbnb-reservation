-- create airbnb database
CREATE DATABASE airbnb;
-- work with airbnb database
USE airbnb;

---create table component_rating
--This component table acts as a joining table between the review_component and user_review table

CREATE TABLE component_rating(
    component_id INT,
    review_id INT,
    rating INT,

    ---This foreign key connects to the review_component table
    FOREIGN KEY (component_id) REFERENCES review_component(id),

    ---This foreign key connects to the user_review table
    FOREIGN KEY (review_id) REFERENCES user_review(id)
)