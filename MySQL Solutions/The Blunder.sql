-- Samantha was tasked with calculating the average monthly salaries for all employees in the EMPLOYEES table, 
-- but did not realize her keyboard's  key was broken until after completing the calculation. 
-- She wants your help finding the difference between her miscalculation (using salaries with any zeros removed), and the actual average salary.

-- Write a query calculating the amount of error (i.e.:  average monthly salaries), and round it up to the next integer.

-- Calculate the average salary, rounded to the nearest whole number
select round(avg(Salary)) 

-- Subtract the average of salaries where zeros are replaced with empty strings, rounded to the nearest whole number
- round(avg(replace(Salary, 0, ""))) from EMPLOYEES;