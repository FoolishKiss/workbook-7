-- 1. What is the product name(s) of the most expensive products

USE
	northwind;
    
SELECT
	ProductName
    
FROM
	products
    
WHERE
	UnitPrice = ( 
		SELECT max(UnitPrice) 
			FROM products); 
            
-- 2. What is the order id, shipping name and shipping address of all orders
-- shipped via "Federal Shipping"

USE
	northwind;
    
SELECT
	OrderID,
    ShipName,
    ShipAddress
    
FROM
	orders
    
WHERE
	UnitPrice = ( 
		SELECT max(UnitPrice) 
			FROM products); 
	