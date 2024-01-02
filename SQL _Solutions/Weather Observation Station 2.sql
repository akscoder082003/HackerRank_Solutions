-- Query the following two values from the STATION table:

-- The sum of all values in LAT_N rounded to a scale of  decimal places.
-- The sum of all values in LONG_W rounded to a scale of  decimal places.

select round(sum(LAT_N), 2) , round(sum(LONG_W), 2) from STATION;