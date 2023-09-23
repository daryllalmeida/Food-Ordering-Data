create database Food;

use Food;

create table Food_App(
order_id int unique primary key, 
customer_id int, 
restaurant_name varchar(100) , cuisine_type varchar(100), 
cost_of_the_order int , day_of_the_week varchar(100), 
rating int , food_preparation_time int, 
delivery_time int);

select *
from Food_App;

/* 1. Find the restaurant that has the fastest food delivery time and food prep time. Return all details of all records. */

SELECT *
FROM FOOD_APP
ORDER BY DELIVERY_TIME,FOOD_PREPARATION_TIME;


/* 2. We want to find the restaurants having the highest rating for American food. Display the records of all such restaurants. */

SELECT *
FROM FOOD_APP
WHERE CUISINE_TYPE = 'AMERICAN' 
ORDER BY RATING DESC;

/* 3. Find the restaurants preparing food in less than or equal to 20 mins. Assign a new column to them called "Quick Prep Restaurant". */

select *,
(
CASE WHEN food_preparation_time <=20 then 'Quick Prep Restaurant' else null end ) as Fast_Prep
from Food_App
where food_preparation_time <= 20


/* 4. Find the 5 star Japanese restaurants open on weekends and weekdays with a delivery time of less than 25 mins. */


select *
from Food_App
Where cuisine_type = 'Japanese' and delivery_time <25;


select restaurant_name,count(restaurant_name)
from Food_App
group by restaurant_name;
