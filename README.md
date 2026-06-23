# Global Retail Sales & Profitability Analysis

## Project Overview

This project focuses on analyzing a global retail dataset containing over 50,000 transactions to uncover sales trends, customer behavior, regional performance, product profitability, and the impact of discounts on profit.

The main goal is to transform raw retail data into actionable business insights using Python, SQL Server (T-SQL), and Tableau.

---

# Data Preparation

## Cleaning and Transformation

The raw dataset was cleaned and transformed using Python and Pandas.

### Data Cleaning Steps

* Removed unnecessary columns
* Standardized data types
* Cleaned text fields
* Handled missing values
* Removed Postal Code column
* Split Order Date into Year, Month, and Day
* Created Month Name field
* Converted discount values into percentage format
* Created Gross Margin metric

---

# Exploratory Data Analysis

Analysis was performed to answer key business questions:

* Sales by Category and Sub-Category
* Profit by Category and Sub-Category
* Sales and Profit Trends
* Regional and Country Performance
* Customer Purchase Analysis
* Top Customers by Sales
* Loss-Making Products and Categories
* Discount Impact on Profitability
* Correlation Analysis

---

# SQL Analysis

T-SQL was used to perform:

* Aggregations using GROUP BY
* Filtering using WHERE and HAVING
* Business classifications using CASE statements
* Customer ranking using RANK() and DENSE_RANK()
* Common Table Expressions (CTEs)

---

# Tableau Dashboard

Interactive dashboards were created to visualize:

* Total Sales KPI
* Total Profit KPI
* Sales Trend Analysis
* Profit by Sub-Category
* Profit by Region
* Sales by Category
* Interactive Category Filtering

---

# Packages Used

* Pandas
* NumPy
* Matplotlib
* Seaborn

---

# Project Structure

```text
Global-Retail-Analysis/
│
├── Global_Superstore2.csv
├── Retail_Analysis.ipynb
├── README.md
├── Global_Superstore_Cleaned.xlsx
├── SQL_Analysis.sql
├── Tableau_Dashboard.twbx
```

---

# Key Findings

* Discounts showed a negative relationship with profitability.
* Certain sub-categories generated losses despite high sales volume.
* Sales growth did not always translate into higher profits.
* Regional performance varied significantly across markets.
* Customer analysis identified high-value customers and revenue drivers.

---

# Author

Rishi

Aspiring Data Analyst | Computer Science Graduate
