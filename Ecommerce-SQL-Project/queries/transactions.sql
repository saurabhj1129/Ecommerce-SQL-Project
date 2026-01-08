-- Start transaction
START TRANSACTION;

-- Reduce stock after order
UPDATE products
SET stock = stock - 1
WHERE product_id = 1;

-- Commit transaction
COMMIT;

-- Rollback example
ROLLBACK;