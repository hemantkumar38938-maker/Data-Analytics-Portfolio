# 🗄️ SQL Data Analytics Portfolio

Welcome to my **SQL Projects Portfolio**! 🚀

This repository showcases my practical work in **SQL, database management, data analysis, complex querying, and business problem-solving**.

The projects demonstrate how SQL can be used to **extract, clean, transform, analyze, and interpret data** from relational databases to generate meaningful business insights.

---

# 🛠️ SQL Skills

## 🗃️ SQL Fundamentals

* SELECT
* DISTINCT
* WHERE
* ORDER BY
* GROUP BY
* HAVING
* LIMIT
* Aliases
* CASE Statements
* NULL Handling

---

## 🔗 SQL Joins

I practice different types of joins to combine data from multiple tables.

* INNER JOIN
* LEFT JOIN
* RIGHT JOIN
* FULL OUTER JOIN
* CROSS JOIN
* SELF JOIN

Example:

```sql
SELECT
    c.customer_name,
    o.order_id,
    o.total_amount
FROM customers c
INNER JOIN orders o
    ON c.customer_id = o.customer_id;
```

---

# 🧮 Aggregate Functions

Aggregate functions are used to summarize and analyze data.

* COUNT()
* SUM()
* AVG()
* MIN()
* MAX()

Example:

```sql
SELECT
    category,
    SUM(sales) AS total_sales,
    AVG(sales) AS average_sales
FROM sales
GROUP BY category;
```

---

# 🔍 Subqueries

Subqueries are used to perform analysis inside another SQL query.

### Example

```sql
SELECT *
FROM employees
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
);
```

---

# 🔄 Common Table Expressions (CTEs)

CTEs are used to make complex queries more readable and easier to manage.

### Example

```sql
WITH sales_summary AS (
    SELECT
        customer_id,
        SUM(amount) AS total_sales
    FROM orders
    GROUP BY customer_id
)
SELECT *
FROM sales_summary
WHERE total_sales > 50000;
```

---

# 🪟 Window Functions

Window functions are used for advanced analytical calculations without collapsing rows.

### Functions Practiced

* ROW_NUMBER()
* RANK()
* DENSE_RANK()
* LAG()
* LEAD()
* SUM() OVER()
* AVG() OVER()
* COUNT() OVER()
* PARTITION BY
* ORDER BY

### Example

```sql
SELECT
    employee_name,
    department,
    salary,
    RANK() OVER (
        PARTITION BY department
        ORDER BY salary DESC
    ) AS salary_rank
FROM employees;
```

---

# 📅 Date & Time Analysis

SQL is used to analyze date-based business information.

### Topics Practiced

* Date filtering
* Year analysis
* Month analysis
* Monthly trends
* Date differences
* Date extraction
* Time-based comparisons
* Year-over-year analysis

Example:

```sql
SELECT
    YEAR(order_date) AS order_year,
    MONTH(order_date) AS order_month,
    SUM(amount) AS total_sales
FROM orders
GROUP BY
    YEAR(order_date),
    MONTH(order_date)
ORDER BY
    order_year,
    order_month;
```

---

# 🔤 SQL Text Functions

Text functions are used for data cleaning and transformation.

### Functions Practiced

* CONCAT()
* UPPER()
* LOWER()
* LENGTH()
* SUBSTRING()
* LEFT()
* RIGHT()
* TRIM()
* REPLACE()

Example:

```sql
SELECT
    UPPER(customer_name) AS customer_name
FROM customers;
```

---

# 🧹 Data Cleaning with SQL

SQL can be used to prepare raw datasets for analysis.

### Common Tasks

* Identifying NULL values
* Removing duplicates
* Standardizing text
* Correcting inconsistent values
* Filtering invalid records
* Handling missing data
* Creating calculated fields
* Validating data
* Transforming data

Example:

```sql
SELECT *
FROM customers
WHERE customer_name IS NOT NULL;
```

---

# 📊 Featured SQL Projects

This repository contains practical SQL projects focused on **database analysis, business problems, and real-world datasets**.

---

## 🐾 WildTrack Conservation Project

A wildlife conservation database project focused on analyzing **animal, location, observation, and conservation-related data**.

### Key Analysis

* Animal information
* Species analysis
* Location analysis
* Observation records
* Tracking data
* Conservation activities
* Animal-wise analysis
* Geographic analysis

### SQL Concepts Used

✅ Joins
✅ Aggregations
✅ Subqueries
✅ CTEs
✅ Window Functions
✅ Filtering
✅ Grouping
✅ Data Analysis

---

## 🛰️ OrbitLink Satellite Project

A satellite and connectivity data analysis project designed to explore **satellite operations, customers, locations, and connectivity-related information**.

### Key Analysis

* Satellite data
* Customer information
* Country-wise analysis
* Satellite usage
* Connectivity data
* Customer engagement
* Performance analysis
* Ranking analysis

### SQL Concepts Used

✅ Joins
✅ GROUP BY
✅ Aggregations
✅ Subqueries
✅ CTEs
✅ Window Functions
✅ CASE Statements
✅ Date Analysis

---

# 📈 SQL Business Analysis

SQL is used to answer practical business questions such as:

* What is the total revenue?
* Which products generate the highest sales?
* Who are the top customers?
* Which region performs best?
* What is the monthly sales trend?
* Which employees have the highest salaries?
* Which category has the highest performance?
* What percentage of records belong to each category?
* Which customers are most engaged?
* Which products or services are underperforming?

---

# 🧠 Advanced SQL Analysis

The portfolio also includes advanced analytical techniques such as:

### Ranking

```sql
RANK()
DENSE_RANK()
ROW_NUMBER()
```

### Running Totals

```sql
SUM(amount) OVER (
    ORDER BY order_date
)
```

### Previous & Next Records

```sql
LAG()
LEAD()
```

### Partitioned Analysis

```sql
SUM(sales) OVER (
    PARTITION BY category
)
```

These techniques are useful for **ranking, comparisons, trends, cumulative analysis, and business reporting**.

---

# 🔄 SQL Data Analysis Workflow

The projects generally follow this workflow:

```text
Raw Database
     ↓
Database Understanding
     ↓
Table & Relationship Analysis
     ↓
Data Validation
     ↓
Data Cleaning
     ↓
SQL Query Development
     ↓
Joins & Aggregations
     ↓
Advanced SQL Analysis
     ↓
Insight Generation
     ↓
Business Recommendations
```

---

# 🗂️ Database Concepts

My SQL projects also provide practical exposure to relational database concepts.

### Concepts Practiced

* Databases
* Tables
* Rows & Columns
* Primary Keys
* Foreign Keys
* Constraints
* Relationships
* Entity Relationship Diagrams
* Normalization
* Referential Integrity

---

# 🔐 SQL Constraints

The portfolio includes practice with:

* PRIMARY KEY
* FOREIGN KEY
* UNIQUE
* NOT NULL
* DEFAULT
* CHECK

Example:

```sql
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    country VARCHAR(50) DEFAULT 'India'
);
```

---

# 📊 SQL Reporting

SQL queries are used to generate analytical reports such as:

```text
Total Revenue
Total Customers
Total Orders
Average Order Value
Top Customer
Top Product
Best Region
Monthly Revenue
Customer Engagement
Performance Ranking
```

These reports can later be connected to visualization tools such as **Excel, Power BI, Tableau, or Python**.

---

# 💡 Key SQL Analysis Techniques

Some of the important techniques practiced in this portfolio include:

✅ Data Retrieval
✅ Data Filtering
✅ Data Cleaning
✅ Joins
✅ Aggregations
✅ Grouping
✅ Subqueries
✅ CTEs
✅ Window Functions
✅ Ranking
✅ Date Analysis
✅ Text Functions
✅ CASE Statements
✅ Database Design
✅ Business Analysis
✅ Insight Generation

---

# 📁 Repository Structure

```text
SQL-Portfolio/
│
├── README.md
│
├── Project-1-WildTrack-Conservation/
│   ├── project.sql
│   ├── EER-diagram.mwb
│   ├── report.pdf
│   └── README.md
│
├── Project-2-OrbitLink-Satellite/
│   ├── project.sql
│   ├── EER-diagram.mwb
│   ├── report.pdf
│   └── README.md
│
├── SQL-Practice/
│   ├── basic_sql.sql
│   ├── joins.sql
│   ├── subqueries.sql
│   ├── cte.sql
│   ├── window_functions.sql
│   └── date_functions.sql
│
└── Database-Design/
    ├── schema.sql
    └── EER-diagram.mwb
```

---

# 📚 SQL Practice Topics

This repository also contains SQL practice exercises covering:

### 🔹 Basic SQL

* SELECT
* DISTINCT
* WHERE
* ORDER BY
* LIMIT
* GROUP BY
* HAVING

### 🔗 Joins

* INNER JOIN
* LEFT JOIN
* RIGHT JOIN
* FULL OUTER JOIN
* SELF JOIN
* CROSS JOIN

### 🧮 Aggregations

* COUNT()
* SUM()
* AVG()
* MIN()
* MAX()

### 🔍 Subqueries

* Scalar Subqueries
* Nested Queries
* Correlated Subqueries

### 🔄 CTEs

* Simple CTE
* Multiple CTEs
* Recursive CTEs

### 🪟 Window Functions

* ROW_NUMBER()
* RANK()
* DENSE_RANK()
* LAG()
* LEAD()
* SUM() OVER()
* AVG() OVER()

### 📅 Date Functions

* Date Extraction
* Date Filtering
* Date Difference
* Month Analysis
* Year Analysis

### 🔤 Text Functions

* CONCAT()
* UPPER()
* LOWER()
* TRIM()
* LEFT()
* RIGHT()
* SUBSTRING()
* REPLACE()

---

# 🎯 Project Objectives

The main objectives of this SQL portfolio are to:

* Build strong SQL fundamentals
* Develop advanced query-writing skills
* Understand relational databases
* Practice data cleaning
* Analyze real-world datasets
* Solve business problems using SQL
* Learn database relationships
* Improve analytical thinking
* Generate data-driven insights
* Build professional SQL projects

---

# 💡 Key Learnings

Through these projects, I am gaining practical experience in:

✅ SQL Programming
✅ Database Management
✅ Data Cleaning
✅ Joins
✅ Aggregations
✅ Subqueries
✅ CTEs
✅ Window Functions
✅ Data Analysis
✅ Database Design
✅ Business Intelligence
✅ Problem Solving
✅ Insight Generation

---

# 🚀 Future SQL Projects

I plan to expand this portfolio with projects involving:

* 💰 Finance Analytics
* 🛒 E-commerce Analytics
* 🏦 Banking Analytics
* 👥 Customer Analytics
* 🚚 Logistics Analytics
* 🧑‍💼 HR Analytics
* 🏥 Healthcare Analytics
* 📊 Sales Analytics
* 📈 Advanced SQL Analytics
* 🐍 SQL + Python Projects
* 📊 SQL + Power BI Projects
* 📉 SQL + Tableau Projects

---

# 🔗 Other Portfolio Projects

| Technology  | Focus                        |
| ----------- | ---------------------------- |
| 🗄️ SQL     | Database & Data Analysis     |
| 📊 Excel    | Data Analysis & Dashboards   |
| 📈 Power BI | Business Intelligence        |
| 📉 Tableau  | Data Visualization           |
| 🐍 Python   | Data Analysis & Data Science |

---

# 🎯 Career Focus

My goal is to build a strong career in **Data Analytics and Data Science** by continuously improving my SQL, programming, analytical, statistical, and problem-solving skills.

SQL is an essential part of my learning journey because it helps me **retrieve, transform, analyze, and understand large datasets stored in relational databases**.

I aim to combine **SQL, Python, Excel, Power BI, Tableau, and Statistics** to solve real-world business and data problems.

---

# 📬 Connect With Me

🔗 **LinkedIn Profile:** [linkedin.com/in/r-hemant-kumar-patra-654469419](https://www.linkedin.com/in/r-hemant-kumar-patra-654469419/)

🐙 **GitHub:** [R Hemant Kumar Patra](https://github.com/)

---

⭐ **Feel free to explore my SQL projects, queries, and database analysis!**

⭐ **If you find my work useful, please consider giving the repository a star.**

---

### © 2026 R Hemant Kumar Patra

**SQL Data Analytics Portfolio** 🗄️📊🚀

**Query • Analyze • Transform • Generate Insights**

