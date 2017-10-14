-- Query the list of CITY names from STATION
-- that do not start with vowels.
-- Your result cannot contain duplicates.

select distinct city from station where city rlike '^[^aeiou]'

-- ^ starts with [^aeiou] not aeiou
-- SELECT CITY
-- FROM STATION
-- WHERE LEFT(CITY,1) NOT IN ('a','e','i','o','u')