# 🐍 Python Data Science Portfolio

Welcome to my **Python Data Science Portfolio**! 🚀

This repository showcases my practical work in **Python programming, data analysis, data cleaning, exploratory data analysis (EDA), data visualization, and problem-solving** using real-world datasets.

The projects are primarily developed using **Jupyter Notebook** and demonstrate how Python can be used to transform raw data into meaningful insights.

---

## 👨‍💻 About Me

### **R Hemant Kumar Patra**

🎓 BCA | Berhampur University
📍 Bhubaneswar, India
🎯 Data Science Aspirant

I am building my career in **Data Science** through hands-on learning and practical projects.

Currently, I am developing my skills in:

**Python | SQL | Excel | Power BI | Tableau | Statistics | Probability | Generative AI**

My focus is on solving real-world problems, analyzing data, creating visualizations, and continuously improving my technical skills.

---

# 🛠️ Skills & Technologies

## 🐍 Python Programming

* Python Fundamentals
* Variables & Data Types
* Operators
* Conditional Statements
* Loops
* Functions
* Lists
* Tuples
* Sets
* Dictionaries
* Strings
* List Comprehension
* Exception Handling
* File Handling
* Object-Oriented Programming

---

## 📊 Data Science & Data Analysis

* NumPy
* Pandas
* Data Cleaning
* Data Preprocessing
* Exploratory Data Analysis (EDA)
* Data Transformation
* Statistical Analysis
* Descriptive Statistics
* Correlation Analysis
* Outlier Detection
* Feature Creation
* Pattern Identification
* Insight Generation

---

## 📈 Data Visualization

* Matplotlib
* Seaborn
* Bar Charts
* Line Charts
* Pie Charts
* Histograms
* Scatter Plots
* Box Plots
* Heatmaps
* Distribution Visualization
* Comparative Analysis

---

## 🧰 Tools & Development Environment

* Jupyter Notebook
* Google Colab
* VS Code
* Git
* GitHub

---

# 📂 Python Projects

This repository contains practical Python projects designed to strengthen my programming and data analysis skills.

Each project includes:

* Dataset
* Jupyter Notebook
* Data Cleaning
* Data Analysis
* Visualizations
* Key Insights
* Conclusion
* Project Documentation

---

# 📊 Project Workflow

The projects in this repository generally follow the following workflow:

```text
Raw Dataset
     ↓
Data Loading
     ↓
Data Understanding
     ↓
Data Cleaning
     ↓
Data Preprocessing
     ↓
Exploratory Data Analysis
     ↓
Data Visualization
     ↓
Pattern Identification
     ↓
Insight Generation
     ↓
Conclusion
```

---

# 🧹 Data Cleaning

Python and Pandas are used to prepare raw datasets for analysis.

### Key Data Cleaning Activities

* Handling missing values
* Removing duplicate records
* Correcting data types
* Renaming columns
* Filtering records
* Handling inconsistent values
* Detecting invalid data
* Creating new columns
* Removing unnecessary columns
* Preparing analysis-ready datasets

Example:

```python
import pandas as pd

df = pd.read_csv("data.csv")

print(df.head())
print(df.info())
print(df.isnull().sum())
```

---

# 🔎 Exploratory Data Analysis

Exploratory Data Analysis is performed to understand the structure, patterns, relationships, and characteristics of the dataset.

### EDA Includes

* Dataset overview
* Descriptive statistics
* Missing value analysis
* Category-wise analysis
* Numerical analysis
* Trend analysis
* Correlation analysis
* Outlier identification
* Comparative analysis

Example:

```python
print(df.describe())

print(df["Category"].value_counts())

print(df.groupby("Category")["Sales"].sum())
```

---

# 📈 Data Visualization

Visualizations are created to communicate data-driven insights effectively.

### Visualizations Used

* 📊 Bar Charts
* 📈 Line Charts
* 🥧 Pie Charts
* 📉 Histograms
* 🔵 Scatter Plots
* 📦 Box Plots
* 🔥 Heatmaps

Example:

```python
import matplotlib.pyplot as plt

df.groupby("Category")["Sales"].sum().plot(kind="bar")

plt.title("Sales by Category")
plt.xlabel("Category")
plt.ylabel("Sales")
plt.show()
```

---

# 💻 Python Concepts Practiced

## 🔹 Variables

```python
name = "Python"
year = 2026

print(name)
print(year)
```

---

## 🔹 Conditional Statements

```python
year = 2026

if year >= 2026:
    print("Learning Data Science")
else:
    print("Keep Learning")
```

---

## 🔹 Functions

```python
def calculate_total(values):
    return sum(values)

total = calculate_total([100, 200, 300])

print(total)
```

---

## 🔹 Lists

```python
numbers = [10, 20, 30, 40, 50]

print(numbers)
print(numbers[0])
```

---

## 🔹 Dictionaries

```python
student = {
    "name": "Hemant",
    "course": "BCA",
    "goal": "Data Scientist"
}

print(student["name"])
```

---

## 🔹 Pandas

```python
import pandas as pd

df = pd.read_csv("data.csv")

print(df.head())
print(df.info())
print(df.describe())
```

---

## 🔹 GroupBy Analysis

```python
summary = df.groupby("Category")["Sales"].sum()

print(summary)
```

---

# 🐍 Python Libraries

| Library             | Purpose                      |
| ------------------- | ---------------------------- |
| 🐼 Pandas           | Data Manipulation & Analysis |
| 🔢 NumPy            | Numerical Computing          |
| 📈 Matplotlib       | Data Visualization           |
| 📊 Seaborn          | Statistical Visualization    |
| 📓 Jupyter Notebook | Interactive Data Analysis    |

---

# 🎯 Project Objectives

The main objectives of this portfolio are to:

* Build strong Python fundamentals
* Improve programming and problem-solving skills
* Learn data cleaning techniques
* Perform exploratory data analysis
* Understand datasets
* Create meaningful visualizations
* Identify trends and patterns
* Generate data-driven insights
* Solve practical data problems
* Build a professional Data Science portfolio

---

# 💡 Key Learnings

Through these projects, I am developing hands-on experience in:

✅ Python Programming
✅ Pandas & NumPy
✅ Data Cleaning
✅ Data Preprocessing
✅ Exploratory Data Analysis
✅ Data Visualization
✅ Statistical Analysis
✅ Problem Solving
✅ Data Storytelling
✅ Working with Real-World Datasets

---

# 📁 Repository Structure

```text
Python-Portfolio/
│
├── README.md
│
├── Python-Basics/
│   ├── python_basics.ipynb
│   ├── variables.ipynb
│   ├── conditions.ipynb
│   ├── loops.ipynb
│   ├── functions.ipynb
│   ├── lists.ipynb
│   ├── dictionaries.ipynb
│   └── strings.ipynb
│
├── Python-Practice/
│   ├── practice_questions.ipynb
│   ├── solutions.ipynb
│   └── README.md
│
├── Project-1/
│   ├── project.ipynb
│   ├── dataset.csv
│   └── README.md
│
├── Project-2/
│   ├── project.ipynb
│   ├── dataset.csv
│   └── README.md
│
├── Data-Analysis/
│   ├── data_cleaning.ipynb
│   ├── exploratory_data_analysis.ipynb
│   └── visualization.ipynb
│
└── datasets/
    └── sample-data.csv
```

---

# 📚 Python Practice

This repository also contains Python practice questions covering different levels.

### Topics Covered

* Variables
* Data Types
* Strings
* Operators
* Conditional Statements
* Loops
* Lists
* Tuples
* Sets
* Dictionaries
* Functions
* Exception Handling
* File Handling
* Object-Oriented Programming
* NumPy
* Pandas
* Data Analysis

The practice section helps strengthen Python fundamentals before working on advanced Data Science projects.

---

# 📊 Data Analysis Examples

### Category-wise Sales

```python
category_sales = df.groupby("Category")["Sales"].sum()

print(category_sales)
```

### Average Sales

```python
average_sales = df["Sales"].mean()

print(average_sales)
```

### Maximum Sales

```python
maximum_sales = df["Sales"].max()

print(maximum_sales)
```

### Minimum Sales

```python
minimum_sales = df["Sales"].min()

print(minimum_sales)
```

---

# 🔬 Statistical Analysis

Statistical techniques are used to understand the dataset and identify meaningful patterns.

### Areas Practiced

* Mean
* Median
* Mode
* Minimum
* Maximum
* Standard Deviation
* Variance
* Percentiles
* Correlation
* Distribution Analysis

Example:

```python
print(df["Sales"].mean())
print(df["Sales"].median())
print(df["Sales"].std())
```

---

# 📌 Key Focus Areas

My Python portfolio focuses on:

```text
Python Programming
        ↓
Data Manipulation
        ↓
Data Cleaning
        ↓
Exploratory Data Analysis
        ↓
Statistical Analysis
        ↓
Data Visualization
        ↓
Business Insights
        ↓
Data Science
```

---

# 🚀 Future Projects

I plan to expand this repository with projects involving:

* 🤖 Machine Learning
* 📊 Advanced Data Analysis
* 🧠 Predictive Modeling
* 🐍 Advanced Python
* 🗄️ SQL Analytics
* 📈 Power BI
* 📉 Tableau
* 📐 Advanced Statistics
* ☁️ Data Science Tools
* 🤖 Generative AI

---

# 🔗 Other Portfolio Projects

| Technology  | Focus                      |
| ----------- | -------------------------- |
| 🐍 Python   | Data Science & Analysis    |
| 🗄️ SQL     | Database & Data Analysis   |
| 📊 Excel    | Data Analysis & Dashboards |
| 📈 Power BI | Business Intelligence      |
| 📉 Tableau  | Data Visualization         |

---

# 🎯 Career Focus

My career goal is to become a **Data Scientist** by continuously improving my technical knowledge and applying it to real-world problems.

I am currently focusing on:

**Python → Statistics → Data Analysis → Machine Learning → Data Science**

I believe that consistent practice, practical projects, and continuous learning are the keys to becoming a strong Data Science professional.

---

# 📬 Connect With Me

### 💼 LinkedIn

[**R Hemant Kumar Patra**](https://www.linkedin.com/in/r-hemant-kumar-patra-654469419/)

### 🐙 GitHub

[**R Hemant Kumar Patra**](https://github.com/)

---

# ⭐ Support

If you find this repository useful or interesting, please consider:

⭐ **Star this repository**

🍴 **Fork the repository**

📢 **Share it with others interested in Python and Data Science**

---

# 📌 About This Repository

This repository is continuously updated as I learn new Python concepts, complete new projects, and develop my Data Science skills.

More projects, analysis notebooks, datasets, and practical exercises will be added regularly.

---

### © 2026 R Hemant Kumar Patra

**Python Data Science Portfolio** 🐍📊🚀

**Keep Learning • Keep Practicing • Keep Building**
