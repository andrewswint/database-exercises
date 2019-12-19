USE codeup_test_db;
CREATE TABLE albums (
id INT UNSIGNED NOT NULL AUTO_INCREMENT,
artist VARCHAR(50) NOT NULL,
name VARCHAR(50) NOT NULL,
release_date INT,
sales FLOAT UNSIGNED NOT NULL,
genre VARCHAR(50) NOT NULL,
PRIMARY KEY (id)
);

-- Add an index to make sure all album names combined with the artist are unique. Try to add duplicates to test the constraint.