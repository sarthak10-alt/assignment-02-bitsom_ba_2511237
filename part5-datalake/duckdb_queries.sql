-- Q1: Total number of orders from orders.json
SELECT count(*) as total_orders FROM 'datasets/orders.json';

-- Q2: Top 3 customers by total order value from customers.csv
SELECT customer_name, total_order_value 
FROM 'datasets/customers.csv'
ORDER BY total_order_value DESC 
LIMIT 3;

-- Q3: Products purchased by customers from Bangalore
SELECT p.product_name 
FROM 'datasets/products.parquet' p
JOIN 'datasets/orders.json' o ON p.product_id = o.product_id
JOIN 'datasets/customers.csv' c ON o.customer_id = c.customer_id
WHERE c.city = 'Bangalore';

-- Q4: Join all three files to show customer name, order date, and product name
SELECT c.customer_name, o.order_date, p.product_name
FROM 'datasets/customers.csv' c
JOIN 'datasets/orders.json' o ON c.customer_id = o.customer_id
JOIN 'datasets/products.parquet' p ON o.product_id = p.product_id;