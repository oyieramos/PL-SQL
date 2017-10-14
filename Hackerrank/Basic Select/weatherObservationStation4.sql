-- Let  N be the number of CITY entries in STATION,
-- and let 'N' be the number of distinct CITY names in STATION;
-- query the value of  from STATION.

-- In other words, find the difference between the
-- total number of CITY entries in the table and the
-- number of distinct CITY entries in the table.

-- DECLARE
-- 	a 		station.city%type;		--number of city
-- 	b 		stat.city%type; 		--number of distinct city
-- BEGIN
-- 	--get a value, get b value
-- 	SELECT DISTINCT CITY INTO b FROM STATION;
-- 	SELECT CITY INTO a FROM STATION;
-- END;

--alright my guess was quite far off lol

SELECT COUNT(CITY) - COUNT(DISTINCT CITY) FROM STATION

--here I learn count method