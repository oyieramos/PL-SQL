-- Query the list of CITY names from STATION
-- that either do not start with vowels
-- or do not end with vowels.
-- Your result cannot contain duplicates.

select distinct city from station 
where   left(city, 1) not in ('a', 'e', 'i', 'o', 'u')
	or right(city, 1) not in ('a', 'e', 'i', 'o', 'u')

select distinct city from station
where city rlike '^[^aeiou]|[^aeiou]$'