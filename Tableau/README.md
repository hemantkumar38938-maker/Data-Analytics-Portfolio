# 📈 Tableau Data Visualization Portfolio

Welcome to my **Tableau Projects Portfolio**! 🚀

This repository showcases my practical work in **Tableau, data visualization, dashboard development, data analysis, calculated fields, filters, parameters, and business intelligence**.

The projects demonstrate how Tableau can be used to transform raw datasets into **interactive dashboards, meaningful visualizations, and actionable business insights**.

---

# 🛠️ Tableau Skills

## 📊 Data Connection & Preparation

* Connecting to Excel Files
* Connecting to CSV Files
* Connecting to Databases
* Data Source Management
* Data Joining
* Data Blending
* Data Filtering
* Data Cleaning
* Data Type Management
* Extract Creation
* Extract Filters

---

## 🧩 Data Modeling

I practice structuring and preparing data for effective Tableau analysis.

### Concepts

* Relationships
* Joins
* Data Blending
* Primary Keys
* Foreign Keys
* Logical Tables
* Physical Tables
* Data Sources
* Extracts

---

## 📐 Calculated Fields

Calculated fields are used to create custom metrics and analytical logic.

### Concepts Practiced

* Mathematical Calculations
* String Calculations
* Date Calculations
* Conditional Logic
* IF / ELSEIF
* CASE
* Aggregations
* Table Calculations
* Level of Detail Calculations

### Example

```tableau
IF [Sales] > 10000 THEN
    "High Sales"
ELSE
    "Low Sales"
END
```

---

# 🧠 Level of Detail (LOD) Expressions

I practice LOD expressions for advanced Tableau analysis.

### LOD Types

* FIXED
* INCLUDE
* EXCLUDE

### Example

```tableau
{ FIXED [Customer Name] : SUM([Sales]) }
```

LOD expressions are useful for performing calculations at a specific level of detail independent of the current view.

---

# 🔄 Table Calculations

Table calculations are used for advanced comparisons and trend analysis.

### Techniques

* Running Total
* Difference
* Percent Difference
* Percent of Total
* Rank
* Moving Average
* Quick Table Calculations
* Previous Value
* Growth Analysis

Example:

```text
Sales
   ↓
Running Total
   ↓
Trend Analysis
```

---

# 🎛️ Filters

I practice different Tableau filters to control analysis and dashboard interactions.

### Filters Used

* Extract Filters
* Data Source Filters
* Context Filters
* Dimension Filters
* Measure Filters
* Table Calculation Filters

Filters help users focus on specific categories, dates, regions, products, or performance indicators.

---

# 🎯 Parameters

Parameters are used to make dashboards more dynamic and interactive.

### Applications

* Dynamic Metric Selection
* Dynamic Measure Selection
* User-Controlled Analysis
* Top N Analysis
* Scenario Analysis
* Dynamic Titles
* What-If Analysis

---

# 📈 Data Visualization

Tableau is used to create effective visualizations for analyzing and communicating data.

### Visualizations Used

📊 Bar Charts
📈 Line Charts
🥧 Pie Charts
🍩 Donut Charts
📉 Area Charts
🔵 Scatter Plots
📦 Box Plots
🌳 Treemaps
🗺️ Maps
🔥 Heatmaps
📋 Tables
🎯 KPI Cards

---

# 🖥️ Dashboard Development

My Tableau dashboards focus on **clarity, interactivity, and business storytelling**.

### Dashboard Features

* KPI Cards
* Interactive Filters
* Slicers
* Parameters
* Tooltips
* Highlight Actions
* Filter Actions
* Navigation Buttons
* Dashboard Actions
* Drill-Down
* Dynamic Titles
* Conditional Formatting
* Interactive Charts

---

# 📂 Featured Tableau Projects

This repository contains practical Tableau projects focused on **business intelligence, operational analytics, and data visualization**.

---

## 🚚 Translogix Delivery Delay Dashboard

An interactive Tableau dashboard focused on analyzing **delivery delays and transportation performance**.

### Key Analysis

* Delivery Delay Rate
* Route Performance
* Driver Performance
* Delivery Status
* Monthly Delay Trends
* Driver Experience
* Operational Performance

### Dashboard Features

✅ KPI Indicators
✅ Route Analysis
✅ Driver Analysis
✅ Monthly Trend Analysis
✅ Interactive Filters
✅ Tooltips
✅ Dashboard Actions

---

## 🏢 NexaServe IT Solutions Dashboard

A business and service analytics dashboard designed to evaluate **company performance and operational metrics**.

### Key Analysis

* Revenue Performance
* Customer Analysis
* Service Performance
* Regional Performance
* Monthly Trends
* Business KPIs
* Category Analysis

### Dashboard Features

✅ KPI Cards
✅ Interactive Filters
✅ Dynamic Visualizations
✅ Trend Analysis
✅ Business Insights

---

## 🛍️ Nykaa Sales Dashboard

An e-commerce analytics dashboard focused on analyzing **sales, products, categories, and business performance**.

### Key Analysis

* Total Sales
* Product Performance
* Category Performance
* Sales Trends
* Top Products
* Customer Analysis
* Revenue Distribution

### Dashboard Features

✅ KPI Cards
✅ Category Filters
✅ Product Analysis
✅ Sales Trends
✅ Interactive Charts
✅ Business Insights

---

## 📈 Google Stock Analysis

A Tableau project focused on analyzing **Google stock performance and market trends**.

### Key Analysis

* Stock Price Trends
* Opening Price
* Closing Price
* Highest Price
* Lowest Price
* Trading Volume
* Time-Based Trends

### Dashboard Features

✅ Trend Analysis
✅ Time-Series Visualization
✅ Interactive Date Filters
✅ KPI Indicators
✅ Market Performance Analysis

---

# 🔄 Tableau Project Workflow

The projects generally follow this workflow:

```text
Raw Dataset
     ↓
Data Connection
     ↓
Data Cleaning
     ↓
Data Preparation
     ↓
Data Modeling
     ↓
Calculated Fields
     ↓
Filters & Parameters
     ↓
Data Visualization
     ↓
Dashboard Development
     ↓
Data Storytelling
     ↓
Business Insights
```

---

# 🧹 Data Preparation in Tableau

Before creating visualizations, data is prepared and validated.

### Common Tasks

* Removing unnecessary fields
* Correcting data types
* Handling null values
* Renaming fields
* Creating calculated fields
* Joining datasets
* Creating relationships
* Creating extracts
* Filtering unnecessary records

---

# 📊 KPI Analysis

Tableau dashboards are used to monitor important business performance indicators.

### Common KPIs

```text
Total Sales
Total Revenue
Total Orders
Total Customers
Average Sales
Growth %
Profit
Profit Margin %
Delivery Rate %
Delay Rate %
Total Cost
Cost per KM
```

---

# 📌 Business Questions Answered

My Tableau projects are designed to answer questions such as:

* Which category generates the highest sales?
* Which product performs best?
* Which region has the highest revenue?
* What is the monthly sales trend?
* Which routes have the highest delivery delays?
* Which drivers perform best?
* How does performance change over time?
* Which business areas require improvement?
* What trends and patterns can be identified from the data?

---

# 💡 Data Storytelling

Tableau helps transform analytical results into easy-to-understand visual stories.

My dashboards focus on:

✅ Clear KPI Presentation
✅ Logical Dashboard Layout
✅ Meaningful Visualizations
✅ Interactive Exploration
✅ Trend Identification
✅ Comparative Analysis
✅ Business Insights
✅ Decision Support

---

# 🧮 Advanced Tableau Analysis

The portfolio includes practice with advanced analytical concepts such as:

### LOD Expressions

```tableau
{ FIXED [Customer Name] : SUM([Sales]) }
```

### Ranking

```tableau
RANK(SUM([Sales]))
```

### Running Total

```text
SUM([Sales])
     ↓
Running Total
```

### Percent of Total

```text
SUM(Sales) / TOTAL(SUM(Sales))
```

These techniques are useful for **ranking, comparisons, segmentation, trend analysis, and advanced business reporting**.

---

# 🎯 Tableau Dashboard Design

My dashboard design approach focuses on making information easy to understand and interact with.

### Design Principles

* Clean Layout
* Logical Information Hierarchy
* Consistent Formatting
* Clear KPI Placement
* Effective Chart Selection
* Interactive Filters
* Meaningful Tooltips
* Minimal Visual Clutter
* Business-Focused Storytelling

---

# 📁 Repository Structure

```text
Tableau-Portfolio/
│
├── README.md
│
├── Project-1-Translogix/
│   ├── Translogix_Dashboard.twbx
│   ├── dataset.csv
│   ├── dashboard.png
│   └── README.md
│
├── Project-2-NexaServe/
│   ├── NexaServe_Dashboard.twbx
│   ├── dataset.xlsx
│   ├── dashboard.png
│   └── README.md
│
├── Project-3-Nykaa/
│   ├── Nykaa_Dashboard.twbx
│   ├── dataset.csv
│   ├── dashboard.png
│   └── README.md
│
├── Project-4-Google-Stock/
│   ├── Google_Stock_Dashboard.twbx
│   ├── dataset.csv
│   ├── dashboard.png
│   └── README.md
│
└── Tableau-Practice/
    ├── calculated_fields.twbx
    ├── filters.twbx
    ├── lod_expressions.twbx
    ├── table_calculations.twbx
    └── parameters.twbx
```

---

# 📚 Tableau Practice Topics

This repository also includes practice with:

### 🔹 Tableau Basics

* Worksheets
* Dashboards
* Stories
* Marks Card
* Dimensions
* Measures
* Discrete Fields
* Continuous Fields

### 🎛️ Filters

* Extract Filters
* Data Source Filters
* Context Filters
* Dimension Filters
* Measure Filters
* Table Calculation Filters

### 📐 Calculations

* Calculated Fields
* Aggregations
* Conditional Calculations
* String Calculations
* Date Calculations
* Table Calculations

### 🧠 LOD Expressions

* FIXED
* INCLUDE
* EXCLUDE

### 🎯 Parameters

* Dynamic Measures
* Dynamic Dimensions
* Top N
* What-If Analysis
* Dynamic Titles

### 📊 Visualizations

* Bar Charts
* Line Charts
* Pie Charts
* Scatter Plots
* Maps
* Heatmaps
* Treemaps
* KPI Cards

---

# 🎯 Project Objectives

The main objectives of this Tableau portfolio are to:

* Build strong Tableau fundamentals
* Develop practical data visualization skills
* Learn dashboard development
* Practice calculated fields
* Understand filters and parameters
* Learn LOD expressions
* Practice table calculations
* Improve data storytelling
* Analyze real-world datasets
* Generate meaningful business insights

---

# 💡 Key Learnings

Through these projects, I am gaining practical experience in:

✅ Tableau
✅ Data Visualization
✅ Dashboard Development
✅ Calculated Fields
✅ LOD Expressions
✅ Table Calculations
✅ Filters
✅ Parameters
✅ Data Preparation
✅ Data Analysis
✅ Business Intelligence
✅ Data Storytelling
✅ Insight Generation

---

# 🚀 Future Tableau Projects

I plan to expand this portfolio with projects involving:

* 📊 Sales Analytics
* 💰 Financial Analytics
* 👥 HR Analytics
* 🛒 E-commerce Analytics
* 🚚 Logistics Analytics
* 🏦 Banking Analytics
* 🏥 Healthcare Analytics
* 📈 Customer Analytics
* 🌍 Geographic Analysis
* 📊 Advanced Dashboarding
* 🧠 Advanced LOD Analysis
* ⚡ Advanced Table Calculations

---

# 🔗 Other Portfolio Projects

| Technology  | Focus                                      |
| ----------- | ------------------------------------------ |
| 📉 Tableau  | Data Visualization & Business Intelligence |
| 📊 Power BI | Interactive Dashboards                     |
| 🗄️ SQL     | Database & Data Analysis                   |
| 📊 Excel    | Data Analysis & Dashboards                 |
| 🐍 Python   | Data Analysis & Data Science               |

---

# 🎯 Career Focus

My goal is to build a strong career in **Data Analytics and Data Science** by continuously improving my technical, analytical, visualization, and problem-solving skills.

Tableau is an important part of my learning journey because it helps me transform complex datasets into **interactive visualizations, dashboards, trends, KPIs, and actionable business insights**.

I aim to combine **Tableau, Power BI, SQL, Excel, Python, and Statistics** to solve real-world business problems.

---

# 📬 Connect With Me

🔗 **LinkedIn Profile:** [linkedin.com/in/r-hemant-kumar-patra-654469419](https://www.linkedin.com/in/r-hemant-kumar-patra-654469419/)

🐙 **GitHub:** [R Hemant Kumar Patra](https://github.com/)

---

⭐ **Feel free to explore my Tableau dashboards and visualization projects!**

⭐ **If you find my work useful, please consider giving the repository a star.**

---

### © 2026 R Hemant Kumar Patra

**Tableau Data Visualization Portfolio** 📈📊🚀

**Connect Data • Visualize Insights • Tell Stories**

