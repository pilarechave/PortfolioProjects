-- DATA PREPARATION

-- Counting registers and exploring columns

SELECT COUNT(*) AS Count_of_Rows
FROM Course_info;

SELECT TOP 5 *
FROM Course_info;

-- Retrieve column names and types

SELECT column_name, data_type
FROM INFORMATION_SCHEMA.COLUMNS;

-- CHECKING FOR MISSING VALUES AND DELETING THOSE ROWS

-- Count rows with any missing headline, instructor or update date information in specified columns

SELECT
    COUNT(CASE WHEN headline IS NULL THEN 1 END) AS Missing_Headline,
    COUNT(CASE WHEN instructor_name IS NULL THEN 1 END) AS Missing_Instructor_Name,
    COUNT(CASE WHEN last_update_date IS NULL THEN 1 END) AS Missing_Last_UpdateDate
FROM Course_info;

-- Delete rows where any of these important fields are null

DELETE FROM Course_info
WHERE headline IS NULL OR instructor_name IS NULL OR last_update_date IS NULL;

-- CREATING CALCULATED FIELDS

-- Calculate engagement rate based on reviews:
-- Add the number of reviews to the number of comments and then divide the sum by the number of subscribers
-- (unless the number of subscribers is zero, in which case the result is NULL).

ALTER TABLE Course_info
ADD engagement_rate AS 
    (CAST(num_reviews AS FLOAT) + CAST(num_comments AS FLOAT)) / NULLIF(num_subscribers, 0);

-- EXPLORATORY ANALYSIS

-- Most popular courses

SELECT TOP 10 title, num_subscribers, category
FROM Course_info
ORDER BY num_subscribers DESC;

-- Most Engaged Courses

SELECT TOP 10 title, ROUND(engagement_rate, 2) AS engagement_rate_rounded, category
FROM Course_info
ORDER BY engagement_rate DESC;

-- Category Popularity

SELECT TOP 10 category, ROUND(AVG(num_subscribers), 2) AS avg_subscribers
FROM Course_info
GROUP BY category
ORDER BY avg_subscribers DESC;

SELECT TOP 10 title, category, num_subscribers
FROM Course_info
WHERE category = 'Development'
ORDER BY num_subscribers DESC;

SELECT category, COUNT(*) AS num_courses
FROM Course_info
GROUP BY category
ORDER BY num_courses DESC;

-- Top Rated Courses

SELECT TOP 10 title, avg_rating, num_subscribers, num_reviews
FROM Course_info
WHERE avg_rating > 4.5
ORDER BY num_subscribers DESC;

-- Courses with min and max num_subscribers

SELECT *
FROM Course_info
WHERE num_subscribers = (SELECT MAX(num_subscribers) FROM Course_info);

SELECT *
FROM Course_info
WHERE num_subscribers = (SELECT MIN(num_subscribers) FROM Course_info WHERE num_subscribers > 0);

-- Select top 5 free and paid courses by num_subscribers

SELECT * FROM
(
    SELECT TOP 5 title, round(engagement_rate,2) as engagement_rate, num_subscribers, 'Free' AS Course_Type
    FROM Course_info
    WHERE is_paid = 0
    
    UNION ALL
    
    SELECT TOP 5 title, round(engagement_rate,2) as engagement_rate, num_subscribers, 'Paid' AS Course_Type
    FROM Course_info
    WHERE is_paid = 1
) AS CombinedResults
ORDER BY num_subscribers DESC;
