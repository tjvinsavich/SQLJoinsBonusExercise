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
SELECT COUNT(p.Name) as ProductCount FROM products AS P
LEFT JOIN sales AS s ON p.productID = s.productID
WHERE s.SalesID IS NULL;

-- What is the average rating for game reviews? 
SELECT AVG(r.rating) AS Average_Game_Rating FROM reviews AS r
INNER JOIN products AS p ON r.productID = p.productID
WHERE p.CategoryID = 8;

-- Which category has the 2nd most sales (by quantity)? 
SELECT c.Name, SUM(s.quantity) AS Total_Quantity FROM sales AS s
INNER JOIN products AS p ON p.productID = s.productID
INNER JOIN categories AS c ON c.categoryID = p.categoryID
GROUP BY p.categoryID
ORDER BY SUM(s.quantity) DESC
LIMIT 1, 1;

-- How many unique products were sold during 2015 with a price greater than 50? *
select * from products;
select * From sales;
SELECT DISTINCT productID FROM SALES 
WHERE DATE LIKE '2015%' AND PricePerUnit > 50;
-- Which department has the lowest revenue? *

-- What is the first name of the employee with the most sales of small electronics (by revenue)?
