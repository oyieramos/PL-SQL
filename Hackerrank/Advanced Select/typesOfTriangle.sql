-- Write a query identifying the type of each record in the
-- TRIANGLES table using its three side lengths.
-- Output one of the following statements for each record
-- in the table:

-- Equilateral: 3 sides of equal length.
-- Isosceles: 2 sides of equal length.
-- Scalene: 3 sides of differing lengths.
-- Not A Triangle: A, B, and C don't form a triangle.

select case
  when a = b and b = c then 'Equilateral'
  when a = b and a + b > c then 'Isosceles'
  when a = c and a + c > b then 'Isosceles'
  when b = c and b + c > a then 'Isosceles'
  when a + b <= c then 'Not A Triangle'
  when a + c <= b then 'Not A Triangle'
  when b + c <= a then 'Not A Triangle'
  else 'Scalene'
  end
from triangles

/

select case
  when a = b and b = c then 'Equilateral'
  when a + b <= c or a + c <= b or b + c <= a  then 'Not A Triangle'
  when a = b or a = c or b = c then 'Isosceles'
  else 'Scalene'
  end
from triangles

--the order of case statement are important :)