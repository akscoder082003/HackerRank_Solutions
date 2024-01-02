-- Query the sum of Northern Latitudes (LAT_N) from STATION having values greater than 38.7880 and less than 137.2345. 
-- Truncate your answer to  decimal places.

select round(sum(LAT_N), 4) from STATION where LAT_N > 38.7880 and LAT_N < 137.2345