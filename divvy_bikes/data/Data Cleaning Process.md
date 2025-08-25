## Documentation of Cleaning Process

**Cleaning Process**

Used Power Query Editor in Excel to create a data cleaning template to applied it to each month by changing the data source step. This reduces the risk of human error when manually filtering across all 12 files and preserves data integrity. 

**Added**: 

- trip_duration column to calculate the difference between start time and end time of each trip.
- day_of_week column to determine which day of the week the trip was made. Ranges from 1 to 7, with 1 = Monday and 7 = Sunday.

**Removed**:

- Trips shorter than 60 seconds, potential false starts or users trying to re-dock a bike.
- Trips longer than 24 hours, considered lost or stolen as per Divvy’s user policy.
- Duplicates in ride_id column, ensuring every row is unique.

**Changed**:

- Exported clean worksheets into a .CSV file for data import into BigQuery (SQL) for further manipulation.

**Applied Steps In Power Query**
<img width="1919" height="626" alt="image" src="https://github.com/user-attachments/assets/ef5de8b7-754e-47af-9b85-934cb469876e" />

