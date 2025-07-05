CREATE DATABASE loja;
use loja;

CREATE TABLE customers(
	customer_id VARCHAR(50) PRIMARY KEY NOT NULL,
	customer_name VARCHAR(200) NOT NULL,
	segment VARCHAR(100) NOT NULL
);

CREATE TABLE orders(
	order_id VARCHAR(50) PRIMARY KEY NOT NULL,
	order_date DATE NOT NULL,
	ship_date DATE NOT NULL,
    ship_mode VARCHAR(100) NOT NULL,
    customer_id VARCHAR(50), 
    FOREIGN KEY(customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE  products(
	product_id VARCHAR(50) PRIMARY KEY NOT NULL,
    product_name VARCHAR(200) NOT NULL,
    category VARCHAR(100) NOT NULL,
    sub_category VARCHAR(100) NOT NULL
);

CREATE TABLE  sales(
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    sales float4 NOT NULL,
    quantity INT NOT NULL,
    discount float4 NOT NULL,
    order_id VARCHAR(50),
    product_id VARCHAR(50),
    profit FLOAT4 NOT NULL,
    FOREIGN KEY(order_id) REFERENCES orders(order_id),
    FOREIGN KEY(product_id) REFERENCES products(product_id)
);

SELECT * FROM products;
