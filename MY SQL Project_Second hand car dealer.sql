use cars;
-- Read Data --
Select * from cars.car_dekho;
-- Total Cars: to get a count of total records --
select count(*) from cars.car_dekho;
-- The manager asked the employee how many cars will be avilable in 2023 --
select count(*) from cars.car_dekho where year=2023;
-- The manager asked the employee how many cars will be avilable in 2020,2021,2023 --
select count(*) from cars.car_dekho where year=2020; #74
select count(*) from cars.car_dekho where year=2021; #7
select count(*) from cars.car_dekho where year=2022; #7
-- Group by --
select count(*) from cars.car_dekho where year in (2020,2021,2022) group by year;
-- clint asked me to print the total of all cars by year I don't see all the details. --
select year,count(*) from cars.car_dekho group by year;
-- clint asked to car delear agent how many diesel cars will there be in 2020 --
select count(*) from car_dekho where year = 2020  and fuel ='Diesel';
-- clint requesed to delear agent how many petrol cars will there be in 2020 --
select count(*) from car_dekho where year = 2020  and fuel ='Petrol';
-- The manager told the employee to give print all the fuel cars (Petrol, diesel) and CNG come by all year -- 
SELECT year, count(*) from car_dekho where fuel = 'petrol' group by year;
SELECT year, count(*) from car_dekho where fuel = 'Diesel' group by year;
SELECT year, count(*) from car_dekho where fuel = 'CNG' group by year;
-- Manager said there were more than 100 cars in a given year, which year had more than 100 cars --
Select year,count(*) from car_dekho group by year having count(*)>100;
-- The manager said the employee all cars count details between 2015 to 2023; we need a complete list --
select count(*) from car_dekho where year between 2015 and 2023;
select * from car_dekho where year between 2015 and 2023;




