-- Query the smallest Northern Latitude (LAT_N) from STATION that is greater than 38.7780. Round your answer to  decimal places.

select round(LAT_N, 4) from STATION where LAT_N > 38.7780 
order by LAT_N asc limit 1;