-- A median is defined as a number separating the higher half of a data set from the lower half. 
-- Query the median of the Northern Latitudes (LAT_N) from STATION and round your answer to 4 decimal places.

select round(LAT_N, 4) from STATION order by LAT_N limit 1 offset 249