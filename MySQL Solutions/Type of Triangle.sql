-- Write a query identifying the type of each record in the TRIANGLES table using its three side lengths. Output one of the following statements for each record in the table:

-- Equilateral: It's a triangle with 3 sides of equal length.
-- Isosceles: It's a triangle with 2 sides of equal length.
-- Scalene: It's a triangle with 3 sides of differing lengths.
-- Not A Triangle: The given values of A, B, and C don't form a triangle.

select
case when A+B <= C OR B+C <= A OR A+C <= B then 'Not A Triangle'
when A = B AND B = C and A=C then 'Equilateral'
when A = B AND B != C OR A = C AND B != C OR B = C AND A != B then 'Isosceles'
ELSE 'Scalene'
end
from triangles