-- Users with their orders
SELECT u.name, o.order_id, o.total_amount, o.status
FROM users u
JOIN orders o ON u.user_id = o.user_id;

-- Orders with product details
SELECT o.order_id, p.product_name, oi.quantity, oi.price
FROM order_items oi
JOIN orders o ON oi.order_id = o.order_id
JOIN products p ON oi.product_id = p.product_id;

-- Orders with payment status
SELECT o.order_id, p.payment_method, p.payment_status
FROM orders o
JOIN payments p ON o.order_id = p.order_id;