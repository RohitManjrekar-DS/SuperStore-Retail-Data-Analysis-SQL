# SuperStore Retail Data Analysis using SQL

## 📌 Project Overview
This project uses **SQL Server (T-SQL)** to perform comprehensive Data Analysis on a retail transaction dataset ("SuperStore"). The goal is to evaluate sales performance, customer metrics, and product tracking to uncover key business trends.

---

## 🛠️ Core Skills Used
* **Database Engine:** Microsoft SQL Server (SSMS)
* **SQL Techniques:** Aggregations (`SUM`, `COUNT`, `MIN`, `MAX`), Grouping & Sorting (`GROUP BY`, `ORDER BY`), Row-level filtering (`WHERE`), and Conditional Distinct tracking.

---

## 📂 Project Sections

### 1. DATA EXPLORATION
* Checked overall records, shapes, and specific columns (`Customer Name`, `Sales`, `City`).
* Isolated data segments by region (e.g., filtering for the 'West' region).
* Identified distinct product categorical dimensions (Categories, Sub-Categories, Regions).
* Evaluated chronological data boundaries by extracting the minimum and maximum order dates.

### 2. SALES ANALYSIS
* Calculated fundamental performance metrics: Total Sales, Average Sales, Highest Sale, and Lowest Sale.
* Analyzed geographical sales performance by grouping total revenues across US States.
* Isolated and ranked the top 10 highest-performing states by cumulative sales volume.

### 3. CUSTOMER ANALYSIS
* Ranked the top 10 highest-spending customers by total transaction volume.
* Segmented financial and transactional traffic distribution across customer business tiers.
* Created filtering logic to pinpoint high-value loyal customers with multiple distinct orders.

### 4. PRODUCT ANALYSIS
* Evaluated high-level inventory demand by tracking the top 10 products by sales.
* Compared category vs. sub-category revenues to find the store's best-selling departments.
* Found the most ordered sub-categories based on total order frequencies.