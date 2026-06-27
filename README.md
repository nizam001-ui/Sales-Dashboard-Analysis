
# 📊 Sales Performance & Profitability Dashboard

## 📑 Table of Contents

* [Project Overview](https://www.google.com/search?q=%23-project-overview)
* [Business Problem](https://www.google.com/search?q=%23-business-problem)
* [Data Pipeline & Methodology](https://www.google.com/search?q=%23-data-pipeline--methodology)
* [Key Insights & Visualizations](https://www.google.com/search?q=%23-key-insights--visualizations)
* [Project Structure](https://www.google.com/search?q=%23-project-structure)
* [Author](https://www.google.com/search?q=%23-author)

---

## 🚀 Project Overview

In today’s data-driven retail environment, understanding granular sales performance is critical for scaling operations. This project transforms a raw dataset of 1,200 transactional records into an interactive, automated executive dashboard. By mapping out the entire data pipeline from raw CSV ingestion to dynamic visualization, this project provides stakeholders with immediate, actionable insights into revenue generation and operational profitability.

## 🎯 Business Problem

The core objective of this analysis is to replace static, fragmented spreadsheets with a dynamic intelligence tool. The dashboard was engineered to answer three primary business questions:

1. **Product Performance:** Which specific products generate the highest sales volume and gross profit?
2. **Regional Distribution:** Which geographic regions are driving the most revenue, and where are the underperforming markets?
3. **Temporal Trends:** What is the trajectory of monthly sales, and are there identifiable seasonal patterns?

## ⚙️ Data Pipeline & Methodology

This project utilizes a robust three-stage analytical pipeline:

### 1. Data Cleaning & Feature Engineering (Excel)

Raw data rarely arrives ready for analysis. Initial triage was performed to ensure structural integrity:

* Standardized date formatting (`YYYY-MM-DD`) for seamless SQL integration.
* Applied financial formatting constraints to monetary columns.
* Engineered verification columns to mathematically prove data validity (`Quantity * Unit_Price = Revenue`).

### 2. Exploratory Data Analysis (SQL)

To ensure the final visualization layer was perfectly accurate, baseline metrics were aggregated via SQL.

*Example Query: Extracting top regional revenue drivers:*

```sql
SELECT 
    Region, 
    SUM(Revenue) AS Total_Revenue,
    COUNT(DISTINCT Order_ID) AS Total_Orders
FROM sales_data
GROUP BY Region
ORDER BY Total_Revenue DESC;

```

### 3. Dashboard Development (Power BI)

Developed a fully interactive reporting interface designed for executive stakeholders.

* **Top-Level KPIs:** Instant visibility into Total Revenue, Net Profit, and overall Profit Margins.
* **Dimensional Slicing:** Engineered category and salesperson slicers, allowing end-users to dynamically filter the entire visual matrix without writing code.

## 📈 Key Insights & Visualizations

*(Note: In a live portfolio, replace this text with a high-resolution screenshot of your dashboard)*

* **High-Volume vs. High-Margin:** Identified the discrepancy between products that sell the most units versus those that yield the highest net profit.
* **Regional Concentration:** Mapped the specific geographic territories that account for the 80/20 rule (Pareto Principle) in revenue generation.
* **Month-Over-Month Growth:** Visualized the exact inflection points in the fiscal year where revenue peaked.

## 📁 Project Structure

```text
├── Data/
│   ├── raw_sales_data.csv          # Original dataset
│   └── cleaned_sales_data.csv      # Processed data ready for ingestion
├── SQL_Scripts/
│   ├── Monthly sales trends.sql         
│   └── Regions revenue.sql 
|   └──Top products sell best.sql
├── Dashboard/
│   └── Sales_Performance_UI.pbix   # Power BI project file
└── README.md

```

## 👨‍💻 Author

**Nizam ud din** *B.S. Computer Science | University of Turbat*

* Data Analyst & Visualization Expert
* Specializing in Python, SQL, and Power BI solutions.
