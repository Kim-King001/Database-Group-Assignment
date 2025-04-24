CREATE TABLE IF NOT EXISTS product_item (
    item_id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    product_id INT UNSIGNED NOT NULL,
    sku VARCHAR(255) NOT NULL COMMENT 'Stock Keeping Unit — unique for each variation',
    stock_quantity INT NOT NULL COMMENT 'Inventory count',
    price DECIMAL(8, 2) NOT NULL COMMENT 'Actual price (can differ from base price)',
    created DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (product_id) REFERENCES product(product_id)
);

INSERT INTO product_item (product_id, product_name, sku, stock_quantity, price, created, updated) VALUES
(1, 'Wireless Mouse', 'MOUSE-WLS-BLK', 100, 19.99, NOW(), NOW()),
(2, 'Bluetooth Headphones', 'HEAD-BT-BLK', 50, 59.99, NOW(), NOW()),
(3, 'Mechanical Keyboard', 'KEY-MECH-RGB', 75, 89.99, NOW(), NOW());
