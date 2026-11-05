USE AdventureWorksDW2025;
GO

IF OBJECT_ID('dbo.FactInternetSales', 'U') IS NULL
    THROW 50001, 'FactInternetSales table not found', 1;

IF OBJECT_ID('dbo.DimDate', 'U') IS NULL
    THROW 50002, 'DimDate table not found', 1;

IF NOT EXISTS (SELECT 1 FROM dbo.FactInternetSales)
    THROW 50003, 'FactInternetSales is empty', 1;

PRINT 'AdventureWorks data validation successful';

SELECT COUNT(*) AS TotalSalesRows
FROM dbo.FactInternetSales;

SELECT COUNT(*) AS TotalDateRows
FROM dbo.DimDate;