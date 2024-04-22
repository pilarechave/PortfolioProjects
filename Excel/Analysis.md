# Problem Statement
The management of a pizza place seeks to gain comprehensive insights into their sales data from the past year in order to optimize operations, enhance customer satisfaction, and increase revenue.

# Goal of the Analysis
The primary objective is to conduct a thorough analysis of the dataset to address the following key questions:
- Monthly trends in the number of distinct orders placed
- Distribution of orders throughout the week
- Distribution of orders throughout the day
- Distribution of ordered pizzas by category
- Identification of best and worst selling pizzas
- Total orders placed, revenue generated, and pizzas sold
By addressing these objectives, the pizza place aims to make data-driven decisions to enhance menu offerings, marketing strategies, and overall business performance.

# Data Source
For this project, I have used the dataset “Pizza Place Sales” by Mysar Ahmad Bhat, which comprises four interconnected tables:

## Orders
It contains information about each order received at the pizza place. Fields include order_id (unique identifier for each order), date (date the order was placed), and time (time the order was placed).

## Order Details
Stores detailed information about the pizzas ordered within each order. Fields include order_details_id (unique identifier for each pizza within an order), order_id (foreign key linking to the Orders table), pizza_id (foreign key linking to the Pizzas table), and quantity (quantity of pizzas ordered).

## Pizzas
Provides details about each type of pizza offered by the pizza place. Fields include pizza_id (unique identifier for each pizza), pizza_type_id (foreign key linking to the Pizza Types table), size (size of the pizza), and price (price of the pizza in USD).

## Pizza Types
Contains information about the broader categories of pizzas offered. Fields include pizza_type_id (unique identifier for each pizza type), name (name of the pizza as shown in the menu), category (category that the pizza falls under in the menu), and ingredients (comma-delimited list of ingredients used in the pizza).

# File Preparation
Since the dataset consisted on four CSV files, the following steps were followed to prepare the excel file:

## Data Import
The CSV files with the data for each table were imported into Excel by navigating to the “Data” tab, selecting “From Text/CSV,” and choosing the respective CSV file and the correct delimiter.

## Data Cleanup and Formatting
Once the data was imported into Excel, an exploratory analysis was made to evaluate the following:
- Format (especially, dates and numbers)
- Duplicates
- Incomplete data
- Sheet Organization
To facilitate analysis, relevant data from the different tables was combined in the sheet “Data” using the XLOOKUP function, ‘weekday’ was added using a TEXT function, and ‘sale’ was calculated using ‘price’ times ‘quantity.
The table’s outcome after cleaning and manipulation has 11 columns and 48,620 rows.

# Data exploration

***What is the monthly trend in the number of distinct orders placed?***

- **Monthly Order Volume Trends:** July stands out as the month with the highest count of distinct orders (1935), indicating a peak in demand. Conversely, October and September show lower counts of distinct orders (1646 and 1661, respectively).

***What is the distribution of orders throughout the week?***

- **Order Volume Variation by Weekday:** Fridays have the highest count of distinct orders (3538), indicating that it is likely the busiest day for the pizza place. Thursdays also show a high order count (3239), suggesting that it is another popular day for ordering pizza. Mondays have the lowest count of distinct orders (2794), indicating a potential slower start to the week compared to other days.
- **Weekend Trends:** Saturdays (3158) have a slightly lower order count compared to Fridays and Thursdays but are still among the busier days of the week. Sundays (2624) have the lowest order count among the weekdays, indicating a trend of decreased pizza consumption compared to other days of the week.

***What is the distribution of orders throughout the day?***

- **Peak Order Hours:** The data reveals a clear peak in order volume during the lunch hours, particularly around noon (12:00 PM) and early afternoon.
- **Afternoon and Evening Trends:** Order volume remains relatively high throughout the afternoon and early evening hours, with substantial counts of distinct orders recorded between 2:00 PM and 6:00 PM.
- **Dinner Rush:** The data also highlights a significant increase in order volume during the dinner hours, peaking around 6:00 PM to 8:00 PM.
- **Late-Night Orders:** The volume drops significantly after 9:00 PM, with only a few orders recorded in the later hours.

***What is the distribution of pizza orders by category?***

- **Most Popular Pizza Category:** The “Classic” category has the highest total quantity of orders, with a sum of 14,888 units.

***Key Performance Indicators (KPIs)***

- Several KPIs were identified to evaluate business performance, including best and worst selling pizzas, total orders placed, revenue generated, and pizzas sold.

# Creation of dashboards
The pizza project dashboard offers a visual snapshot of crucial pizza sales information, presenting key data and insights in a straightforward and clear format. It’s designed to simplify the complexity of sales data, enabling stakeholders to make informed decisions without being overwhelmed by details. The user-friendly interface facilitates effortless exploration of various pizza sales metrics, providing valuable insights with minimal effort.

The dashboard has three tabs, which can be accessed to from the icons in the left navigation bar

## Dashboard
The first tab is the dashboard itself. It includes the following information:

- Relevant KPIs
- Charts that show the distribution of orders per month, weekday and hour
- Distribution per category
- Favourite and least favourite pizza
All charts can be filtered by using the period slicer.

## Data
The second tab is the dataset used for the analysis, after clean-up and manipulation.

## About
The third tab of the dashboard includes information about the dataset and some preliminary conclusions.

# Conclusions

## Sales Performance Analysis
Overall, the pizza place has experienced consistent sales throughout the year, with peak demand observed in July. However, there are fluctuations in sales volume across different months and days of the week, indicating the need for targeted strategies to optimize sales during slower periods.

## Pizza Type and Size Preferences
The “Classic” category emerges as the most popular among customers, accounting for the highest quantity of orders. This suggests a strong preference for traditional pizza options, highlighting the importance of maintaining a diverse menu while catering to customer preferences.

## Customer Behavior
Analysis of customer ordering patterns reveals distinct peaks during lunch and dinner hours, indicating common meal times for pizza consumption. Understanding these trends can inform staffing schedules, inventory management, and promotional efforts to maximize sales during peak hours.
