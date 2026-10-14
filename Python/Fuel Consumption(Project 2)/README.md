# 🚗 Fuel Consumption & CO₂ Emissions Analysis

## 📌 Project Overview

This project performs an **Exploratory Data Analysis (EDA)** of vehicle fuel consumption and CO₂ emissions.

The analysis focuses on understanding how **engine size, cylinder count, fuel type, vehicle class, fuel consumption, fuel efficiency, and manufacturer** influence vehicle performance and environmental impact.

The main objective is to identify meaningful patterns and relationships between **fuel efficiency and CO₂ emissions** and present the findings through clear data visualizations.

---

## 🎯 Objectives

- Analyze vehicle fuel consumption patterns
- Understand the relationship between engine size and CO₂ emissions
- Compare fuel efficiency across different fuel types
- Analyze fuel efficiency across vehicle classes
- Compare CO₂ emissions across manufacturers
- Identify factors strongly associated with CO₂ emissions
- Explore the relationship between MPG and CO₂ emissions
- Extract actionable insights from the dataset

---

## 📊 Dataset

The dataset contains **1,067 vehicle records and 13 features**.

### Dataset Features

| Column | Description |
|---|---|
| `MODELYEAR` | Vehicle model year |
| `MAKE` | Vehicle manufacturer |
| `MODEL` | Vehicle model |
| `VEHICLECLASS` | Vehicle category |
| `ENGINESIZE` | Engine displacement in litres |
| `CYLINDERS` | Number of cylinders |
| `TRANSMISSION` | Transmission type |
| `FUELTYPE` | Type of fuel |
| `FUELCONSUMPTION_CITY` | City fuel consumption |
| `FUELCONSUMPTION_HWY` | Highway fuel consumption |
| `FUELCONSUMPTION_COMB` | Combined fuel consumption |
| `FUELCONSUMPTION_COMB_MPG` | Combined fuel efficiency |
| `CO2EMISSIONS` | CO₂ emissions in g/km |

The dataset includes **39 manufacturers, 16 vehicle classes, and 4 fuel types**.

---

## 🛠️ Technologies & Libraries

- 🐍 Python
- 🐼 Pandas
- 🔢 NumPy
- 📊 Matplotlib
- 📈 Seaborn
- 📓 Jupyter Notebook

### Libraries Used

```python
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns
```

The notebook uses Pandas for data analysis, NumPy for numerical operations, Matplotlib for visualization, and Seaborn for statistical visualization.

---

## 🔄 Project Workflow

```text
Dataset
   ↓
Data Loading
   ↓
Data Understanding
   ↓
Data Cleaning & Validation
   ↓
Missing Value Analysis
   ↓
Duplicate Check
   ↓
Data Type Validation
   ↓
Exploratory Data Analysis
   ↓
Statistical Analysis
   ↓
Data Visualization
   ↓
Correlation Analysis
   ↓
Manufacturer & Fuel Analysis
   ↓
Key Insights
   ↓
Conclusion
```

---

## 🧹 Data Cleaning & Validation

The dataset was checked for:

- Missing values
- Duplicate records
- Data types
- Unique values
- Numerical statistics
- Categorical distributions

### Missing Values

No missing values were found in the dataset, so no missing-value imputation was required.

### Duplicate Records

Duplicate records were checked to ensure that vehicle records were not unnecessarily repeated.

### Data Types

Numerical and categorical columns were validated to ensure they were appropriate for analysis.

---

## 📈 Exploratory Data Analysis

The project analyzes:

### 1. CO₂ Emissions Distribution

A histogram was used to understand the distribution of CO₂ emissions across vehicles.

**Insight:** Most vehicles fall within the middle range of CO₂ emissions, while a smaller number of vehicles have substantially higher emission levels.

---

### 2. Engine Size Distribution

The engine-size distribution shows that most vehicles are concentrated around smaller and medium engine sizes, with relatively few vehicles having very large engines.

**Key Insight:**

- Most vehicles fall approximately within the **1.5–3.5 L** range.
- The distribution is right-skewed.
- Engines above **6.0 L** are relatively rare.
- The largest engines are generally associated with high-performance or heavy-duty vehicles.

---

### 3. Fuel Type Analysis

The project compares the distribution of vehicles across different fuel types.

The dataset is dominated by gasoline-powered vehicles, with regular gasoline (`X`) and premium gasoline (`Z`) making up the majority of records.

---

### 4. Fuel Efficiency by Vehicle Class

Vehicle classes were compared using average MPG.

**Key Findings:**

- **COMPACT** vehicles have the highest average efficiency at approximately **31.15 MPG**.
- **STATION WAGON - SMALL** follows at approximately **30.86 MPG**.
- **MID-SIZE** vehicles average approximately **30.33 MPG**.
- **VAN - PASSENGER** has the lowest efficiency at approximately **14.20 MPG**.
- Larger vehicles such as vans and trucks generally have lower fuel efficiency.

---

### 5. Fuel Consumption by Vehicle Class

The analysis compares combined fuel consumption across vehicle classes.

**Key Findings:**

- Passenger vans have the highest fuel consumption at approximately **20.3 L/100 km**.
- Cargo vans and standard pickup trucks also have relatively high consumption.
- Compact and mid-size vehicles are among the most fuel-efficient categories.
- Larger commercial and utility vehicles can consume more than twice as much fuel as compact passenger vehicles.

---

### 6. CO₂ Emissions by Vehicle Class

The project uses visualization to compare emissions across vehicle categories.

**Key Findings:**

- Passenger vans are among the highest-emitting vehicle classes.
- Compact and smaller passenger vehicles generally have lower emissions.
- Larger SUVs, trucks, and vans show higher emission levels.
- Some vehicle categories show high variation because they contain vehicles with different powertrain and performance characteristics.

---

## 🔥 Fuel Type Analysis

Fuel types were compared based on both fuel efficiency and CO₂ emissions.

### Average Fuel Efficiency

| Fuel Type | Approx. Average MPG |
|---|---:|
| Diesel (`D`) | 34.5 |
| Regular Gasoline (`X`) | 28.7 |
| Premium Gasoline (`Z`) | 25.3 |
| Ethanol/E85 (`E`) | 16.0 |

Diesel has the highest average MPG in this dataset, while Ethanol/E85 has the lowest.
