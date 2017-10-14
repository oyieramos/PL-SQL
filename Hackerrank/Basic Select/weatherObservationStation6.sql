-- Query the list of CITY names starting with vowels
-- (i.e., a, e, i, o, or u) from STATION. Your result
-- cannot contain duplicates.(use distinct)

select city from station where 

--city[0] = a || e || i || o || u

select distinct(city) from station where city rlike '^(a|e|i|o|u).*'

-- use of rlike, synonym of RegExp
-- ^ is used to match the beginning of the name