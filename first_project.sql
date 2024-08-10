select nationality_name,AVG(overall) as overall_average_nation
from fifa_22
group by nationality_name;

select avg(age),league_name from fifa_22
group by league_name;


alter table fifa_22
add best_attackers int 
update fifa_22 set best_attackers= (shooting+dribbling+passing)/3
select short_name,best_attackers from fifa_22
order by best_attackers desc
limit 10;

alter table fifa_22
add age_group varchar(50)
update fifa_22
set age_group='wonderkids'
where age<24;
set age_group='wonderkids'
where 24<=age<=30;
update fifa_22
set age_group='oldies'
where age>30;

select avg(pace),age_group from fifa_22
group by age_group;