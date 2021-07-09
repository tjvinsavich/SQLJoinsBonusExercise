-- What is the total revenue from on sale products sold? 
SELECT SUM(s.Quantity * s.PricePerUnit) AS TotalRevenue FROM products AS p
INNER JOIN sales AS s ON p.productID = s.productID
WHERE p.OnSale = 1;
-- What is the total revenue from games? *
SELECT SUM(s.Quantity * s.PricePerUnit) AS TotalGameRevenue FROM products AS p
INNER JOIN sales AS s ON p.productID = s.productID
WHERE p.CategoryID = 8;

-- What is the total quantity of games sold? *
SELECT SUM(s.Quantity) AS TotalQuantity FROM products AS p
INNER JOIN sales AS s ON p.productID = s.productID
WHERE p.CategoryID = 8;

-- How many products have no sales? *
select * from sales;

-- What is the average rating for game reviews? 


-- Which category has the 2nd most sales (by quantity)? 


-- How many unique products were sold during 2015 with a price greater than 50? *

-- Which department has the lowest revenue? *

-- What is the first name of the employee with the most sales of small electronics (by revenue)?
