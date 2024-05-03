# SQL ANALYSIS OF UDEMY DATA: INSIGHTS INTO POPULARITY AND ENGAGEMENT

## INTRODUCTION

In this project, I analyze a dataset from the online learning platform Udemy that includes comprehensive details on over 200,000 courses. The focus is on identifying trends in course popularity and engagement, using advanced SQL queries to delve into aspects such as subscriber numbers and the relative popularity of free vs. paid courses.

## DATA

The dataset obtained from [Kaggle](https://www.kaggle.com/datasets/hossaingh/udemy-courses?select=Course_info.csv) contains detailed information on all available Udemy courses as of October 10, 2022. It includes various attributes for each course, such as title, subscription status (paid or free), subscriber numbers, instructor details, and more.

## DATASET PREPARATION

The dataset was first examined for completeness and accuracy. Key preparatory steps included:

-**Initial Data Examination**: The structure and completeness of the dataset were assessed, including counting rows and checking data types.
-**Missing Values**: Missing values in critical fields were identified and rows with incomplete data were removed to maintain analysis integrity.
-**Calculated Fields**: Developed a new metric, engagement_rate, calculated as the sum of reviews and comments normalized by subscriber numbers, to quantitatively assess course engagement.

## SQL ANALYSIS

Utilized advanced SQL queries to analyze the data, focusing on:

-**Exploratory Queries**: Basic queries to understand the distribution of data and identify top and bottom performers.
-**Aggregation and Ranking**: Determined the most popular and engaged courses and assessed category popularity based on subscriber averages.
-**Complex Queries**: Used subqueries for detailed comparisons and UNION to contrast free and paid courses, offering insights into different consumer behaviors.

## RESULTS

### Top Courses by Popularity and Engagement:

I identified the courses with the highest subscriber counts and engagement rates from the dataset.

### Category Insights:

The analysis revealed that certain categories consistently attract more subscribers.
'Development' is the most popular, with courses such as "Java Tutorial for Complete Beginners" and "2022 Complete Python Bootcamp From Zero to Hero in Python" leading in subscriber numbers.

### Comparative Analysis

The juxtaposition of free vs. paid courses provided critical insights into consumer behavior.
Free courses generally show higher initial subscriber numbers, reflecting the lower barrier to entry and appeal to a broader audience. However, paid courses, while attracting fewer initial subscribers, tend to have comparable engagement rates, suggesting that users who commit financially are just as engaged, if not more so, likely reflecting a serious commitment to learning.

For instance, paid courses like "Simple Strategy for Swing Trading the Stock Market" have achieved high engagement despite the entry cost, indicating that content quality and course reputation are significant factors for engagement.

## CONCLUSION

This SQL-based analysis provided deep insights into what drives learner engagement and popularity on Udemy. The findings can assist course creators and platform administrators in optimizing content and strategies to enhance educational outcomes and learner satisfaction.

