DROP DATABASE IF EXISTS bamazon;

CREATE DATABASE bamazon;

USE bamazon;

CREATE TABLE products(
	item_id INT NOT NULL AUTO_INCREMENT,
	product_name VARCHAR(30) NOT NULL,
	department_name VARCHAR(20) NOT NULL,
	price DECIMAL(10,2) NOT NULL,
	stock_quantity INTEGER NOT NULL,
	PRIMARY KEY (item_id)
);

INSERT INTO products(item_id,product_name, department_name, price, stock_quantity)
VALUES (1, "iPhone 11 Pro", "iPhone", 999, 100);

INSERT INTO products(item_id, product_name, department_name, price, stock_quantity)
VALUES (2, "iPhone 11", "iPhone", 699, 1000);

INSERT INTO products (item_id,product_name, department_name, price, stock_quantity)
VALUES (3, "MacBook Air", "Mac", 1299, 100);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (4, "MacBook Pro", "Mac", 1799, 50);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (5, "iMac", "Mac", 1499, 20);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (6, "iPad Pro", "iPad", 799, 100);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (7, "iPad", "iPad", 329, 100);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (8, "Apple Watch Series 5", "iWatch", 399, 200);

INSERT INTO products (item_id,product_name, department_name, price, stock_quantity)
VALUES (9, "Apple TV 4K", "TV", 179, 100);