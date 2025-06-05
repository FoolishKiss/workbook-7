-- 1. List the product id, product name, unit price and category name of all
-- products. Order by category name and within that, by product name.

USE
	northwind;
    
SELECT
P.ProductID,
P.ProductName,
P.UnitPrice,
C.CategoryName

FROM
	products P
    JOIN categories C on (C.CategoryID = P.CategoryID)
        
ORDER BY
	C.CategoryName,
    P.ProductName;
    
-- 2. List the product id, product name, unit price and supplier name of all
-- products that cost more than $75. Order by product name.  

USE
	northwind;
    
SELECT
	P.ProductID,
	P.ProductName,
	P.UnitPrice,
	S.ContactName,
	S.CompanyName

FROM
	products P
	JOIN suppliers S on (P.SupplierID = S.SupplierID)

WHERE 
	UnitPrice >= 75
        
ORDER BY 
	P.ProductName; 
    
-- 3. List the product id, product name, unit price, category name, and supplier
-- name of every product. Order by product name. 

USE
	northwind;
    
SELECT
	P.ProductID,
	P.ProductName,
	P.UnitPrice,
    C.CategoryName,
	S.ContactName,
	S.CompanyName

FROM
	products P
	JOIN suppliers S on (P.SupplierID = S.SupplierID)
	JOIN categories C on (C.CategoryID = P.CategoryID)
        
ORDER BY 
	P.ProductName; 
    
-- 4. What is the product name(s) and categories of the most expensive
-- products? HINT: Find the max price in a subquery and then use that in
-- your more complex query that joins products with categories.

USE
	northwind;
    
SELECT
	P.ProductName,
	P.UnitPrice,
    C.CategoryName

FROM
	products P
	Join categories C on (C.CategoryID = P.CategoryID)
        
WHERE
	P.UnitPrice	= (
		SELECT MAX(UnitPrice)
			FROM products); 
            
-- 5. List the order id, ship name, ship address, and shipping company name of
-- every order that shipped to Germany.

USE
	northwind;
    
SELECT
	O.OrderID,
	O.ShipName,
    O.ShipAddress,
    S.CompanyName,
    O.ShipCountry

FROM
	orders O
	JOIN shippers S on (S.ShipperID = O.ShipVia)
        
WHERE
	O.ShipCountry	= "Germany";
    
-- 6. List the order id, order date, ship name, ship address of all orders that
-- ordered "Sasquatch Ale"?

USE
	northwind;
    
SELECT
	O.OrderID,
    O.OrderDate,
	O.ShipName,
    O.ShipAddress,
    OD.ProductID
    
FROM
	orders O
    JOIN `order details` OD on (OD.OrderID = O.OrderID)
        
WHERE
	OD.ProductID = 34;
  