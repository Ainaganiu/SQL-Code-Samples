--A basic query as part of SQL Fundamentals course, including a TOP N filter

SELECT TOP(10) PERCENT
SalesOrderNumber AS InvoiceNumber,
OrderDate,
SUM(SalesAmount) AS InvoiceSubTotal,
SUM(TaxAmt) AS TaxAmount,
SUM(OrderQuantity) AS TotalQuantity,
SUM(SalesAmount) + SUM(TaxAmt) AS InvoiceTotal

FROM FactInternetSales
WHERE SalesTerritoryKey = 6

GROUP BY SalesOrderNumber, OrderDate
HAVING SUM(SalesAmount) > 1000

ORDER BY InvoiceSubTotal DESC