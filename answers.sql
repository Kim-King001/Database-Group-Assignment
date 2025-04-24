
--  Product Category Table (self-referencing for hierarchy)
CREATE TABLE product_category (
    product_category_id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(100) NOT NULL,
    parent_category_id INT NULL,
    CONSTRAINT fk_parent_category FOREIGN KEY (parent_category_id) REFERENCES Product_Category(product_category_id)
        ON DELETE SET NULL
);


--  Product Variation Table
CREATE TABLE product_variation (
    variation_id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT NOT NULL,
    sku VARCHAR(50) UNIQUE NOT NULL,
    price DECIMAL(10,2), -- nullable, if NULL use Product.base_price
    stock_quantity INT DEFAULT 0,
    CONSTRAINT fk_product FOREIGN KEY (product_id) REFERENCES Product(product_id)
);




--  Size Category Table
CREATE TABLE size_category (
    size_category_id INT AUTO_INCREMENT PRIMARY KEY,
    size_category_name VARCHAR(100) NOT NULL
);

--  Size Option Table
CREATE TABLE size_option (
    size_option_id INT AUTO_INCREMENT PRIMARY KEY,
    size_category_id INT NOT NULL,
    size_value VARCHAR(50) NOT NULL,
    CONSTRAINT fk_size_category FOREIGN KEY (size_category_id) REFERENCES Size_Category(size_category_id)
);

--  Colour Table
CREATE TABLE colour (
    colour_id INT AUTO_INCREMENT PRIMARY KEY,
    colour_name VARCHAR(50) NOT NULL,
    hex_code VARCHAR(7) -- e.g., #FFFFFF
);


