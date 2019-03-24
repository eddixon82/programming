SELECT c.CustLastName, c.CustFirstName,CAST(OrderDate AS DATE)AS dateoforder
FROM DBO.Orders o
JOIN DBO.Customers c ON c.CustomerID = o.CustomerID

SELECT c.CustLastName, c.CustFirstName,Convert(DATE,orderdate)AS dateoforder
FROM DBO.Orders o
JOIN DBO.Customers c ON c.CustomerID = o.CustomerID

SELECT c.CustLastName, c.CustFirstName,DateDiff(day,orderdate,ShipDate) as diffenceIndays
FROM DBO.Orders o
JOIN DBO.Customers c ON c.CustomerID = o.CustomerID

SELECT c.CustLastName, c.CustFirstName,Cast(Dateadd(week,1,orderdate) as date) as addeddays
FROM DBO.Orders o
JOIN DBO.Customers c ON c.CustomerID = o.CustomerID

SELECT DISTINCT CustCity FROM DBO.Customers

SELECT CustFirstName,+''+ CustLastName as fullname, CustStreetAddress as address
FROM DBO.CUSTOMERS
WHERE CustStreetAddress LIKE '%Street%'


SELECT c.CustLastName, c.CustFirstName,Convert(DATE,orderdate)AS dateoforder
FROM DBO.Orders o
JOIN DBO.Customers USING(CustomerID)


SELECT v.VendName,v.VendState, p.ProductName, p. ProductDescription, Product_Vendors.WholesalePrice
FROM Products p,Product_Vendors
INNER JOIN Vendors v ON v.VendorID = Product_Vendors.VendorID


SELECT v.VendName,v.VendCity,+' '+v.VendState as ST, p.ProductName, p. ProductDescription, Product_Vendors.WholesalePrice
FROM Products p
INNER JOIN Product_Vendors  ON Product_Vendors.ProductNumber = p.ProductNumber
INNER JOIN Vendors v ON v.VendorID = Product_Vendors.VendorID 
AND v.VendState in('NY','TX')


SELECT v.VendName,v.VendState, p.ProductName, p. ProductDescription, Product_Vendors.WholesalePrice
FROM Products p
INNER JOIN Product_Vendors ON Product_Vendors.ProductNumber = p.ProductNumber
INNER JOIN Vendors v ON v.VendorID = Product_Vendors.VendorID

SELECT v.VendName,v.VendState, p.ProductName, p. ProductDescription, Product_Vendors.WholesalePrice
FROM Products p
Left JOIN Product_Vendors ON Product_Vendors.ProductNumber = p.ProductNumber
Left JOIN Vendors v ON v.VendorID = Product_Vendors.VendorID

SELECT DISTINCT v.VendName, v.VendState, p.ProductName, p. ProductDescription, Product_Vendors.WholesalePrice
FROM Products p 
Left JOIN Product_Vendors ON Product_Vendors.ProductNumber = p.ProductNumber
Left JOIN Vendors v ON v.VendorID = Product_Vendors.VendorID  ORDER BY V.VendState

SELECT c.CustLastName,c.CustFirstName, O.OrderNumber, (O.Orderdate), CONVERT(DATE,ShipDate)as DateShip
FROM DBO.Customers c
Right OUTER JOIN DBO.Orders o ON o.CustomerID = c.CustomerID
WHERE YEAR(OrderDate) >9/1/2012 AND SHIPDATE > 9/1/2012
Order BY CustLastName


SELECT v.VendName,v.VendCity,+' '+v.VendState as ST, p.ProductName, p. ProductDescription, Product_Vendors.WholesalePrice
FROM Products p
INNER JOIN Product_Vendors  ON Product_Vendors.ProductNumber = p.ProductNumber
INNER JOIN Vendors v ON v.VendorID = Product_Vendors.VendorID 
AND v.VendState IN('NY','TX')

USE SalesOrdersExample