<img width="300" height="175" alt="image" src="https://github.com/user-attachments/assets/d5e4e086-34c1-41a2-9a57-c0de5c11c3c3" />

## Google Fiber Project

### 📁 Overview
This folder contains materials creeated for my Google Business Intelligence capstone project. It documents my thought process of creating an effective BI dashboard by first understanding stakeholder requirements for the project, analysing the data set provided and culminating in building a dashboard that not only answers stakeholder questions but also empowers them to to make data-driven decisions in the long term. 

- **Business Task:** Improve customer experience by exploring reasons behind repeated customer calls to Google Fiber's customer service team, in support of the customer service team's aim of increasing first-call resolution for all customers across the 3 markets.
- Dataset used: Fictitious dataset provided by the course, loaded into Excel for compilation then exported to Tableau.

---

### 📂 Data Sources
- **Source:** Provided by Google Business Intelligence course.
- **Description:** The 3 data sets contain data for each of the 3 markets that Google Fiber services. It records the daily call center volume, tracking the number of repeat callers for each of the problem type customers encountered.   
- **Date Range Used:** January 2022 - March 2023
- **Raw Data:** [`12month_raw_dataset.csv`](data/12month_raw_dataset.csv)  


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

See the [full analysis](SQL/00_Full_Analysis_and_Recommendations.md) and SQL queries in [SQL folder](SQL)

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
