-- Consider P1(a,c) and P2(b,d) to be two points on a 2D plane where (a,b) 
-- are the respective minimum and maximum values of Northern Latitude (LAT_N) 
-- and (c,d) are the respective minimum and maximum values of Western Longitude (LONG_W) in STATION.
-- P1(a,c),
-- P2(b,d)

-- a = min(LAT_N) 
-- b = max(LAT_N) 
-- c = min(LONG_W) 
-- d = max(LONG_W) 
-- Query the Euclidean Distance between points P1 and P2 and format your answer to display 4 decimal digits.

-- Euclidean distance = √(b - a)² + (d - c)²   

select 
round(sqrt(pow(max(LAT_N) - min(LAT_N), 2) + 
    pow(max(LONG_W) - min(LONG_W), 2)), 4) 
from STATION;