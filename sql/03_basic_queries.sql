-- show all customers
SELECT * 
FROM customers;

-- count customers
SELECT COUNT(*) as 'Customers'
FROM customers;

-- average age
SELECT AVG(age) as 'Average_age' 
FROM customers;

-- customers from North region
SELECT *
FROM customers
WHERE region = 'North';
