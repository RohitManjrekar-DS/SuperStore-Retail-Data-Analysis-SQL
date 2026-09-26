

  --------------------------------------------------DATA EXPLORATION---------------------------------------------------
--Display all records from the table.
select * from SuperStore

--Show only customer_name, sales, and city.
select Customer_name,sales,city 
from SuperStore

--Find all orders from the West region.
select Order_ID from superstore
where region = 'West'

--Count the total number of orders.
SELECT COUNT(DISTINCT customer_id) AS [Total Customers]
FROM SuperStore;

--Find the total number of customers.
SELECT COUNT(DISTINCT customer_id) AS [Total Customers]
FROM SuperStore;

--List all unique categories.
select Distinct Category from SuperStore

--List all unique sub-categories.
select Distinct Sub_Category from SuperStore

--List all unique regions.
select Distinct Region from SuperStore

--Find the first and last order dates.
select 
	Min(order_date) As First_Order_Date,
	MAx(order_date) As Last_order_date
from SuperStore

--------------------------------------SALES ANALYSIS----------------------------------------

--Calculate total sales.
select Sum(Sales) [Total Sales] from SuperStore

--Calculate average sales.
select avg(sales) [Average sales] from SuperStore

-- Find the highest sale.
select max(Sales) [Highest Sales] from SuperStore

-- Find the lowest sale.
select Min(Sales) [Lowest Sales] from SuperStore\

-- Calculate total sales by category.
select Category,sum(Sales) as Total_Sales_per_Category from SuperStore
group by Category

-- Calculate total sales by sub-category.
select sub_category,sum(Sales) as Total_Sales_per_Category from SuperStore
group by sub_category

-- Calculate total sales by region.
select Region,sum(Sales) as Total_Sales_per_Category from SuperStore
group by Region

-- Calculate total sales by state.
select State,sum(Sales) as Total_Sales_per_Category from SuperStore
group by State

-- Find the top 10 states by sales.
select Top 10 State,sum(Sales) as Total_Sales from SuperStore
group by State
order by Total_sales DESC

------------------------------- CUSTOMER ANALYSIS--------------------------------------------

-- Find the top 10 customers by total sales.
select Top 10 Customer_Name,sum(Sales) as Total_Sales from SuperStore
group by Customer_Name
order by Total_sales DESC

-- Find total sales by customer segment.
select Segment,sum(Sales) as Total_Sales from SuperStore
group by segment

-- Count customers in each segment
select Segment,Count(Distinct Customer_ID) as Total_Sales from SuperStore
group by segment

-- Find customers with multiple orders.

------------------------PRODUCT ANALYSIS---------------------------------

-- Find the top 10 products by sales.
SELECT TOP 10
       product_id,
       SUM(sales) AS Total_Sales
FROM SuperStore
GROUP BY product_id
ORDER BY Total_Sales DESC;

-- Find the best-selling category.
select Category,sum(Sales) As Total_Sales from superstore
group By Category
order by Total_Sales DESC;

-- Find the best-selling sub-category.
select Sub_Category,sum(Sales) As Total_Sales from superstore
group By Sub_Category
order by Total_Sales DESC;

-- Find the most ordered product.
select Top 1 [product_id],Count(*) As Total_Sales from Superstore
group by product_id
order By  Total_Sales DESC;

