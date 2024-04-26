-- EXPLORATORY DATA ANALYSIS

-- Retrieve column names and types

select column_name, data_type
from INFORMATION_SCHEMA.COLUMNS

-- Calculate basic statistics for price column

--- Calculate min, max and avg price

select 
    min(price) as min_price,
    max(price) as max_price,
    round(avg(price),2) as avg_price
from Course_info
where is_paid = 1 and content_length_min <> 0

--- Breakdown of the number of courses in each payment status category (Paid or Free)

select count(*) as num_courses, 
    case when is_paid = 1 then 'Paid' else 'Free' end as payment_status
from Course_info
group by case when is_paid = 1 then 'Paid' else 'Free' end

--- Explore which courses cost 1 (min), and count them

select id, title, course_url
from Course_info
where price = 1 and content_length_min <> 0

select id, title, course_url
from Course_info
where price = 1 and content_length_min = 0

select count(id)
from Course_info
where price = 1 and content_length_min <> 0

--- Explore which courses cost 9999 (max), and count them

select count(id)
from Course_info
where price = 9999 

select count(id) as quantity, '0 mins' as duration
from Course_info
where price = 9999 and content_length_min = 0
UNION
select count(id), 'longer than 0 mins'
from Course_info
where price = 9999 and content_length_min <> 0

select id, title, course_url
from Course_info
where price = 9999 and content_length_min <> 0

select id, title, course_url
from Course_info
where price = 9999 and content_length_min = 0

-- Calculate basic statistics for num_subscribers column

--- Calculate min, max and avg num_subscribers

select 
    min(num_subscribers) as min_subscribers,
    max(num_subscribers) as max_subscribers,
    round(avg(num_subscribers),0) as avg_subscribers
from Course_info

select count(id)
from Course_info
where num_subscribers = 0

select count(id)
from Course_info
where num_subscribers = 0 and content_length_min = 0

--- Explore courses with min and max num_subscribers

select *
from Course_info
where num_subscribers =
	(select max(num_subscribers)
	from Course_info)

select *
from Course_info
where num_subscribers =
	(select min(num_subscribers)
	from Course_info
	where num_subscribers <>0) 

select language, count (*) as num_courses, sum(num_subscribers) as total_subscribers
from Course_info
group by language
order by num_courses, total_subscribers


-- Calculate basic statistics for content_length_min column

--- Calculate min, max and avg duration

select 
    min(content_length_min) as min_duration,
    max(content_length_min) as max_duration,
    round(avg(content_length_min),2) as avg_duration
from Course_info

select count(id)
from Course_info
where content_length_min = 0

-- Analyze trends over time for published/updated courses

--- Extract year and month from published_time

select 
    year(published_time) as pub_year,
    month(published_time) as pub_month,
    count(*) as num_courses_published
from Course_info
group by year(published_time), month(published_time)
order by pub_year, pub_month

select 
    year(published_time) as pub_year,
    count(*) as num_courses_published
from Course_info
group by year(published_time)
order by pub_year

select 
    month(published_time) as pub_month,
    count(*) as num_courses_published
from Course_info
group by month(published_time)
order by pub_month

--- Extract year and month from 

select 
    year(last_update_date) as update_year,
    month(last_update_date) as update_month,
    count(*) as num_courses_updated
from Course_info
where last_update_date is not null
group by year(last_update_date), month(last_update_date)
order by update_year, update_month

select count(*)
from Course_info
where last_update_date is null

select 
    year(last_update_date) as update_year,
    count(*) as num_courses_updated
from Course_info
where last_update_date is not null
group by year(last_update_date)
order by update_year

select 
	month(last_update_date) as update_month,
	count(*) as num_courses_updated
from Course_info
where last_update_date is not null
group by month(last_update_date)
order by update_month

-- Category, topic and language analysis

select category, count(*) as num_courses
from Course_info
group by category
order by num_courses

select category, count(distinct subcategory) as num_subcategories
from Course_info
group by category
order by num_subcategories

select category, subcategory, count(*) as num_courses
from Course_info
group by category, subcategory
order by category, num_courses, subcategory

select language, count(*) as num_courses
from Course_info
group by language
order by num_courses

select topic, count(*) as num_courses
from Course_info
group by topic
order by num_courses

select language, count(*) as num_courses
from Course_info 
group by language
having count(*) > 1000
