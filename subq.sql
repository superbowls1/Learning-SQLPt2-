#subqueries just a querier just in a another querier 
Select *
FROM employee_demographics
WHERE employee_id IN 
				( SELECT employee_Id
                FROM employee_salary
                WHERE  dept_id=1);
                
 #can compare all the salaries average               
SELECT  first_name, salary, 
(SELECT avg(salary)
FROM employee_salary)
FROM employee_salary;

SELECT gender, avg(age), max(age), min(age), COUNT(age)
From employee_demographics
GROUP by gender;

SELECT  avg('MAX(age)')
from
(Select gender, avg(age), max(age), min(age), count(age)
from employee_demographics
GROUP BY gender) as agg_table

;