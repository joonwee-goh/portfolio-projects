-- Title: 12-Month Ridership Trends
-- Description:
--   This query calculates total ride counts over the past 12 months,
--   broken down by member type ("member" vs "casual") using Divvy bike data.
--   It uses Common Table Expressions (CTEs) to create subsets of the dataset.

-- Step 1: Combine relevant columns from the last 12 months of data
WITH past_12_months AS (
  SELECT ride_id, member_casual FROM `project-1-458707.Capstone_Divvy.jun_2024_data`
  UNION ALL
  SELECT ride_id, member_casual FROM `project-1-458707.Capstone_Divvy.jul_2024_data`
  UNION ALL
  SELECT ride_id, member_casual FROM `project-1-458707.Capstone_Divvy.aug_2024_data`
  UNION ALL
  SELECT ride_id, member_casual FROM `project-1-458707.Capstone_Divvy.sept_2024_data`
  UNION ALL
  SELECT ride_id, member_casual FROM `project-1-458707.Capstone_Divvy.oct_2024_data`
  UNION ALL
  SELECT ride_id, member_casual FROM `project-1-458707.Capstone_Divvy.nov_2024_data`
  UNION ALL
  SELECT ride_id, member_casual FROM `project-1-458707.Capstone_Divvy.dec_2024_data`
  UNION ALL
  SELECT ride_id, member_casual FROM `project-1-458707.Capstone_Divvy.jan_2025_data`
  UNION ALL
  SELECT ride_id, member_casual FROM `project-1-458707.Capstone_Divvy.feb_2025_data`
  UNION ALL
  SELECT ride_id, member_casual FROM `project-1-458707.Capstone_Divvy.mar_2025_data`
  UNION ALL
  SELECT ride_id, member_casual FROM `project-1-458707.Capstone_Divvy.apr_2025_data`
  UNION ALL
  SELECT ride_id, member_casual FROM `project-1-458707.Capstone_Divvy.may_2025_data`
),

-- Step 2: Count trips by rider type based on CTE above
trip_counts AS (
  SELECT
    COUNTIF(member_casual = "member") AS Member_trips,
    COUNTIF(member_casual = "casual") AS Casual_trips,
    COUNT(ride_id) AS Past_12_Months_Total_Trips
  FROM past_12_months
)

-- Step 3: Calculate percentage distribution by rider type
SELECT
  trip_counts.Past_12_Months_Total_Trips,
  trip_counts.Member_trips,
  trip_counts.Casual_trips,
  ROUND((trip_counts.Member_trips / trip_counts.Past_12_Months_Total_Trips) * 100, 2) AS Percentage_of_Members,
  ROUND((trip_counts.Casual_trips / trip_counts.Past_12_Months_Total_Trips) * 100, 2) AS Percentage_of_Casual
FROM trip_counts;
