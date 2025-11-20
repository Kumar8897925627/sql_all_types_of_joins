--INNER JOIN
-- Returns only matching rows between both tables
SELECT o.order_id,c.customer_name,o.order_amount
FROM orders o
INNER JOIN 
customer c
ON 
o.customer_id = c.customer_id;

--LEFT JOIN (LEFT OUTER JOIN)
--Returns all rows from customer (master) even if no orders
SELECT c.customer_id,c.customer_name,o.order_id,o.order_amount
FROM customer c
LEFT JOIN 
orders o
ON 
c.customer_id = o.customer_id;

--RIGHT JOIN (RIGHT OUTER JOIN)
-- Returns all rows from orders (child) even if customer missing
SELECT o.order_id,c.customer_name,o.order_amount
FROM orders o
RIGHT JOIN 
customer c
ON 
o.customer_id = c.customer_id;

-- FULL JOIN (FULL OUTER JOIN)
-- Returns matching + non-matching records from both tables
SELECT COALESCE(c.customer_id, o.customer_id) AS customer_id,
c.customer_name,
o.order_id,
o.order_amount
FROM 
customer c
FULL OUTER JOIN 
    orders o
ON 
    c.customer_id = o.customer_id;

--CROSS JOIN
-- Returns cartesian product of both tables (All combinations)
-- ⚠ Output = No. of customers × No. of orders
SELECT c.customer_name,o.order_id,o.order_amount
FROM 
customer c
CROSS JOIN 
orders o;
