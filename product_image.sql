CREATE TABLE  product_image (
    image_id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    product_id INT UNSIGNED NOT NULL,
    image_url VARCHAR(255) NOT NULL COMMENT 'Link or path to the product image',
    alt_text VARCHAR(255) NOT NULL COMMENT 'Alternative text for the image',
    FOREIGN KEY (product_id) REFERENCES product(product_id)
);

INSERT INTO product_image (product_id, image_url, alt_text) VALUES
(1, 'images/mouse.jpg', 'Black Wireless Mouse'),
(2, 'images/headphones.jpg', 'Over-ear Bluetooth Headphones'),
(3, 'images/keyboard.jpg', 'RGB Mechanical Keyboard');
