--CFI SQL Fundamentals example of comparison operators and how perform a condition test on NULL values

SELECT *
FROM DimProduct
WHERE Class <> 'H' OR Class IS NULL