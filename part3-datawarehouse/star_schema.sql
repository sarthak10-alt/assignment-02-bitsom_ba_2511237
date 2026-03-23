-- 1. Create Dimension Tables (The 'Points' of the Star)
CREATE TABLE dim_date (
    date_key DATE PRIMARY KEY,
    day INT,
    month INT,
    year INT,
    quarter INT
);

CREATE TABLE dim_store (
    store_id INT PRIMARY KEY,
    store_name VARCHAR(100),
    city VARCHAR(50),
    region VARCHAR(50)
);

CREATE TABLE dim_product (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50)
);

-- 2. Create Fact Table (The 'Center' of the Star)
CREATE TABLE fact_sales (
    sales_id SERIAL PRIMARY KEY,
    date_key DATE REFERENCES dim_date(date_key),
    store_id INT REFERENCES dim_store(store_id),
    product_id INT REFERENCES dim_product(product_id),
    quantity_sold INT,
    total_revenue DECIMAL(12, 2)
);

-- Note: When inserting data, we must use functions like 
-- UPPER() or TRIM() to make sure "mumbai" and "Mumbai" 
-- are treated as the same city!