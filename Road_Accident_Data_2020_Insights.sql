create database Road_Accident_Data;
use Road_Accident_Data;

show tables;

select * 
from accidents_data;

#Total Accidents
select sum(Count)
from accidents_data;

#Accident affected Cities
select distinct Million_Plus_Cities
from accidents_data;

#Top 10 Highest Accidents in Cities
select Million_Plus_Cities,sum(Count)
from accidents_data 
group by Million_Plus_Cities
order by sum(Count) desc
limit 10;

# Top 3 Cities with minimum accidents
select Million_Plus_Cities,sum(count)
from accidents_data
group by Million_Plus_Cities
order by sum(count) asc
limit 3;

#Common Cause of accidents by category
select Cause_category,count(Cause_category)
from accidents_data
group by Cause_category;

#Total Accidents happened by category
select Cause_category,sum(Count)
from accidents_data
group by Cause_category;

#Total accidents by outcomes of incidents
select Outcome_of_Incident,sum(Count)
from accidents_data
group by Outcome_of_Incident;

#Total Accidents by Sub-category
select Cause_Subcategory,sum(Count) 
from accidents_data
group by Cause_Subcategory
order by sum(Count) desc;

#Average of accidents by cities
select Million_Plus_Cities,avg(Count)
from accidents_data
group by Million_Plus_Cities;