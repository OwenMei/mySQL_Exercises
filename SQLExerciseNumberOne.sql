-- find all products
SELECT * FROM bestbuy.products;

-- find all products that cost $1400
SELECT * FROM bestbuy.products
WHERE Price = 1400;

-- find all products that cost $11.99 or $13.99
SELECT * FROM bestbuy.products
WHERE Price = 11.99
or Price = 13.99;

-- find all products that do NOT cost 11.99 - using NOT
SELECT * FROM bestbuy.products
WHERE NOT Price = 11.99;

-- find all products and sort them by price from greatest to least
SELECT * FROM bestbuy.products
ORDER BY price DESC;

-- find all employees who don't have a middle initial
SELECT * FROM bestbuy.employees
WHERE MiddleInitial IS NULL;

-- find distinct product prices
SELECT DISTINCT Price FROM bestbuy.products;

-- find all employees whose first name starts with the letter ‘j’
SELECT * FROM bestbuy.employees
WHERE FirstName LIKE "j%";

-- find all Macbooks
SELECT * FROM bestbuy.products
WHERE Name LIKE "%macbook%";

-- find all products that are on sale
SELECT * FROM bestbuy.products
WHERE OnSale = 1;

-- find the average price of all products
SELECT avg(Price) FROM bestbuy.products;

-- find all Geek Squad employees who don't have a middle initial
SELECT * FROM bestbuy.employees
WHERE Title = "Geek Squad" 
and MiddleInitial IS NULL;

-- find all products from the products table whose stock level is in the range -- of 500 to 1200. Order by Price from least to greatest.
SELECT * FROM bestbuy.products
WHERE StockLevel BETWEEN 500 and 1200
Order By Price;