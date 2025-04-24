-- Colour Table
CREATE TABLE colour (
    colour_id INT AUTO_INCREMENT PRIMARY KEY,
    colour_name VARCHAR(50) NOT NULL,
    hex_code VARCHAR(7) -- e.g., #FFFFFF
);

-- Insert Colours
INSERT INTO colour (colour_name, hex_code) VALUES
('Black', '#000000'),
('White', '#FFFFFF'),
('Blue', '#0000FF');
