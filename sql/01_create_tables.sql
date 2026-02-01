CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    region VARCHAR(20),
    age INT
);

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    category VARCHAR(50),
    price DECIMAL(10,2)
);

CREATE TABLE sales (
    sale_id INT PRIMARY KEY,
    product_id INT,
    customer_id INT,
    units INT,
    sale_date DATETIME
);
