-- Q1: List all customers from Mumbai along with their total order value
SELECT customer_name, total_value 
FROM customers 
JOIN orders ON customers.customer_id = orders.customer_id 
WHERE city = 'Mumbai';

-- Q2: Find the top 3 products by total quantity sold
SELECT product_name, SUM(quantity) as total_sold 
FROM products 
JOIN order_details ON products.product_id = order_details.product_id 
GROUP BY product_name 
ORDER BY total_sold DESC 
LIMIT 3;

-- Q3: List all sales representatives and the number of unique customers they serve
SELECT rep_name, COUNT(DISTINCT customer_id) as unique_customers 
FROM sales_reps 
JOIN orders ON sales_reps.rep_id = orders.rep_id 
GROUP BY rep_name;

-- Q4: Find all orders where the total value exceeds 10,000, sorted by value
SELECT order_id, total_value 
FROM orders 
WHERE total_value > 10000 
ORDER BY total_value DESC;

-- Q5: Identify any products that have never been ordered
SELECT product_name 
FROM products 
LEFT JOIN order_details ON products.product_id = order_details.product_id 
WHERE order_details.product_id IS NULL;