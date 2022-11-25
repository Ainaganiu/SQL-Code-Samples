-- CFI SQL Fundamentals Logical Operators examples of common errors. Ensure you use the parenthesis to protect against unintentional errors.

SELECT

EnglishProductName,
EnglishDescription,
Color,
[Status],
Class

FROM DimProduct

WHERE (Class <> 'H' OR Class IS NULL) AND [Status] IS NOT NULL



--Advanced Logical Operators - Using IN and BETWEEN to simplyfy multiple conditions
SELECT

EnglishProductName,
EnglishDescription,
Color,
[Status],
Class,
SafetyStockLevel

FROM DimProduct

--Using BETWEEN to replace two numeric or date range conditions
WHERE (SafetyStockLevel BETWEEN 500 AND 1000) AND [Status] IS NOT NULL --BETWEEN IS INCLUSIVE OF BOTH ENDS
--WHERE (SafetyStockLevel >= 500 AND SafetyStockLevel <=1000) AND [Status] IS NOT NULL

--Using IN to replace multiple OR statements
--WHERE Color IN ('Black','Silver','White','Yellow')
--WHERE Color = 'Black' OR Color = 'Silver' OR Color = 'White' OR Color = 'Yellow'


--Advanced Logical Operators - LIKE to identify partial matches using Wildcards
SELECT

FirstName,
EmailAddress

FROM DimCustomer

WHERE FirstName LIKE '_R%'