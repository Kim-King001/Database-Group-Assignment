--  Size Option Table
CREATE TABLE Size_Option (
    size_option_id INT AUTO_INCREMENT PRIMARY KEY,
    size_category_id INT NOT NULL,
    size_value VARCHAR(50) NOT NULL,
    CONSTRAINT fk_size_category FOREIGN KEY (size_category_id) REFERENCES Size_Category(size_category_id)
);


-- Insert Size Options
INSERT INTO Size_Option (size_category_id, size_value) VALUES
(1, '42'),
(1, '43'),
(2, 'M'),
(2, 'L');

