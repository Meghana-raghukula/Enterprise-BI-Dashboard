# Enterprise Business Intelligence Dashboard

## Project Overview

The Enterprise Business Intelligence Dashboard is an end-to-end data analytics project built using Microsoft SQL Server and Power BI. The project analyzes sales performance, customer information, product categories and business trends to provide meaningful insights through interactive dashboards.

The goal is to transform business data into actionable insights that support data-driven decision-making.

## Technologies Used

- Microsoft SQL Server
- SQL Server Management Studio (SSMS)
- Power BI Desktop
- DAX (Data Analysis Expressions)
- SQL
- Microsoft Excel

## Dataset

**Database:** AdventureWorksDW2025

The project uses the AdventureWorks Data Warehouse dataset.

### Data Model

The model includes:

- FactInternetSales
- DimCustomer
- DimDate
- DimProduct
- DimProductCategory
- DimProductSubcategory
- DimSalesTerritory

## Project Implementation

### 1. SQL Server Database

- Connected to SQL Server using SSMS.
- Restored the AdventureWorksDW2025 database.
- Explored fact and dimension tables.
- Validated data using SQL queries.
- Checked record counts and data availability.

### 2. Power BI Dashboard

Developed an interactive Enterprise Business Intelligence Dashboard featuring:

**Key Performance Indicators (KPIs):**
- Total Sales
- Total Customers
- Total Products
- Total Sales Records

**Visualizations:**
- Sales by Year
- Sales by Calendar Year
- Sales by Education Level
- Sales by Gender
- Sales by Product Category
- Product Category Sales Distribution

### 3. DAX Measures

Created analytical measures for:

- Total Sales
- YTD Sales
- Previous Year Sales
- Year-over-Year (YoY) Sales Growth %
- Total Cost
- Total Profit
- Profit Margin %
- 30-Day Rolling Average Sales

*Note: Advanced measures require final calculation and validation.*

### 4. Row-Level Security (RLS)

Created a RegionalManager security role in Power BI to explore regional data access restrictions.

The regional filter was configured for North America. Final role validation and relationship testing remain pending.

### 5. SQL Server Agent – Scheduled Jobs

As an alternative to Azure Data Factory, SQL Server Agent was used for scheduled database validation.

**Job Name:** AdventureWorks_Data_Refresh

**Job Step:** Data_Validation

Implemented:
- FactInternetSales table existence validation.
- DimDate table existence validation.
- Sales data availability validation.
- Record count checks.

The SQL Server Agent job was executed successfully.

**Note:** This job performs database validation, not a complete ETL or automated Power BI refresh.

## Dashboard Results

The Power BI dashboard displays the following KPI results from the current report:

| KPI | Result |
|---|---:|
| Total Sales | ₹29.36M |
| Total Customers | 18K |
| Total Products | 606 |
| Check Rows | 60K |

## Project Structure

```text
Enterprise-BI-Dashboard/
│
├── Dashboard/
│   ├── Enterprise_BI_Dashboard.pbix
│   └── Enterprise_BI_Dashboard.pdf
│
├── SQL/
│   ├── Data_Validation.sql
│   └── Database_Analysis.sql
│
├── Screenshots/
│   └── Dashboard.png
│
└── README.md
```

*Add the actual files and screenshots to the repository before publishing.*

## Key Learnings

- Working with SQL Server databases.
- Understanding fact and dimension tables.
- Writing SQL queries for data validation.
- Creating interactive Power BI dashboards.
- Developing DAX measures.
- Understanding Row-Level Security.
- Creating and executing SQL Server Agent jobs.
- Presenting business insights through data visualization.

## Conclusion

This project demonstrates practical knowledge of SQL Server, Power BI, SQL querying, data modeling, DAX calculations and business intelligence reporting.

It provides hands-on experience in transforming business data into meaningful insights through an interactive dashboard.

---

**Project Domain:** Data Analytics / Business Intelligence

**Tools:** SQL Server | SSMS | Power BI | DAX | SQL
