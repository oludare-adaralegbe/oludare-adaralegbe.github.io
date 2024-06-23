/*

1. Define any variables needed for calculations
2. Create a Common Table Expression (CTE) to encapsulate the logic for calculating rounded average views per video
3. Select only the necessary columns for efficiency and clarity and create calculated columns based on existing ones
4. Filter the results by the YouTube channels with the highest subscriber bases
5. Order the final results based on net profit in descending order

*/


-- Step 1
DECLARE @conversionRate FLOAT = 0.02; -- the conversion rate at 2%
DECLARE @productCost MONEY = 5.0; -- the product cost at $5
DECLARE @campaignCost MONEY = 50000.0; -- the campaign cost at $50,000


-- Step 2
WITH ChannelData AS (
	SELECT
		Channel_name,
		Views,
		Total_videos,
		ROUND((CAST(Views AS FLOAT) / Total_videos), -4) AS rounded_avg_views_per_video
	FROM
		youtube_db.dbo.view_uk_youtubers_2024
)

-- Step 3
SELECT
	Channel_name,
	rounded_avg_views_per_video,
	rounded_avg_views_per_video * @conversionRate AS pot_units_sold_per_video,
	(rounded_avg_views_per_video * @conversionRate * @productCost) AS pot_rev_per_video,
	(rounded_avg_views_per_video * @conversionRate * @productCost) - @campaignCost AS net_profit 
FROM 
	ChannelData

-- Step 4
WHERE Channel_name IN ('NoCopyrightSounds', 'DanTDM', 'Dan Rhodes')

-- Step 5
ORDER BY
	net_profit DESC