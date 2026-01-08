-- View all users
SELECT * FROM users;

-- View all products
SELECT * FROM products;

-- Products with price greater than 1000
SELECT product_name, price
FROM products
WHERE price > 1000;

-- Order list
SELECT * FROM orders;

-- Total sales
SELECT SUM(total_amount) AS total_sales
FROM orders;