-- 1. How many suppliers are there?

USE
	northwind;

SELECT 
	COUNT(SupplierID)
		as Numberofsuppliers

FROM
	suppliers;
    
-- 2. What is the sum of all the employee's salaries?

USE
	northwind;

SELECT 
	SUM(Salary)
		as Sumofsalaries

FROM
	employees; 
    
-- 3. What is the price of the cheapest item that Northwind sells?

USE
	northwind;

SELECT 
	MIN(UnitPrice)
		as Cheapestitem

FROM
	products;
    
-- 4. What is the average price of items that Northwind sells?

USE
	northwind;

SELECT 
	AVG(UnitPrice)
		as Averagepriceitem

FROM
	products;
    
-- 5. What is the price of the most expensive item that Northwind sells?

USE
	northwind;

SELECT 
	MAX(UnitPrice)
		as Expensiveitem

FROM
	products;
    
-- 6. What is the supplier ID of each supplier and the number of items they
-- supply?

USE
	northwind;

SELECT 
	SupplierID,
    count(ProductID)

FROM
	products 
    
GROUP BY
	SupplierID; 
    
-- 7. What is the category ID of each category and the average price of each item
-- in the category

USE
	northwind;

SELECT 
	CategoryID,
    AVG(UnitPrice)

FROM
	products 
    
GROUP BY
	CategoryID; 
    
-- 8. For suppliers that provide at least 5 items to Northwind, what is the
-- supplier ID of each supplier and the number of items they supply?

USE
	northwind;

SELECT 
	SupplierID,
		count(ProductID)
			as Numberofitems    

FROM
	products 
    
GROUP BY
	SupplierID
    
HAVING
	count(ProductID) >= 5;
    
-- 9. List the product id, product name, and inventory value (calculated by
-- multiplying unit price by the number of units on hand). Sort the results in
-- descending order by value. If two or more have the same value, order by
-- product name.

USE
	northwind;

SELECT 
	ProductID,
    ProductName,
    UnitPrice * UnitsInStock as Inventoryvalue
    
FROM
	products 
    
ORDER BY
    Inventoryvalue
		DESC,
    ProductName 
		ASC;
    
    
    
    
    
    

		