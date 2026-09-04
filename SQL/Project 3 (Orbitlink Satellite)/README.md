# 🛰️ OrbitLink — Satellite Network SQL Database Project

![MySQL](https://img.shields.io/badge/Database-MySQL-blue)
![SQL](https://img.shields.io/badge/Language-SQL-orange)
![Data Analysis](https://img.shields.io/badge/Data%20Analysis-SQL-green)
![Portfolio](https://img.shields.io/badge/Project-Portfolio-purple)

## 📌 Project Overview

**OrbitLink** is a practical **SQL Database Management and Data Analytics Project** based on a satellite communication network.

The project demonstrates how SQL can be used to design relational databases, manage connected datasets, solve real-world business problems, analyze network usage, monitor satellite operations, and optimize database performance.

The project contains multiple real-world SQL scenarios covering **customers, subscriptions, satellites, usage logs, and maintenance records**.

**Project Type:** SQL Database + Data Analytics
**Database:** MySQL
**Domain:** Satellite Communication & Network Analytics
**Prepared By:** R Hemant Kumar Patra

---

## 🎯 Project Objectives

The main objectives of this project are to:

* Design and manage a relational database
* Analyze satellite network usage
* Study customer and subscription behavior
* Monitor satellite performance
* Analyze data consumption patterns
* Identify operational issues
* Apply advanced SQL techniques
* Improve query performance
* Demonstrate database security concepts
* Convert raw database records into meaningful insights

---

# 🗃️ Database Structure

The project works with interconnected relational tables representing different aspects of the OrbitLink network.

```text
Customers
    │
    │ customer_id
    ▼
Subscriptions
    │
    │ subscription_id
    ▼
UsageLogs

Satellites
    │
    ├──────────────► Subscriptions
    │
    └──────────────► MaintenanceRecords
```

### Core Entities

| Table                | Purpose                                   |
| -------------------- | ----------------------------------------- |
| `Customers`          | Stores customer information               |
| `Subscriptions`      | Stores customer subscription details      |
| `Satellites`         | Stores satellite information              |
| `UsageLogs`          | Records network/data usage                |
| `MaintenanceRecords` | Tracks satellite maintenance and downtime |

---

# 📊 Key Analysis Areas

## 👥 Customer & Subscription Analysis

The project analyzes customer and subscription information to understand:

* Customer distribution
* Subscription activity
* Plan types
* Subscription growth
* Customer usage behavior
* High-value users

---

## 🛰️ Satellite Analysis

Satellite-level analysis includes:

* Satellite information
* Satellite utilization
* Subscriber distribution
* Satellite performance
* Orbit-related information
* Satellites with no subscribers

---

## 📡 Usage Analysis

The `UsageLogs` data is analyzed to understand network consumption.

### Key metrics include:

* Total data usage
* Usage by customer
* Usage by subscription
* Usage by country
* Daily usage
* Usage categories
* Heavy and light users
* Usage trends

For example, the project uses `CASE` logic to classify data consumption into **Light, Moderate, and Heavy** usage categories.

---

## 🔧 Maintenance & Downtime Analysis

The project also analyzes satellite maintenance information.

### Analysis includes:

* Average downtime
* Total downtime
* Satellite maintenance activity
* Operational performance
* Maintenance-related metrics

For example, aggregate functions are used to calculate average downtime across maintenance records.

---

# 🧮 SQL Techniques Used

This project demonstrates a wide range of SQL concepts.

### Basic SQL

```sql
SELECT
FROM
WHERE
DISTINCT
ORDER BY
GROUP BY
HAVING
```

### Aggregate Functions

```sql
COUNT()
SUM()
AVG()
MIN()
MAX()
ROUND()
```

### Joins

```sql
INNER JOIN
LEFT JOIN
```

The project uses `LEFT JOIN` to identify unmatched records, such as subscriptions without usage logs or orphaned usage records.

### Conditional Logic

```sql
CASE
    WHEN ...
    THEN ...
    ELSE ...
END
```

### Subqueries

Nested queries are used to answer comparative and business-specific questions.

### Common Table Expressions

```sql
WITH ...
```

CTEs are used to simplify complex and reusable SQL logic.

### Window Functions

```sql
RANK()
LEAD()
LAG()
```

The project uses window functions for ranking users and comparing sequential usage records.

---

# ⚡ SQL Performance Optimization

Database performance is an important part of the project.

Indexes are used to improve frequently executed lookup operations.

Example:

```sql
CREATE INDEX idx_usage_subscription
ON UsageLogs(subscription_id);
```

This demonstrates how indexing can improve repeated filtering and lookup operations on large usage-log tables.

---

# 👁️ SQL Views

The project demonstrates how reusable views can simplify reporting.

Example:

```sql
CREATE VIEW SatelliteSummary AS
SELECT ...
```

A summary view combines satellite, subscription, and maintenance information so that reporting users can access prepared results without rebuilding the complete query each time.

---

# 🔐 Database Security

The project also includes practical database security concepts such as:

* User privileges
* Access control
* `GRANT`
* `REVOKE`
* Permission management

Example:

```sql
REVOKE ALL PRIVILEGES, GRANT OPTION
FROM 'contractor_user'@'localhost';
```

This demonstrates controlling database access according to user responsibilities.

---

# 🔄 Project Workflow

```text
Raw Satellite Data
        ↓
Database Design
        ↓
Table Creation
        ↓
Data Insertion
        ↓
Data Validation
        ↓
SQL Queries
        ↓
Data Analysis
        ↓
Advanced SQL
        ↓
Performance Optimization
        ↓
Business Insights
```

---

# 💡 Business Questions Solved

The project uses SQL to answer practical questions such as:

* Which customers are the heaviest network users?
* Which satellites have the most subscribers?
* Which subscriptions have no usage activity?
* Which usage records are orphaned?
* How much data is being consumed?
* What is the average satellite downtime?
* Which users rank highest in network consumption?
* How does usage change between consecutive sessions?
* How can frequently used queries be optimized?
* How can reporting logic be simplified using views?

---

# 📈 Key Skills Demonstrated

Through this project, I demonstrated practical experience in:

* ✅ MySQL
* ✅ SQL Database Design
* ✅ Relational Data Modeling
* ✅ Data Analysis
* ✅ Data Cleaning
* ✅ SQL Joins
* ✅ Aggregations
* ✅ Subqueries
* ✅ CTEs
* ✅ CASE Statements
* ✅ Window Functions
* ✅ Views
* ✅ Indexing
* ✅ Transactions
* ✅ Database Security
* ✅ Business Problem Solving

---

# 📁 Repository Structure

```text
OrbitLink-SQL-Project/
│
├── README.md
│
├── SQL/
│   ├── database.sql
│   ├── table-creation.sql
│   ├── data-insertion.sql
│   ├── analysis-queries.sql
│   ├── advanced-sql.sql
│   └── optimization.sql
│
├── Dataset/
│   └── orbitlink-data.sql
│
├── Report/
│   └── OrbitLink_SQL_Project_Report.pdf
│
└── Screenshots/
    └── database-schema.png
```

---

# 🎓 Learning Outcomes

This project helped me strengthen my ability to:

1. Design relational databases
2. Work with multiple connected tables
3. Write complex SQL queries
4. Analyze real-world business scenarios
5. Use advanced SQL techniques
6. Apply window functions
7. Build reusable SQL views
8. Identify missing and orphaned records
9. Improve database performance using indexes
10. Understand database access control

---

# 🚀 Future Improvements

Future extensions of this project could include:

* 📊 Power BI Satellite Network Dashboard
* 📈 Tableau Network Performance Dashboard
* 🐍 Python-based EDA
* 🤖 Predictive network usage analysis
* 📡 Satellite performance forecasting
* ⚡ Advanced SQL optimization
* 📊 Automated operational reporting

---

# 🔗 My Data Science Portfolio

| Technology  | Focus                      |
| ----------- | -------------------------- |
| 🐍 Python   | Data Science & Analysis    |
| 🗄️ SQL     | Database & Data Analytics  |
| 📊 Excel    | Data Analysis & Dashboards |
| 📈 Power BI | Business Intelligence      |
| 📉 Tableau  | Data Visualization         |

---

# 🎯 Career Focus

I am building my career in **Data Science** by developing practical skills in SQL, Python, data visualization, and analytical problem-solving through real-world projects.

---

# 📬 Connect With Me

**R Hemant Kumar Patra**

🎯 Data Science Aspirant
📍 Bhubaneswar, India

⭐ If you find this project useful, please consider giving the repository a **star**!

---

### © 2026 R Hemant Kumar Patra

