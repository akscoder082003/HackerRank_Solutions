-- Given the CITY and COUNTRY tables, query the names of all cities where the CONTINENT is 'Africa'.
-- Note: CITY.CountryCode and COUNTRY.Code are matching key columns.

select CITY.NAME 
from CITY join COUNTRY on CITY.CountryCode = COUNTRY.Code 
where CONTINENT = 'Africa'