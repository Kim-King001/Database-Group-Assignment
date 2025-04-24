CREATE DATABASE IF NOT EXISTS ecommerce_db;
USE ecommerce_db;

CREATE TABLE customer (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    f_name VARCHAR(255) NOT NULL,
    s_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    customer_address VARCHAR(255)
);

CREATE TABLE `order` (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    item_id BIGINT,
    order_date DATETIME NOT NULL,
    shipping_address VARCHAR(255),
    total_amount DECIMAL(10, 2),
    status BOOLEAN,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY (product_id) REFERENCES product(product_id)
);

CREATE TABLE attribute_category (
    attribute_category_id INT AUTO_INCREMENT PRIMARY KEY,
    attribute_category_name VARCHAR(255) NOT NULL
);

CREATE TABLE attribute_type (
    attribute_type_id INT AUTO_INCREMENT PRIMARY KEY,
    type_name VARCHAR(255) NOT NULL
);

CREATE TABLE brand (
    brand_id INT AUTO_INCREMENT PRIMARY KEY,
    brand_name VARCHAR(255) NOT NULL
);

INSERT INTO customer (f_name, s_name, email, password, customer_address)
VALUES 
('Maxwell', 'Nchoroko', 'maxwell@gmail.com', 'password783', '123 Airport Rd, City, Country'),
('Jane', 'Boss', 'jane.boss@gmail.com', 'password456', '456 Oak St, City, Country');

INSERT INTO `order` (customer_id, product_id, item_id, order_date, shipping_address, total_amount, status)
VALUES 
(1, 1, 1001, '2025-04-24 10:00:00', '123 Main St, City, Country', 99.99, TRUE),
(2, 2, 1002, '2025-04-24 11:00:00', '456 Oak St, City, Country', 129.99, TRUE);

INSERT INTO attribute_category (attribute_category_name)
VALUES 
('Physical'),
('Technical');

INSERT INTO attribute_type (type_name)
VALUES 
('text'),
('number'),
('boolean');

INSERT INTO brand (brand_name)
VALUES 
('Nike'),
('Puma'),
('Adidas');
