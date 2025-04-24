CREATE TABLE product (
    product_id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(255) NOT NULL,
    brand_id INT UNSIGNED NOT NULL,
    category_id INT UNSIGNED NOT NULL,
    base_price DECIMAL(8, 2) NOT NULL COMMENT 'Original price',
    FOREIGN KEY (brand_id) REFERENCES brand(brand_id),
    FOREIGN KEY (category_id) REFERENCES product_category(category_id)
);


INSERT INTO product (product_name, brand_id, category_id, base_price) VALUES
('Wireless Mouse', 1, 2, 19.99),
('Bluetooth Headphones', 2, 3, 59.99),
('Mechanical Keyboard', 1, 2, 89.99);
