-- =====================================================
-- BUSINESS QUESTIONS ANALYSIS
-- =====================================================


-- QUESTION 1: Who are the top 5 customers by total revenue?

SELECT TOP 5
    c.customer_id,
    c.customer_name,
    SUM(s.units * p.price) AS total_revenue
FROM sales s
JOIN customers c ON s.customer_id = c.customer_id
JOIN products p ON s.product_id = p.product_id
GROUP BY c.customer_id, c.customer_name
ORDER BY total_revenue DESC;



-- QUESTION 2: Which product categories generate the most revenue?

SELECT
    p.category,
    SUM(s.units * p.price) AS total_revenue
FROM sales s
JOIN products p ON s.product_id = p.product_id
GROUP BY p.category
ORDER BY total_revenue DESC;



-- QUESTION 3: What is the average order value?

SELECT
    AVG(order_value) AS avg_order_value
FROM (
    SELECT
        s.sale_id,
        SUM(s.units * p.price) AS order_value
    FROM sales s
    JOIN products p ON s.product_id = p.product_id
    GROUP BY s.sale_id
) t;



-- QUESTION 4: Which region has the highest revenue?

SELECT
    c.region,
    SUM(s.units * p.price) AS total_revenue
FROM sales s
JOIN customers c ON s.customer_id = c.customer_id
JOIN products p ON s.product_id = p.product_id
GROUP BY c.region
ORDER BY total_revenue DESC;



-- QUESTION 5: What are the top selling products by units?

SELECT TOP 5
    p.product_name,
    SUM(s.units) AS total_units_sold
FROM sales s
JOIN products p ON s.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_units_sold DESC;
