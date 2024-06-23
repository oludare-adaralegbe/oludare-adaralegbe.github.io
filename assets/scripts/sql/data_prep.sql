/*

# DATA PREP STEPS
1. Clean up the Data: remove irrelevant columns by only keeping the ones needed.
2. Grab the Channel Names: extract channel name from 'NOMBRE' column.
3. Clearer Labels: give new names to the columns.

*/

-- creating SQL view to include only the columns and rows that are relevant and permitted for the users.
CREATE VIEW view_uk_youtubers_2024 AS

SELECT
	CAST(SUBSTRING(NOMBRE, 1, CHARINDEX('@', NOMBRE)-1) AS VARCHAR(100)) AS Channel_name,
	Subscribers,
	Views,
	Total_videos,
	Total_likes,
	Total_comments,
	Channel_category,
	Channel_target_audience
FROM 
	top_uk_youtubers_2024