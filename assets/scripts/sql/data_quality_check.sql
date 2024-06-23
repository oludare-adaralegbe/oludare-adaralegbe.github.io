/*

# DATA QUALITY TESTS

1. Row Count Validation: the total number of records in the dataset must be 100.			--- Passed!
2. Column Count Validation: the number of columns in the dataset must be 8 fields.			--- Passed!
3. Data Type Validation: the channel name, channel category, channel target audience columns 
must be string; engagement rate must be float and other numeric fields must be integers.	--- Passed!
4. Uniqueness Validation: each record must be unique in the dataset.						--- Passed!


# Row Count - 100
# Column Count - 8

# Data Types
channel name = STRING
channel category = STRING
channel target audience = STRING
engagement rate = FLOAT
other numeric fields = INTEGER

# Duplicates - 0

*/


-- 1. Row count validation
SELECT
	COUNT(*) AS row_count
FROM
	view_uk_youtubers_2024



-- 2. Column count validation
SELECT
	COUNT(*) AS column_count
FROM
	INFORMATION_SCHEMA.COLUMNS
WHERE
	TABLE_NAME = 'view_uk_youtubers_2024'



-- 3. Data type validation
SELECT
	COLUMN_NAME,
	DATA_TYPE
FROM
	INFORMATION_SCHEMA.COLUMNS
WHERE
	TABLE_NAME = 'view_uk_youtubers_2024'



-- 4. Uniqueness validation
SELECT
	Channel_name,
	COUNT(*) AS duplicate_count
FROM
	view_uk_youtubers_2024
GROUP BY
	Channel_name
HAVING
	COUNT(*) > 1
