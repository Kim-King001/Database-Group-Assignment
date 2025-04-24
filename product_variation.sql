-- Product Variation Table
CREATE TABLE product_variation (
    variation_id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT NOT NULL,
    sku VARCHAR(50) UNIQUE NOT NULL,
    price DECIMAL(10,2), -- nullable, if NULL use Product.base_price
    stock_quantity INT DEFAULT 0,
    CONSTRAINT fk_product FOREIGN KEY (product_id) REFERENCES Product(product_id)
);

-- Insert Product Variations
INSERT INTO product_variation (product_id, sku, price, stock_quantity) VALUES
(1, 'AM90-BLK-42', 130.00, 50),   -- Air Max 90, Black, size 42
(1, 'AM90-WHT-43', 130.00, 30),   -- Air Max 90, White, size 43
(2, 'IP14-128GB-BLK', NULL, 100), -- iPhone 14, 128GB, Black (price NULL uses base_price)
(3, 'ADTS-M-BLU', NULL, 200);      -- Adidas T-Shirt, Medium, Blue
