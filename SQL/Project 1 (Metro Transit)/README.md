# 🚇 Metro Transit System — SQL Analytics Project

![SQL](https://img.shields.io/badge/SQL-MySQL-blue)
![Data Analysis](https://img.shields.io/badge/Data%20Analysis-SQL-orange)
![Database](https://img.shields.io/badge/Database-Relational-green)
![Portfolio](https://img.shields.io/badge/Project-Portfolio-purple)

## 📌 Project Overview

**Metro Transit System** is a SQL-based data analytics and database project designed to transform relational metro-transit data into meaningful **operational and business insights**.

The project analyzes passenger demand, route utilization, fare behavior, train performance, station activity, passenger behavior, and time-based booking patterns using **MySQL and advanced SQL techniques**.

**Technology:** SQL / MySQL
**Project Type:** Data Analytics & Database Project
**Prepared by:** R Hemant Kumar Patra

---

## 🎯 Project Objective

The main objective of this project is to demonstrate how a relational database can be used to answer real-world business questions and support operational decision-making.

### Key objectives:

* Analyze passenger demand across the metro network
* Identify route and train utilization
* Analyze station activity
* Evaluate fare and revenue performance
* Understand passenger behavior
* Analyze booking trends over time
* Apply advanced SQL techniques
* Demonstrate relational database design and optimization

---

## 🗃️ Database Architecture

The project is built around **four connected relational tables**:

| Table            | Purpose                          |
| ---------------- | -------------------------------- |
| `Stations`       | Metro station master information |
| `Trains`         | Train and route information      |
| `Passengers`     | Registered passenger information |
| `TicketBookings` | Transactional booking records    |

The report documents approximately **25 stations, 20 trains, 465 passengers, and 1,490 bookings**.

### 🔗 Relationships

```text
Passengers
     │
     │ passenger_id
     ▼
TicketBookings
     ▲
     │ train_id
     │
   Trains

Stations ───── boarding_station_id ───► TicketBookings
Stations ───── destination_station_id ► TicketBookings
```

A key database-design feature is that `TicketBookings` references the `Stations` table twice — once for the **boarding station** and once for the **destination station**.

---

## 📊 Analytical Areas

### 🚉 1. Demand & Network Utilization

The project analyzes:

* Route-line demand
* Train booking activity
* Boarding-station activity
* Destination-station activity
* Monthly booking trends
* Booking share by route

The analysis compares booking volume with revenue to avoid relying on a single performance metric.

---

### 💰 2. Revenue & Fare Performance

Revenue analysis focuses on:

* Revenue by route
* Average fare
* Revenue by seat class
* Booking volume by seat class
* Fare categories
* Revenue contribution

The project distinguishes between **high-volume segments** and **high-value segments** to better understand monetary performance.

---

### 👥 3. Passenger Behavior

Passenger analysis includes:

* Minimum, maximum, and average passenger age
* Missing email analysis
* Repeat booking behavior
* High-value passengers
* Passenger distribution by city

These analyses help identify recurring users and passengers with higher total fare contributions.

---

### 📅 4. Time-Based Analysis

The project analyzes:

* Monthly booking volume
* Monthly revenue
* Average fare trends
* Travel-time performance
* Booking activity over time

The project follows an analytical guardrail of avoiding unsupported claims about seasonality when the available booking period is too short.

---

## 🧠 SQL Techniques Used

This project demonstrates SQL skills ranging from database design to advanced analytical queries.

### Database Design

* `PRIMARY KEY`
* `FOREIGN KEY`
* `UNIQUE`
* `DEFAULT`
* `CHECK`

### Aggregation

* `COUNT()`
* `COUNT(DISTINCT)`
* `SUM()`
* `AVG()`
* `GROUP BY`
* `HAVING`

### Joins

* `INNER JOIN`
* `LEFT JOIN`
* Multi-table joins

### Text & Date Functions

* `UPPER()`
* `LENGTH()`
* `MONTH()`
* `YEAR()`
* `DAYNAME()`
* `DATEDIFF()`
* `DATE_ADD()`

### Advanced SQL

* Subqueries
* CTEs
* Views
* `CASE`
* Window Functions

### Window Functions

* `RANK()`
* `DENSE_RANK()`
* `LAG()`
* `LEAD()`

### Database Operations

* Transactions
* `ROLLBACK`
* Indexes
* Composite indexes

These techniques are specifically documented in the project's SQL engineering section.

---

## 🔍 Business Questions Answered

The project is designed to answer questions such as:

* Which routes have the highest passenger demand?
* Which trains exceed a specific booking threshold?
* Which stations have the highest activity?
* Which routes generate the most revenue?
* Which seat classes contribute the most value?
* Which passengers have spending above average?
* Who are the most active passengers?
* How does booking activity change over time?
* How can repeated SQL logic be simplified?
* How can frequently used queries be optimized?

---

## 🔄 Project Workflow

```text
Raw Transit Data
       ↓
Database Design
       ↓
Table Creation
       ↓
Primary & Foreign Keys
       ↓
Data Insertion
       ↓
Data Validation
       ↓
SQL Analysis
       ↓
Advanced Queries
       ↓
Business Insights
       ↓
Operational Recommendations
```

---

## 📁 Repository Structure

```text
Metro-Transit-SQL-Project/
│
├── README.md
│
├── SQL/
│   ├── database.sql
│   ├── table-creation.sql
│   ├── data-insertion.sql
│   ├── basic-analysis.sql
│   ├── advanced-analysis.sql
│   └── views-and-indexes.sql
│
├── Dataset/
│   └── metro-transit-data.sql
│
├── Report/
│   └── Metro_Transit_SQL_Report.pdf
│
└── Screenshots/
    └── database-schema.png
```

---

## 💡 Key Skills Demonstrated

Through this project, I demonstrated practical experience in:

* ✅ Relational Database Design
* ✅ SQL Query Writing
* ✅ Data Analysis
* ✅ Multi-table Joins
* ✅ Aggregation & Grouping
* ✅ Subqueries
* ✅ CTEs
* ✅ Window Functions
* ✅ Date & Time Analysis
* ✅ Views
* ✅ Transactions
* ✅ Indexing
* ✅ Business Problem Solving
* ✅ Data-driven Decision Making

The project emphasizes not only query writing but also **relational thinking, reusable SQL structures, comparative analysis, and basic query-performance awareness**.

---

## 📌 Business Recommendations

Based on the analytical framework, the project can support decisions related to:

* **Capacity Planning** — Use sustained booking concentration to guide service reviews.
* **Route Management** — Monitor high- and low-performing routes using bookings and revenue.
* **Station Operations** — Investigate high-demand and low-activity stations.
* **Revenue Strategy** — Evaluate route and fare-class performance before pricing decisions.
* **Passenger Retention** — Analyze repeat-booking behavior.
* **Data Quality** — Monitor missing passenger information and data completeness.

---

## 🎓 What I Learned

This project helped me strengthen my understanding of:

1. Designing relational databases
2. Connecting multiple tables using keys
3. Writing analytical SQL queries
4. Working with real-world business questions
5. Using advanced SQL techniques
6. Performing time-based analysis
7. Ranking and comparing data using window functions
8. Improving query performance using indexes
9. Converting SQL results into operational insights

---

## 🚀 Future Improvements

Future versions of this project can include:

* Interactive Power BI dashboard
* Tableau visualization
* Python-based exploratory analysis
* Advanced SQL performance optimization
* Predictive passenger-demand analysis
* Automated reporting

---

## 📬 Connect With Me

**R Hemant Kumar Patra**

🎯 Data Science Aspirant
📍 Bhubaneswar, India

⭐ If you find this project useful, consider giving the repository a **star**!

---

### © 2026 R Hemant Kumar Patra

