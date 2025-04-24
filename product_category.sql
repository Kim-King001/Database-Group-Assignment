--  Product Category Table (self-referencing for hierarchy)
CREATE TABLE Product_Category (
    product_category_id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(100) NOT NULL,
    parent_category_id INT NULL,
    CONSTRAINT fk_parent_category FOREIGN KEY (parent_category_id) REFERENCES Product_Category(product_category_id)
        ON DELETE SET NULL
);

-- Insert Product Categories (hierarchical)
INSERT INTO Product_Category (category_name, parent_category_id) VALUES
('Clothing', NULL),
('Footwear', NULL),
('Electronics', NULL),
('Men Clothing', 1),
('Women Clothing', 1),
('Smartphones', 3);