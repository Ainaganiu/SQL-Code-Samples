--A demonstration of Numeric functions from CFI SQL fundamentals 

SELECT TOP(10) PERCENT
SalesOrderNumber AS InvoiceNumber,
OrderDate,

SUM(SalesAmount) AS InvoiceSubTotal,
ROUND(SUM(SalesAmount),1) AS InvoiceSubTotalRounded,

SUM(TaxAmt) AS TaxAmount,
FLOOR(SUM(TaxAmt)) AS TaxAmountFloor,

SUM(OrderQuantity) AS TotalQuantity,
SUM(SalesAmount) + SUM(TaxAmt) AS InvoiceTotal

FROM FactInternetSales
WHERE SalesTerritoryKey = 6

GROUP BY SalesOrderNumber, OrderDate
HAVING SUM(SalesAmount) > 1000

ORDER BY InvoiceSubTotal DESC