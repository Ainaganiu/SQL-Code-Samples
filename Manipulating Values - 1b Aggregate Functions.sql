--Manipulating Values - a demonstration of aggregating functions, including COUNT to count rows.

SELECT

COUNT(*) AS TotalCustomers,
AVG(YearlyIncome) AS AverageIncome,

FROM DimCustomer