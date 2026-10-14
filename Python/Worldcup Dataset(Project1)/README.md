# 🏏 ICC Cricket World Cup (1975–2019) Historical Analysis

A data analysis and exploratory visualization project examining 454 historical ICC Cricket World Cup matches from 1975 to 2019. This project investigates scoring trends across tournament eras, the structural advantage of batting first, match outcome distributions, and historical team dominance.

---

## 📌 Project Overview

This project cleans, models, and explores comprehensive match-level records from men's ODI World Cup history. By engineering clean quantitative features out of unstructured text scores and multi-format dates, the analysis tracks how ODI cricket evolved from low-scoring defensive encounters into modern high-volatility 300+ run shootouts[cite: 1].

### Key Questions Explored:
1. Does batting first provide a measurable scoring advantage across World Cup tournaments[cite: 1]?
2. How have target scores and chasing dynamics evolved from 1975 to 2019[cite: 1]?
3. What is the typical "par score" distribution in tournament history[cite: 1]?
4. How evenly are World Cup matches split between target defending (wins by runs) and target chasing (wins by wickets)[cite: 1]?
5. Which national sides hold historical dominance in total tournament wins[cite: 1]?

---

## 📊 Key Insights & Findings

* **Batting First Advantage:** Teams batting first (Team 1) outscore chasing teams (Team 2) by an average buffer of **30 to 50 runs** across every single World Cup tournament[cite: 1].
* **The 275+ Run Chasing Ceiling:** When Team 1 posts **275+ runs**, chasing sides face steep required run-rate pressure and frequently succumb to middle-order collapses[cite: 1].
* **Evolution of ODI Scoring:** 
  * **Low Periods (1979 & 1999–2003):** Scoring averaged below 200 in 1979, with chasing totals dropping to an all-time low (~170 runs) around 1999–2003[cite: 1].
  * **Post-2003 Surge:** Average first-innings totals climbed aggressively from ~220 to **over 270 runs** by 2015–2019, driven by modern fielding restrictions and batting powerplays[cite: 1].
* **Historical Tournament Par:** Over **60% of all World Cup matches** produced first-innings scores between **180 and 280 runs**, with the single most frequent tournament par total centering at **240–260 runs**[cite: 1].
* **Balanced Match Outcomes:** Match results are split nearly down the middle: **51.8% won by runs** (defending) vs. **48.2% won by wickets** (chasing), proving historical conditions have maintained fairness for toss decisions[cite: 1].
* **Tournament Hierarchy:** **Australia** is the undisputed leader with nearly **70 match wins** (~15 wins ahead of any rival)[cite: 1]. **New Zealand (~54 wins)** and **India (~53 wins)** lead the chasing pack, closely followed by **England (~48)** and **Pakistan (~45)**[cite: 1].

---

## 🛠️ Data Cleaning & Pipeline

The raw dataset (`worldcup dataset.csv`, 454 rows × 15 columns) required substantial preprocessing due to mixed date formats and concatenated string values[cite: 1]:

1. **Date Standardization:** Extracted multi-day date strings (e.g., `'June 13 - 15, 1979'` $\to$ `'June 13, 1979'`) using regex and parsed heterogeneous date styles into `datetime64[ns]`[cite: 1].
2. **Score Extraction:** Extracted numeric total runs from string columns containing wicket details (e.g., `'311 for 8'` $\to$ `311`) and cast to nullable integer types (`Int64`)[cite: 1].
3. **Margin Parsing:** Extracted integer victory margins from text fields and imputed missing margin values[cite: 1].
4. **Targeted Imputation:** 
   * Missing team scores imputed using team-specific median values[cite: 1].
   * Categorical conditions (e.g., `winning_condition`) imputed using mode distribution[cite: 1].
   * Extracted clean four-digit years for tournament seasons[cite: 1].

---

## 📈 Visualizations Included

| Visualization | Focus / Chart Type | Key Takeaway |
| :--- | :--- | :--- |
| **Score Trends Across Eras** | Line Plot (`seaborn.lineplot`)[cite: 1] | First-innings buffer holds steady across all eras; massive upward trajectory post-2003[cite: 1]. |
| **Team 1 vs. Team 2 Scores** | Scatter Plot (`seaborn.scatterplot`)[cite: 1] | Chasing points hug the $y=x$ parity line; target-defending wins fan out widely below the line[cite: 1]. |
| **Tournament Match Leaders** | Bar Plot (`seaborn.barplot`)[cite: 1] | Australia's commanding tournament lead over New Zealand, India, and England[cite: 1]. |
| **Score Distribution** | Histogram + KDE (`seaborn.histplot`)[cite: 1] | Normal distribution peaking between 240–260 runs[cite: 1]. |
| **Win Outcome Split** | Donut / Pie Chart (`matplotlib.pyplot.pie`)[cite: 1] | 51.8% runs vs. 48.2% wickets balance[cite: 1]. |
| **Win Margin Spread** | Box Plot (`seaborn.boxplot`)[cite: 1] | High outlier spread in run victories (up to 200+ runs) vs. tight wicket margins (median 5–6 wickets)[cite: 1]. |

---

## 📁 Repository Structure

```text
├── Worldcup project.ipynb   # Complete data cleaning, preprocessing, and EDA notebook
├── worldcup dataset.csv     # Raw historical match-level World Cup dataset
├── README.md                # Project documentation and summary
└── requirements.txt         # Python package dependencies
