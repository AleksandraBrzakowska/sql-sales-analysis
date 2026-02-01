-- ============================================
-- JOINS & REVENUE ANALYSIS
-- ============================================

-- Join all tables to see full transaction details

SELECT
    s.sale_id,
    c.customer_name,
    c.region,
    p.product_name,
    p.category,
    s.units,
    p.price,
    s.units * p.price AS revenue,
    s.date
FROM sales s
JOIN customers c ON s.customer_id = c.customer_id
JOIN products p ON s.product_id = p.product_id;



-- ============================================
-- Total revenue by product
-- ============================================

SELECT
    p.product_name,
    SUM(s.units * p.price) AS total_revenue
FROM sales s
JOIN products p ON s.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_revenue DESC;



-- ============================================
-- Total revenue by category
-- ============================================

SELECT
    p.category,
    SUM(s.units * p.price) AS total_revenue
FROM sales s
JOIN products p ON s.product_id = p.product_id
GROUP BY p.category
ORDER BY total_revenue DESC;



-- ============================================
-- Total revenue by region
-- ============================================

SELECT
    c.region,
    SUM(s.units * p.price) AS total_revenue
FROM sales s
JOIN customers c ON s.customer_id = c.customer_id
JOIN products p ON s.product_id = p.product_id
GROUP BY c.region
ORDER BY total_revenue DESC;
