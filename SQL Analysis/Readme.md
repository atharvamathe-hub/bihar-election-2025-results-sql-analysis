# 🗳️ Bihar Elections Result 2025 — SQL Data Analysis Project

## 📌 Project Overview

This project presents a comprehensive SQL-based analysis of the **Bihar Assembly Elections 2025 dataset**, focusing on constituency-level outcomes, party performance, voting patterns, and NOTA (None of the Above) impact.

The objective of this project is to demonstrate real-world data analysis skills using SQL by transforming raw election data into meaningful insights that could support political analysts, researchers, and media professionals.

---

## 🎯 Business Objective

Election data is highly complex and rich in insights. This project aims to answer critical analytical questions such as:

- Who won each constituency?
- What were the winning and losing margins?
- Which parties performed the strongest?
- Which constituencies had the closest contests?
- Did NOTA votes influence results?
- What patterns can be observed in vote distribution?

This analysis simulates how a data analyst would work with public datasets to extract decision-support insights.

---

## 📂 Dataset Information

**Dataset Name:** Bihar Polls 2025  
**Source:** Kaggle  
**Link:**  
https://www.kaggle.com/datasets/etqadahmadkhan/bihar-polls-2025

### Dataset Description
The dataset contains detailed constituency-level election results including:

- Constituency details
- Candidate names
- Political party affiliations
- EVM votes
- Postal votes
- Total votes received
- Vote percentage

Each row represents a candidate contesting from a constituency.

---

## 🛠 Tools & Technologies Used

- SQL Server Management Studio (SSMS)
- SQL (T-SQL)
- Aggregations
- Window Functions
- CTEs (Common Table Expressions)
- Ranking functions (ROW_NUMBER)
- Analytical problem solving

---

## 🏗 Project Structure

### 1️⃣ Data Understanding
- Examined dataset structure and fields
- Understood business meaning of each column
- Validated vote-related columns

### 2️⃣ Data Exploration
Initial queries focused on understanding:

- Total number of constituencies
- Candidate participation
- Party representation
- Vote distributions

### 3️⃣ Core SQL Analysis

The project is divided into three analytical levels:

#### 🔹 Basic Analysis
- Total constituencies
- Candidate distribution
- Party-wise candidate count
- Total votes per constituency
- Top candidates by votes

#### 🔹 Intermediate Analysis
- Winner identification per constituency
- Winning margin calculation
- Closest contests
- Party vote share
- Postal vs EVM vote comparison

#### 🔹 Advanced Analysis
- Party performance (seats won)
- Stronghold constituencies
- NOTA vote analysis
- NOTA vs winning margin impact
- Hypothetical winners (EVM-only scenario)

---

## 📊 Key Insights Generated

### 🏆 Constituency Winners
Used ranking functions to identify the top candidate in each constituency based on total votes.

### 📉 Close Contests
Identified constituencies where winning margins were extremely small, indicating competitive races.

### 🏛 Party Performance
Analyzed:
- Number of seats won
- Vote share distribution
- Regional strength patterns

### 🗳 NOTA Impact
Evaluated:
- NOTA vote counts
- NOTA vote percentage
- Cases where NOTA votes exceeded the winning margin

This helps understand voter dissatisfaction trends.

---

## 📁 SQL Analysis Coverage

The SQL queries were designed to answer 15+ analytical questions covering:

- Electoral competitiveness
- Vote distribution patterns
- Party dominance
- Candidate performance
- Margin-based insights

---

## 📈 Skills Demonstrated

This project highlights strong capabilities in:

- SQL querying & data aggregation
- Analytical thinking
- Window functions & ranking logic
- Data storytelling
- Translating raw data into insights
- Structuring a real-world case study

---

## 🚀 Future Enhancements

Potential next steps for this project:

- Python-based Exploratory Data Analysis (EDA)
- Visualization dashboards (Power BI/Tableau)
- Comparative analysis with past election results
- Geographic mapping of party dominance

---

## 👤 Author

**Atharva Mathe**  

GitHub: https://github.com/atharvamathe-hub 

LinkedIn: https://www.linkedin.com/in/atharva-shyam-mathe-054a50323/

---

## 📜 Disclaimer

This dataset is publicly available on Kaggle and is used strictly for:
- Educational purposes
- Portfolio development
- Data analysis practice

All credit belongs to the original dataset contributors.
