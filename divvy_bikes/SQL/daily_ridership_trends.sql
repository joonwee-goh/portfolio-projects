-- Title: Daily Ridership Trends
-- Description:
--   This query calculates daily ridership counts over the past 12 months,
--   Includes total count as well as by member type ("member" and "casual").
--   It uses Common Table Expressions (CTEs) to create subsets of the dataset.

-- Step 1: Combine relevant columns from the last 12 months of data  
WITH past_12_months AS(
 SELECT day_of_week, member_casual FROM `project-1-458707.Capstone_Divvy.jun_2024_data`
 UNION ALL
 SELECT day_of_week, member_casual FROM `project-1-458707.Capstone_Divvy.jul_2024_data`
 UNION ALL
 SELECT day_of_week, member_casual FROM `project-1-458707.Capstone_Divvy.aug_2024_data`
 UNION ALL
 SELECT day_of_week, member_casual FROM `project-1-458707.Capstone_Divvy.sept_2024_data`
 UNION ALL
 SELECT day_of_week, member_casual FROM `project-1-458707.Capstone_Divvy.oct_2024_data`
 UNION ALL
 SELECT day_of_week, member_casual FROM `project-1-458707.Capstone_Divvy.nov_2024_data`
 UNION ALL
 SELECT day_of_week, member_casual FROM `project-1-458707.Capstone_Divvy.dec_2024_data`
 UNION ALL
 SELECT day_of_week, member_casual FROM `project-1-458707.Capstone_Divvy.jan_2025_data`
 UNION ALL
 SELECT day_of_week, member_casual FROM `project-1-458707.Capstone_Divvy.feb_2025_data`
 UNION ALL
 SELECT day_of_week, member_casual FROM `project-1-458707.Capstone_Divvy.mar_2025_data`
 UNION ALL
 SELECT day_of_week, member_casual FROM `project-1-458707.Capstone_Divvy.apr_2025_data`
 UNION ALL
 SELECT day_of_week, member_casual FROM `project-1-458707.Capstone_Divvy.may_2025_data`
)

-- Step 2: Summarising popular days to ride by user type
-- Also possible to calculate average daily or monthly ridership by dividing counts
SELECT
  day_of_week,
  COUNT(member_casual) AS total_count,
  COUNTIF(member_casual="member") AS member_count,
  COUNTIF(member_casual="casual") AS casual_count
FROM past_12_months

GROUP BY day_of_week
ORDER BY total_count DESC 
-- Also possible to order by member_count or casual_count if needed


