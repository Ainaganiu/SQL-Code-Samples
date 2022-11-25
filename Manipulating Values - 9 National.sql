-- A demonstration of using the NATIONAl to identify a text string as a UNICODE string

SELECT

EnglishProductName,
EnglishDescription,
Color,
[Status],
Class,
SafetyStockLevel

FROM DimProduct

--Using BETWEEN to replace two numeric or date range conditions
    --WHERE (SafetyStockLevel BETWEEN 500 AND 1000) AND [Status] IS NOT NULL --BETWEEN IS INCLUSIVE OF BOTH ENDS
    --WHERE (SafetyStockLevel >= 500 AND SafetyStockLevel <=1000) AND [Status] IS NOT NULL

--Using IN to replace multiple OR statements
    WHERE Color IN (N'Black',N'Silver',N'White',N'Yellow')
    --WHERE Color = 'Black' OR Color = 'Silver' OR Color = 'White' OR Color = 'Yellow'