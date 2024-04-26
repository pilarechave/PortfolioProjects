# Exploratory Analysis of Online Course Data

## Introduction

In today's digital age, online education has emerged as a cornerstone of learning, offering a diverse array of courses that cover a wide range of topics. This project embarks on an exploratory journey to unravel  underlying trends, pricing patterns, and educational insights embedded within the data.

## Data

The dataset obtained from [Kaggle](https://www.kaggle.com/datasets/hossaingh/udemy-courses?select=Course_info.csv) contains detailed information on all available Udemy courses on October 10, 2022, which was collected by web scraping the Udemy website.

### Characteristics of the dataset
The dataset contains information about various attributes related to Udemy courses.
- **Attributes**: The dataset includes attributes such as course titles, descriptions, pricing, ratings, number of subscribers, number of lectures, duration, category, subcategory, language, URLs, instructor names, and instructor URLs.
- **Numeric and Textual Data**: The dataset comprises both numeric data, such as pricing, ratings, subscriber counts, and textual data, such as titles, descriptions, and instructor names.
- **Categorical Information**: Categorical attributes like category, subcategory, and language provide additional insights into the nature and classification of the courses.
- **Temporal Information**: Attributes like published time and last update date might offer temporal insights into the lifecycle of the courses.
- **Instructor Details**: Information about instructors, including their names and URLs, allows for exploration of course offerings by specific instructors.

## SQL Skills

Here's a description highlighting the SQL skills demonstrated in the provided queries:

### Data Retrieval Skills
The queries demonstrate proficiency in retrieving data from a relational database using SELECT statements and the ability to access metadata about the database structure, such as column names and data types, using INFORMATION_SCHEMA views.

### Aggregation and Statistical Analysis
The queries include aggregation functions (MIN, MAX, AVG, COUNT) to calculate basic statistics such as minimum, maximum, average, and counts. They showcase the ability to summarize and analyze numerical data, such as course prices and number of subscribers.

### Filtering and Conditional Logic
The queries utilize WHERE clauses to filter data based on specific conditions and they demonstrate the use of CASE statements for conditional logic, such as categorizing courses as paid or free based on the value of the 'is_paid' column.

### Subqueries and Data Comparison
Subqueries are employed to compare data against aggregated values, such as finding courses with the highest and lowest number of subscribers. They showcase the ability to nest queries within other queries to perform more complex analyses.

### Temporal Analysis
The queries extract and manipulate temporal data, such as parsing year and month from date/time columns (published_time, last_update_date). They demonstrate the ability to analyze trends over time, such as the number of courses published and updated per year and month.

### Grouping and Group-Level Analysis:
The queries utilize GROUP BY clauses to group data based on certain attributes, such as category, language, or publication year/month. They showcase the ability to perform group-level analysis, such as counting the number of courses in each category or language.

### Sorting and Ordering Results
The queries utilize ORDER BY clauses to sort results based on specific columns. They demonstrate the ability to present data in a structured and organized manner.

### Union and Set Operations
The queries use UNION to combine the results of multiple queries into a single result set, such as combining counts of courses with minimum and maximum prices.
They showcase the ability to perform set operations to manipulate and combine data from different sources.

Overall, these queries showcase a range of SQL skills, including data retrieval, aggregation, filtering, conditional logic, subqueries, temporal analysis, grouping, sorting, and set operations, which are essential for conducting exploratory data analysis and deriving meaningful insights from relational databases.


