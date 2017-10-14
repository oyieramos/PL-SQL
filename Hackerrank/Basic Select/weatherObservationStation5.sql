-- Query the two cities in STATION with the shortest
-- and longest CITY names, as well as their respective
-- lengths (i.e.: number of characters in the name).
-- If there is more than one smallest or largest city,
-- choose the one that comes first when ordered alphabetically.

select * from (
    select city, length(city) from station order by length(city) asc, city asc limit 1
) temp1
union all
select * from (
    select city, length(city) from station order by length(city) desc, city asc limit 1
) temp2

--learned the length() method
--asc, desc method
--limit method

select * from (
	select city, length(city) from station order by length(city), city limit 1
	) temp1
union all 
select * from (
	select city, length(city) from station order by length(city) desc, city limit 1
	) temp2

--here i learned that order by default is asc