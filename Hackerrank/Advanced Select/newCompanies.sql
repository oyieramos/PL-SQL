-- hierarchy:
-- Founder -> Lead Manager -> Senior Manager ->
-- Manager -> Employee

-- write a query to print the company_code,
-- founder name, total number of lead managers,
-- total number of senior managers, total number of managers,
-- and total number of employees.
-- Order your output by ascending company_code.

-- The company_code is string,
-- so the sorting should not be numeric.
-- For example, if the company_codes are C_1, C_2, and C_10,
-- then the ascending company_codes will be C_1, C_10, and C_2.

-- table			data

-- company 		company_code
-- 				founder

-- lead_manager 	lead_manager_code
-- 					company_code

-- senior_manager 	senior_manager_code
-- 					lead_manager_code
-- 					company_code

-- and so on until manager, employee

select employee.company_code, company.founder,
count(distinct employee.lead_manager_code), count(distinct employee.senior_manager_code),
count(distinct employee.manager_code), count(distinct employee.employee_code)
from employee inner join company
on employee.company_code = company.company_code
group by employee.company_code, company.founder
order by employee.company_code

/

select company.company_code, company.founder,
count(distinct employee.lead_manager_code), count(distinct employee.senior_manager_code),
count(distinct employee.manager_code), count(distinct employee.employee_code)
from company inner join employee
on company.company_code = employee.company_code
group by company.company_code, company.founder
order by company.company_code

/

select company.company_code, company.founder,
count(distinct lead_manager.lead_manager_code), count(distinct senior_manager.senior_manager_code),
count(distinct manager.manager_code), count(distinct employee.employee_code)
from ((((company 
inner join lead_manager 	on company.company_code = lead_manager.company_code)
inner join senior_manager 	on company.company_code = senior_manager.company_code)
inner join manager 			on company.company_code = manager.company_code)
inner join employee 		on company.company_code = employee.company_code)
group by company.company_code, company.founder
order by company.company_code

--learned from table1
--inner join table2 on table1.attr = table2.attr