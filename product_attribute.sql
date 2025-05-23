CREATE TABLE product_attribute(
    attribute_id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    product_id INT UNSIGNED NOT NULL COMMENT 'Links the product table',
    attribute_category_id INT UNSIGNED NOT NULL,
    attribute_type_id INT UNSIGNED NOT NULL,
    attribute_name VARCHAR(255) NOT NULL,
    attribute_value VARCHAR(255) NOT NULL,
    FOREIGN KEY (product_id) REFERENCES product(product_id),
    FOREIGN KEY (attribute_category_id) REFERENCES attribute_category(attribute_category_id),
    FOREIGN KEY (attribute_type_id) REFERENCES attribute_type(attribute_type_id)
);

INSERT INTO product_attribute (product_id, attribute_category_id, attribute_type_id, attribute_name, attribute_value) VALUES
(1, 1, 1, 'Connectivity', 'Wireless'),
(2, 1, 1, 'Battery Life', '10 hours'),
(3, 1, 1, 'Switch Type', 'Mechanical');
