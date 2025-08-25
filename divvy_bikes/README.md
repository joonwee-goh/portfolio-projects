<img width="300" height="85" alt="image" src="https://github.com/user-attachments/assets/64931e28-781c-4467-9a44-12fd6bedefa7" />

# Divvy Bikes

### 📁 Overview
This folder contains materials created for my Google Data Analytics capstone project. It documents my thought process throughout the phases of data cleaning, using SQL to query the database system, and finally presenting the insights through data visualisations in Tableau.

- **Business Task:** Identify historical trends on how annual members and casual riders use Divvy bikes differently, in order to support Divvy Bikes overarching strategy of converting casual users (Single-ride pass and Full-day pass) to annual members
- Dataset used: Divvy bike-sharing data, loaded into Google BigQuery for SQL analysis  

---

### 📂 Data Sources
As several months of the original data files exceed GitHub's 100mb file limit, I have provided a truncated sample dataset limited to the first 500 rows for each month.

- **Source:** [Divvy System Data Portal](https://divvybikes.com/system-data)
- **Description:** This dataset contains data from trips made using Divvy bike-sharing system in Chicago. It includes columns such as ride start/end times, station locations, rider types, and more.
- **Date Range Used:** June 2024 - May 2025
- **Raw Data:** [`12month_raw_dataset.csv`](data/12month_raw_dataset.csv)  
- **Cleaned Data:** [`12month_clean_dataset.csv`](data/12month_clean_dataset.csv)  
- **Cleaning Summary:** Added new columns for further analysis, removed duplicates and entries that do not meet Divvy's user policy. 

---

### 🔧 Tools & Technologies

- **Data Cleaning:**  Excel (Power Query)   
- **Analysis:** Google BigQuery (SQL)
- **Visualization:** Tableau 

---

### 📈 Key Insights

- 📌 **Weekends Are The Most Popular Days For Casual Users**
  -  On the contrary, weekends are the least popular days for Members suggesting members mainly use Divvy on their commute to work
  
- 📌 **Ridership Dropped By 83% Between September And January**
  -   This is likely due to the cold weather, with casual users seeing the most reduction in rides, indicating casual users are more sensitive to changes in weather patterns than members

- 📌 **Top 10 Stations For Members Are Clustered In The City Centre**
  -   These stations are located close to transit hubs or school campuses, compared to popular stations for casual users located along the coast line and have recreational areas nearby. This supports the hypothesis that members primarily use the service for their commute to work.

See the [full analysis](SQL/00_Full Analysis and Recommendations.md) and SQL queries in [SQL folder](SQL)

---

### 🖥️ Tableau Dashboard

🔗 View interactive dashboard: [Tableau Public Link](https://public.tableau.com/app/profile/joon.wee.goh/viz/GoogleCapstone-Divvy/CasualUsersDashboard)

📸 Dashboard Preview Screenshot:

<img width="520" height="400" alt="image" src="https://github.com/user-attachments/assets/7000f511-688a-46dd-8f18-cf1d483683f6" />


---

### 💡 What I Learned

- Applied skills in data cleaning on a real, large-scale dataset
- Improved on creating data visualisations in Tableau
- Structuring queries to answer business tasks
- Recognised first hand how subconscious biases can affect the data analysis process  

---

### ✅ Next Steps

- Learn how to use Python with Pandas library to effectively work with big datasets
- Continue to develop my skills in SQL and Tableau

