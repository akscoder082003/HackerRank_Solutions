
SELECT
Company.company_code,Company.founder,
COUNT(distinct Employee.lead_manager_code),
COUNT(distinct Employee.senior_manager_code),
COUNT(distinct Employee.manager_code),
COUNT(distinct Employee.employee_code) 
FROM Company JOIN Employee ON 
Company.company_code=Employee.company_code 
group by Company.company_code,
Company.founder;