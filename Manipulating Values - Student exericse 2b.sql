SELECT 
 
    CONCAT(FirstName, ' ', LastName) AS CustomerName,
    CASE 
        WHEN NumberCarsOwned IN (2,3) THEN  '2-3'
        WHEN NumberCarsOwned >=4 THEN '4+'
    END AS NumberOfCarsOwned,
    EmailAddress AS Email
 
FROM DimCustomer
 
WHERE HouseOwnerFlag = 1 AND NumberCarsOwned > 1