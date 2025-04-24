-- Size Category Table
CREATE TABLE Size_Category (
    size_category_id INT AUTO_INCREMENT PRIMARY KEY,
    size_category_name VARCHAR(100) NOT NULL
);

-- Insert Size Categories
INSERT INTO Size_Category (size_category_name) VALUES
('Men Shoe Sizes'),
('Men Clothing Sizes');