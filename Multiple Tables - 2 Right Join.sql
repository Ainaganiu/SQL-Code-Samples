SELECT

    dp.EnglishProductName AS ProductName,
    dp.Color AS ProductColor,
    ISNULL(dp.Size,'UNKN') AS ProductSize,
    ISNULL(SUM(fs.SalesAmount),0) AS SalesAmount

FROM FactInternetSales AS fs
    RIGHT JOIN DimProduct AS dp
    ON fs.ProductKey = dp.ProductKey

WHERE dp.Status = N'Current'

GROUP BY dp.EnglishProductName, dp.Color, dp.Size

ORDER BY SalesAmount DESC


/* Tests for number of total current products
SELECT
    EnglishProductName

FROM DimProduct

WHERE [Status] = N'Current'
*/