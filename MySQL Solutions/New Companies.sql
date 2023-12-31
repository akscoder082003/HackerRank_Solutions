-- Amber's conglomerate corporation just acquired some new companies. 
-- Each of the companies follows this hierarchy:

-- Founder
-- |
-- Lead Manager
-- |
-- Senior Manager
-- |
-- Manager
-- |
-- Employee

-- Given the table schemas below, write a query to print the company_code, 
-- founder name, total number of lead managers, total number of senior managers, 
-- total number of managers, and total number of employees. Order your output by ascending company_code.
-- Note:
-- The tables may contain duplicate records.
-- The company_code is string, so the sorting should not be numeric. 
-- For example, if the company_codes are C_1, C_2, and C_10, then the ascending company_codes will be C_1, C_10, and C_2.


select Company.company_code, Company.founder,
count(distinct Employee.lead_manager_code),
count(distinct Employee.senior_manager_code),
count(distinct Employee.manager_code),
count(distinct Employee.employee_code)
from Company join Employee on 
Company.company_code = Employee.company_code
group by Company.company_code, Company.founder;
