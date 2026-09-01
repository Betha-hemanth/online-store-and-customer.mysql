CREATE DATABASE online_store;

USE online_store;

CREATE TABLE customers1 (
customer_id INT PRIMARY KEY,
customer_name VARCHAR(50),
city VARCHAR(20),
age INT,
gender VARCHAR(10)
);

CREATE TABLE total_orders (
order_id PRIMARY KEY,
customer_id INT,
product_name VARCHAR(50),
category VARCHAR(30),
quantity INT,
price DECIMAL(20),
order_status VARCHAR(50)
);

INSERT INTO customers1 VALUES
(1, 'Rahul', 'Chennai', 22, 'Male'),
(2, 'Priya', 'Hyderabad', 25, 'Female'),
(3, 'Arun', 'Chennai', 30, 'Male'),
(4, 'Sneha', 'Bangalore', 28, 'Female'),
(5, 'Kiran', 'Chennai', 35, 'Male'),
(6, 'Divya', 'Hyderabad', 21, 'Female'),
(7, 'Vijay', 'Bangalore', 32, 'Male'),
(8, 'Anjali', 'Chennai', 26, 'Female'),
(9, 'Ravi', 'Mumbai', 40, 'Male'),
(10, 'Pooja', 'Hyderabad', 29, 'Female');

INSERT INTO total_orders VALUES
(101, 1, 'Laptop', 'Electronics', 1, 50000, 'Delivered'),
(102, 2, 'Mobile', 'Electronics', 2, 20000, 'Delivered'),
(103, 3, 'Headphones', 'Electronics', 3, 1500, 'Pending'),
(104, 4, 'T-Shirt', 'Clothing', 2, 800, 'Delivered'),
(105, 5, 'Jeans', 'Clothing', 3, 1500, 'Delivered'),
(106, 6, 'Shoes', 'Footwear', 2, 2500, 'Pending'),
(107, 7, 'Watch', 'Accessories', 1, 3000, 'Delivered'),
(108, 8, 'Bag', 'Accessories', 4, 1200, 'Cancelled'),
(109, 9, 'Tablet', 'Electronics', 1, 25000, 'Delivered'),
(110, 10, 'Jacket', 'Clothing', 2, 3000, 'Pending'),
(111, 1, 'Keyboard', 'Electronics', 2, 1000, 'Delivered'),
(112, 3, 'Mouse', 'Electronics', 3, 500, 'Delivered'),
(113, 5, 'Shirt', 'Clothing', 4, 700, 'Cancelled'),
(114, 7, 'Sandals', 'Footwear', 3, 1200, 'Delivered'),
(115, 10, 'Sunglasses', 'Accessories', 2, 1800, 'Pending');

SELECT * FROM customers1;

SELECT * FROM total_orders;

SELECT customer_name, city FROM customers1;

SELECT product_name, quantity, price FROM total_orders;

SELECT * FROM customers1 
WHERE city = 'Chennai';

SELECT * FROM customers1 
WHERE age > 25;

SELECT * FROM total_orders 
WHERE price > 1000;

SELECT * FROM total_orders 
WHERE order_status = 'Delivered';

SELECT * FROM customers1 
WHERE age BETWEEN 20 AND 30;

SELECT * FROM total_orders 
WHERE category IN ('Electronics', 'Clothing');

SELECT * FROM total_orders ORDER BY price DESC;

SELECT * FROM total_orders ORDER BY product_name ASC;

SELECT COUNT(customer_name) FROM customers1; 

SELECT COUNT(product_name) FROM total_orders;

SELECT COUNT(quantity) FROM total_orders;

SELECT AVG(price) FROM total_orders;

SELECT MAX(price) FROM total_orders;

SELECT MIN(price) FROM total_orders;

SELECT SUM(quantity * price) AS total_sales
FROM total_orders;

SELECT COUNT(customer_name),city FROM customers1
GROUP BY city;

SELECT COUNT(category),category FROM total_orders
GROUP BY category;