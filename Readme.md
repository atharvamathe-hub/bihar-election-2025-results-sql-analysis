# 🗳️ Bihar Results Elections 2025 — SQL Analytics Project

## 📌 Project Overview

This project presents a comprehensive SQL-based analysis of the **Bihar Results Elections 2025 results dataset**, transforming raw constituency-level election data into meaningful analytical insights.

The objective is to simulate how a data analyst would work with real-world public data to uncover patterns in voting behavior, party performance, electoral competitiveness, and NOTA influence.

This project demonstrates strong SQL skills, analytical thinking, and the ability to extract insights from structured data.

---

## 🎯 Project Objectives

The analysis focuses on answering key questions such as:

- Who won each constituency?
- What were the winning and losing margins?
- Which constituencies had the closest contests?
- Which parties performed the strongest?
- What is the vote share distribution across parties?
- Did NOTA votes impact election outcomes?
- What would results look like without postal votes?

---

## 📂 Dataset Information

**Dataset:** Bihar Polls 2025  
**Source:** Kaggle  
**Link:**  
https://www.kaggle.com/datasets/etqadahmadkhan/bihar-polls-2025

### Dataset Description

This dataset contains complete results from the **Bihar Results Elections 2025**, covering all **243 constituencies**.

Each row represents a candidate’s performance in a constituency and includes:

- Constituency number & name  
- Candidate name  
- Party affiliation  
- EVM votes  
- Postal votes  
- Total votes received  
- Vote percentage  

The dataset includes major parties, minor parties, independents, and NOTA votes.

---

## 🛠 Tools & Technologies Used

- SQL Server Management Studio (SSMS)
- T-SQL
- Window Functions
- Common Table Expressions (CTEs)
- Aggregations & Ranking
- Analytical Query Design

---

## 🏗 Project Structure

``` bihar-election-sql-analysis/
│
├── raw_dataset/
│ ├── election_data.csv
│ └── README.md
│
├── sql_analysis/
│ ├── basic_analysis.sql
│ ├── intermediate_analysis.sql
│ ├── advanced_analysis.sql
│ └── README.md
│
└── README.md ← (This file)
```


---

## 🔍 Analysis Approach

### 1️⃣ Data Understanding
- Explored dataset structure and fields
- Interpreted business context of election data
- Validated vote-related columns

### 2️⃣ Data Exploration
Initial analysis focused on:

- Total constituencies
- Candidate distribution
- Party participation
- Vote totals per constituency

### 3️⃣ Core SQL Analysis

The project is structured across three levels:

#### 🔹 Basic Analysis
- Total constituencies
- Candidate listing
- Party-wise candidate count
- Total votes per constituency
- Top candidates by vote count

#### 🔹 Intermediate Analysis
- Winner identification using ranking
- Winning margin calculation
- Closest contests detection
- Party vote share analysis
- Postal vs EVM vote comparison

#### 🔹 Advanced Analysis
- Party performance (constituencies won)
- Stronghold constituency identification
- NOTA vote analysis
- NOTA vs winning margin impact
- Hypothetical winners based on EVM-only votes

---

## 📊 Key Insights Generated

### 🏆 Constituency Winners
Used SQL window functions to determine the highest-vote candidate in each constituency.

### 📉 Competitive Seats
Identified constituencies with very small winning margins, highlighting close contests.

### 🏛 Party Performance
Analyzed:
- Number of constituencies won
- Vote share contribution
- Party dominance patterns

### 🗳 NOTA Impact Analysis
Examined:
- NOTA vote counts
- NOTA percentage per constituency
- Cases where NOTA votes exceeded the winning margin

This helps assess potential voter dissatisfaction trends.

---

## 📈 Skills Demonstrated

This project highlights the ability to:

- Write complex SQL queries
- Use window functions for ranking & comparisons
- Perform margin and vote-share calculations
- Translate raw data into meaningful insights
- Structure a real-world analytical case study
- Apply business-style analytical thinking

---

## 🚀 Future Enhancements

Potential next steps:

- Python-based Exploratory Data Analysis (EDA)
- Visualization dashboards using Power BI / Tableau
- Comparative analysis with previous election years
- Geographic mapping of party dominance

---

## 📚 Business Value of the Analysis

This project shows how election data can be used to:

- Understand political competition intensity
- Identify stronghold regions for parties
- Analyze voter behavior patterns
- Study the impact of NOTA voting
- Support political research and reporting

---

## 👤 Author

**Atharva Mathe**  

GitHub: https://github.com/atharvamathe-hub 

LinkedIn: https://www.linkedin.com/in/atharva-shyam-mathe-054a50323/

---

## 📜 Disclaimer

This dataset is publicly available on Kaggle and used strictly for:

- Educational purposes  
- Portfolio development  
- Analytical practice  

All credit belongs to the original dataset creator and the Election Commission of India for the source data.
