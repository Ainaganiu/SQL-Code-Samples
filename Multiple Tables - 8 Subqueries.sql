SELECT 

    InvoiceNumber,
    InvoiceLineNumber,
    OrderDate,
    SalesAmount,
    ProductName,
    ProductSubcategory

FROM vwOrdersALL

WHERE OrderDate = (SELECT MAX(OrderDate) FROM vwOrdersALL)