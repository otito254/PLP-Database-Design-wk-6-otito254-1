-- Question 1: INNER JOIN
-- This query retrieves the firstName, lastName, email, and officeCode of all employees
-- by joining the employees table with the offices table using the officeCode column.
SELECT 
    e.firstName, 
    e.lastName, 
    e.email, 
    e.officeCode
FROM 
    employees e
INNER JOIN 
    offices o ON e.officeCode = o.officeCode;

-- Question 2: LEFT JOIN
-- This query gets the productName, productVendor, and productLine from the products table.
-- It combines the products table with the productlines table using the productLine column,
-- ensuring all products are included even if they don't have a matching entry in productlines.
SELECT 
    p.productName, 
    p.productVendor, 
    l.productLine
FROM 
    products p
LEFT JOIN 
    productlines l ON p.productLine = l.productLine;

-- Question 3: RIGHT JOIN
-- This query retrieves the orderDate, shippedDate, status, and customerNumber for the first 10 orders.
-- It uses a RIGHT JOIN to combine the customers table with the orders table using the customerNumber column,
-- ensuring all orders are included even if they don't have a matching entry in customers.
SELECT 
    o.orderDate, 
    o.shippedDate, 
    o.status, 
    o.customerNumber
FROM 
    customers c
RIGHT JOIN 
    orders o ON c.customerNumber = o.customerNumber
LIMIT 10;
