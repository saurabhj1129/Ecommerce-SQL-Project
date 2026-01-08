-- =========================================
-- ADVANCED E-COMMERCE SQL QUERIES
-- =========================================

-- 1. Top Selling Products (Most Ordered)
SELECT p.product_name,
       SUM(oi.quantity) AS total_quantity_sold
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_quantity_sold DESC;


-- 2. Total Revenue Per User
SELECT u.name,
       SUM(o.total_amount) AS total_spent
FROM users u
JOIN orders o ON u.user_id = o.user_id
GROUP BY u.name
ORDER BY total_spent DESC;


-- 3. Customers Who Never Ordered (Subquery)
SELECT name, email
FROM users
WHERE user_id NOT IN (
    SELECT DISTINCT user_id FROM orders
);


-- 4. Products Never Ordered
SELECT product_name
FROM products
WHERE product_id NOT IN (
    SELECT DISTINCT product_id FROM order_items
);


-- 5. Monthly Sales Report
SELECT MONTH(order_date) AS month,
       SUM(total_amount) AS monthly_sales
FROM orders
GROUP BY MONTH(order_date)
ORDER BY month;


-- 6. Orders With More Than One Item (HAVING)
SELECT order_id,
       COUNT(product_id) AS item_count
FROM order_items
GROUP BY order_id
HAVING item_count > 1;


-- 7. Category-wise Revenue
SELECT c.category_name,
       SUM(oi.price * oi.quantity) AS revenue
FROM categories c
JOIN products p ON c.category_id = p.category_id
JOIN order_items oi ON p.product_id = oi.product_id
GROUP BY c.category_name;


-- 8. Latest Order of Each User (Correlated Subquery)
SELECT u.name, o.order_id, o.order_date
FROM users u
JOIN orders o ON u.user_id = o.user_id
WHERE o.order_date = (
    SELECT MAX(order_date)
    FROM orders
    WHERE user_id = u.user_id
);


-- 9. Payment Failure Report
SELECT o.order_id, u.name, p.payment_status
FROM payments p
JOIN orders o ON p.order_id = o.order_id
JOIN users u ON o.user_id = u.user_id
WHERE p.payment_status = 'Failed';


-- 10. Low Stock Alert
SELECT product_name, stock
FROM products
WHERE stock <= 5;