--SQL Fundamentals - Manipulating Values - Date Functions

SELECT

GETDATE() AS DateTimeStamp,
DueDate,
ShipDate,
DATEDIFF(day,ShipDate,DueDate) AS DaysBetweenShippedAndDueDate,
DATEDIFF(hour,ShipDate,DueDate) AS HoursBetweenShippedAndDueDate,
DATEADD(day,-10,DueDate ) AS DueDatePlusTenDays

FROM FactInternetSales