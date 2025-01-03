#window FUNCTIONS ADVANCE!
SELECT gender, avg(salary) AS AVG_SALARY
from employee_demographics dem 
JOIN employee_salary sal
	ON dem.employee_id= sal.employee_id ## gives avg income for genders
    group by gender;
    
SELECT dem.first_name, dem.last_name,gender, AVG(SALARY) OVER(PARTITIOn by gender) AVG
FROM employee_demographics dem
join employee_salary sal
	ON dem.employee_id =sal.employee_id;