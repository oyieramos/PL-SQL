-- Query a list of CITY names from STATION with even ID numbers only.
-- You may print the results in any order,
-- but must exclude duplicates from your answer.

-- SELECT CITY FROM STATION WHERE ID % 2 = 0
-- ^this is my initial answer

SELECT DISTINCT CITY FROM STATION WHERE MOD(STATION.ID,2)=0 ORDER BY CITY

-- use of distinct
-- use of MOD, modulus %
-- use of ORDER BY, the answer here does not require ORDER BY method