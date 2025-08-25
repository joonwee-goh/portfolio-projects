<img width="300" height="85" alt="image" src="https://github.com/user-attachments/assets/64931e28-781c-4467-9a44-12fd6bedefa7" />

# 📊 [Divvy Bikes]

### 📁 Overview
This folder contains materials created for my Google Data Analytics capstone project. It documents my thought process throughout the phases of data cleaning, using SQL to query the relational database system (used BigQuery), and finally presenting the insights through data visualisations in Tableau.  
- Business Task: Identify historical trends on how annual members and casual riders use Divvy bikes differently, in order to support Divvy Bikes overarching strategy of converting casual users (Single-ride pass and Full-day pass) to annual members
- Dataset used: Divvy bike-sharing data (https://divvybikes.com/system-data), loaded into Google BigQuery for SQL analysis  
- Tools & technologies: Excel, SQL, Tableau  

---

### 📂 Data Sources
As several months of the original data files exceed GitHub's 100mb file limit, I have provided a truncated sample dataset limited to the first 500 rows for each month.

- **Source:** [Divvy System Data Portal](https://divvybikes.com/system-data)
- **Raw Data:** [`12month_raw_dataset.csv`](divvy_bikes/data)  
- **Cleaned Data:** [`12month_clean_dataset.csv`](divvy_bikes/data)  
- **Cleaning Summary:** Added new columns for further analysis, removed duplicates and entries that do not meet Divvy's user policy. 

---

### 🔧 Tools & Technologies

- **Data Cleaning:**  Excel (Power Query)   
- **Analysis:** SQL 
- **Visualization:** Tableau   
- **Reporting:** PDF Executive Summary

---

### 📈 Key Insights

- 📌 Insight 1: [Ridership dropped by 83% between September and January due to cold weather ]
- 📌 Insight 2: [Casual users accounted for 32% of total trips over the past 12 months]
- 📌 Insight 3: [Weekends are the most popular days for Casual users]

---

### 🖥️ Tableau Dashboard

🔗 View interactive dashboard: [Tableau Public Link](https://public.tableau.com/app/profile/joon.wee.goh/viz/GoogleCapstone-Divvy/CasualUsersDashboard)

📸 Screenshot:
![Dashboard Preview](<img width="1154" height="888" alt="image" src="https://github.com/user-attachments/assets/7000f511-688a-46dd-8f18-cf1d483683f6" />
)

---

### 📄 Executive Summary

Download the full 1-page summary:  
📎 [`executive_summary.pdf`](summary/executive_summary.pdf)

---

### 💡 What I Learned

- Improved skills in data wrangling using pandas
- Learned how to design dashboards focused on KPIs
- Practiced creating business-facing summaries

---

### ✅ Next Steps

- Explore predictive modeling using the same dataset
- Deploy dashboard to Power BI Service for real-time use

