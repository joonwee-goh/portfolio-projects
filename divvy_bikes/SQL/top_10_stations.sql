-- Title: Top 10 Stations
-- Description:
--   This query lists out the top 10 most popular start stations for casual users, 
--   it can easily be customised to filter by member type ("member" vs "casual") or station type ("starting point" vs "ending point").
--   It uses Common Table Expressions (CTEs) to create subsets of the dataset.
 
-- Step 1: Combine relevant columns from the last 12 months of data
WITH past_12_mth_data AS(
 SELECT start_station_name, start_station_id, start_lat, start_lng, member_casual FROM `project-1-458707.Capstone_Divvy.jul_2024_data`
 UNION ALL
 SELECT start_station_name, start_station_id, start_lat, start_lng, member_casual FROM `project-1-458707.Capstone_Divvy.aug_2024_data`
 UNION ALL
 SELECT start_station_name, start_station_id, start_lat, start_lng, member_casual FROM `project-1-458707.Capstone_Divvy.sept_2024_data`
 UNION ALL
 SELECT start_station_name, start_station_id, start_lat, start_lng, member_casual FROM `project-1-458707.Capstone_Divvy.oct_2024_data`
 UNION ALL
 SELECT start_station_name, start_station_id, start_lat, start_lng, member_casual FROM `project-1-458707.Capstone_Divvy.nov_2024_data`
 UNION ALL
 SELECT start_station_name, start_station_id, start_lat, start_lng, member_casual FROM `project-1-458707.Capstone_Divvy.dec_2024_data`
 UNION ALL
 SELECT start_station_name, start_station_id, start_lat, start_lng, member_casual FROM `project-1-458707.Capstone_Divvy.jan_2025_data`
 UNION ALL
 SELECT start_station_name, start_station_id, start_lat, start_lng, member_casual FROM `project-1-458707.Capstone_Divvy.feb_2025_data`
 UNION ALL
 SELECT start_station_name, start_station_id, start_lat, start_lng, member_casual FROM `project-1-458707.Capstone_Divvy.mar_2025_data`
 UNION ALL
 SELECT start_station_name, start_station_id, start_lat, start_lng, member_casual FROM `project-1-458707.Capstone_Divvy.apr_2025_data`
 UNION ALL
 SELECT start_station_name, start_station_id, start_lat, start_lng, member_casual FROM `project-1-458707.Capstone_Divvy.may_2025_data`
) 
  
-- Popular end stations can be pulled by changing column names to end instead (e.g. end_station_name, end_station_id)

SELECT
  start_station_name,
  start_station_id,
  start_lat,
  start_lng,
  COUNT(start_station_name) AS count_of_starting_point
 FROM past_12_mth_data
 WHERE member_casual = "casual" 
  -- Member data can be pulled by changing member_casual = "member"
 GROUP BY start_station_name, start_station_id, start_lat, start_lng
 ORDER BY COUNT(start_station_name) DESC
 LIMIT 10
  -- Possible to display more stations if required
