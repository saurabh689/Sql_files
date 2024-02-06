SELECT * FROM car_dekho_project.car_dekhoo;

use car_dekho_project;

# Description of table:
desc car_dekhoo;

#2.Total Cars: to get a count of total records.
select count(*) from car_dekhoo;
# 7927 Total cars are present

#3. Count of cars for 2023
select count(*) from car_dekhoo where year = 2023;
# 6 cars

#4. Manager asked the employee how many cars are available  in 2020,2021 and 2022
select count(*) from car_dekhoo where year in(2020,2021,2023);

# 5.Client suggested to print all the cars by year for clear analysis.
select count(year),year from car_dekhoo group by year;

#6. Client asked to car dealer agent  how many diesel cars will be there in 2020?
select count(*) from car_dekhoo where year = 2020 and fuel = "Diesel";
#20 Diesel cars

#Client requested the number how many petrol cars will be there in 2020?
select count(*) from car_dekhoo where year = 2020 and fuel = "Petrol";



#Print all type of fuel cars (Petrol, Diesel and CNG) come by all year.
select  count(*), year 
from car_dekhoo 
where fuel in ("Petrol", "Diesel", "CNG") 
group by year;

#Manager said there were more than 100 cars in a given year, which year had more than 100 cars?
select year, count(*) 
from car_dekhoo 
group by year 
having count(*)>100;

#10.Manager asked employee to count all cars details between 2015 and 2023 in a list format.
select count(*) 
from car_dekhoo 
where year between 2015 and 2023 ;

# top 5 expensive sell cars
select * from car_dekhoo 
order by selling_price desc
limit 5;

# highest selling cars
select count(*), name  
from car_dekhoo 
group by Name
order by count(*) desc;

# Print all the details of car between 2015 and 2023
select * from car_dekhoo where year between 2015 and 2023 ;