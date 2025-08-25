-- Title: Trip Duration by User Types
-- Description:
--   This query groups trip durations made over the past 12 months,
--   broken down by member type ("member" vs "casual") using Divvy bike data.
--   It uses Common Table Expressions (CTEs) to create subsets of the dataset.

-- Step 1: Combine relevant columns from the last 12 months of data
## Create CTE to work with a subset table, only drawing relevant columns from datasets
WITH past_12_months AS (
 SELECT trip_duration, member_casual FROM `project-1-458707.Capstone_Divvy.jun_2024_data`
 UNION ALL
 SELECT trip_duration, member_casual FROM `project-1-458707.Capstone_Divvy.jul_2024_data`
 UNION ALL
 SELECT trip_duration, member_casual FROM `project-1-458707.Capstone_Divvy.aug_2024_data`
 UNION ALL
 SELECT trip_duration, member_casual FROM `project-1-458707.Capstone_Divvy.sept_2024_data`
 UNION ALL
 SELECT trip_duration, member_casual FROM `project-1-458707.Capstone_Divvy.oct_2024_data`
 UNION ALL
 SELECT trip_duration, member_casual FROM `project-1-458707.Capstone_Divvy.nov_2024_data`
 UNION ALL
 SELECT trip_duration, member_casual FROM `project-1-458707.Capstone_Divvy.dec_2024_data`
 UNION ALL
 SELECT trip_duration, member_casual FROM `project-1-458707.Capstone_Divvy.jan_2025_data`
 UNION ALL
 SELECT trip_duration, member_casual FROM `project-1-458707.Capstone_Divvy.feb_2025_data`
 UNION ALL
 SELECT trip_duration, member_casual FROM `project-1-458707.Capstone_Divvy.mar_2025_data`
 UNION ALL
 SELECT trip_duration, member_casual FROM `project-1-458707.Capstone_Divvy.apr_2025_data`
 UNION ALL
 SELECT trip_duration, member_casual FROM `project-1-458707.Capstone_Divvy.may_2025_data`
)

-- Step 2: Create summary statistics to show trip duration distribution, separated by user type
-- Case statements used to create groups based on usage brackets
SELECT
  CASE 
    WHEN trip_duration < "00:30:00" THEN "Less than 0.5 hour"
    WHEN trip_duration < "01:00:00" THEN "Less than 1 hour"
    WHEN trip_duration < "02:00:00" THEN "Less than 2 hour"
    ELSE "More than 2 hour"
    END AS usage_categories,
  COUNT(trip_duration) AS total_count,
  COUNTIF(member_casual = 'member') AS member_count,
  COUNTIF(member_casual = 'casual') AS casual_count,

FROM past_12_months
GROUP BY usage_categories
ORDER BY usage_categories ASC
