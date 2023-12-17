# Part II
use travego;

# a) How many female passengers traveled a minimum distance of 600KMs ?
SELECT gender,COUNT(*) AS passenger_count  FROM passenger WHERE distance >= 600 GROUP BY gender;


# b) Find the minimum tiket price of a sleeper bus.
SELECT MIN(price) AS min_sleeper_price FROM price WHERE bus_type = 'Sleeper';


# c) Select passenger names whose names start with the character 'S'.
SELECT passenger_name FROM passenger WHERE passenger_name LIKE 'S%';

# d) Calculate the price charged for each passenger, displaying the Passengername, BoardingCity, DestinationCity, Bustype, and Price in the output.

select * from passenger;
select * from price;
select passenger.passenger_name,passenger.boarding_city,passenger.destination_city,passenger.bus_type,price.price 
from passenger,price 
where passenger.distance = price.distance;

# e) What are the passengername(s) and the ticket price for those who traveled 1000 KMs Sitting in a bus?

SELECT passenger.passenger_name, price.price AS Ticket_Price
FROM passenger
INNER JOIN price
ON passenger.bus_type = price.bus_type
WHERE passenger.distance = 1000 AND passenger.bus_type = 'Sitting';


# f) What will be the Sitting and Sleeper bus charge for Pallavi to travel from Bangalore to Panaji ?  

select * from passenger where passenger_name = 'Pallavi';
select bus_type,price from price where distance = (select distance from passenger where passenger_name = 'Pallavi');


# g) List the distances from the "Passenger" table which are unique (non-repeated distances) in descending order.  
SELECT DISTINCT distance
FROM passenger
ORDER BY distance DESC;

# h)Display the passenger name and percentage of distance traveled by that passenger from the total distance traveled by all passengers without using user variables.
SELECT passenger_name, (distance * 100.0) / SUM(distance) OVER () AS Percentage_of_Total_Distance
FROM passenger;

