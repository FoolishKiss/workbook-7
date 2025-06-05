-- 1. Add a new supplier.

USE
	northwind;

INSERT INTO suppliers VALUES (null, "Miller Enterprise", "Brian Miller", "CEO", "123 Make it up pkwy", "Dallas", "NTX", "11111","USA", "972-111-1111", null, null);

-- 2. Add a new product provided by that supplier

USE
	northwind;
    
INSERT INTO products VALUES (null, "Swamp Water", 30, 1, "24 - 12 oz bottles", 20.0000, 52, 50,60, 0);

-- 3. List all products and their suppliers.

USE
	northwind;
    
SELECT
	P.ProductName,
    S.CompanyName,
    S.ContactName
    
FROM
	products P
    join suppliers S on (P.SupplierID = S.SupplierID);
    
-- 4. Raise the price of your new product by 15%

USE
	northwind;

UPDATE 
	products 
SET 
	UnitPrice = 23
WHERE
	ProductID = 78;
	
-- 5. List the products and prices of all products from that supplier    

USE
	northwind;
    
SELECT
	P.ProductName,
    P.UnitPrice,
    S.CompanyName,
    S.ContactName
    
FROM
	products P
    join suppliers S on (P.SupplierID = S.SupplierID)

WHERE
S.SupplierID = 30;

-- 6. Delete the new product.

USE
	northwind;

DELETE FROM products P

WHERE
	P.ProductID = 78;
    
-- 7. Delete the new supplier.

USE
	northwind;

DELETE FROM suppliers S

WHERE
	S.SupplierID = 30;
		
-- 8. List all products

USE
	northwind;

SELECT * FROM products;

-- 9. List all suppliers

USE
	northwind;

SELECT * FROM suppliers;