SELECT
    FirstName,
    IIF(MiddleName IS NULL,'UNKN',MiddleName) AS MiddleName,
    ISNULL(MiddleName,'UNKN') AS MiddleName2,
    COALESCE(MiddleName,'UNKN') AS MiddleName3,
    LastName,
    YearlyIncome,
    EmailAddress,
    IIF(YearlyIncome >50000,'Above Average','Below Average') AS IncomeCategory,
    CASE
        WHEN NumberChildrenAtHome = 0 THEN '0'
        WHEN NumberChildrenAtHome = 1 THEN '1'
        WHEN NumberChildrenAtHome BETWEEN 2 AND 4 THEN '2-4'
        WHEN NumberChildrenAtHome >=5 THEN '5+'
        ELSE 'UNKN'
    END AS NumberChildrenCategory,
    NumberChildrenAtHome AS ActualChildren

FROM DimCustomer

WHERE IIF(YearlyIncome >50000,'Above Average','Below Average') = 'Above Average'