#INTErmediate SQL
#JOIns inter joins outerjoins and self joins

select *
from employee_demographics;

select * 
from employee_salary;


select *
from employee_demographics
INNER JOIN employee_salary;#can just say join and not inner join

select *
from employee_demographics
INNER JOIN employee_salary
	ON employee_ID = employee_id; #wont work need to do this
    
    select *
from employee_demographics
INNER JOIN employee_salary
	ON employee_demographics.employee_id = employee_salary.employee_id; # this shows both tables
    # because 2 is not in the demographic it will not be in the both
# now you should use aliasing to simple as it
 select *
from employee_demographics as dem
INNER JOIN employee_salary as sal
ON dem.employee_id=sal.employee_id; # does the exact same thing

#only want a few of the things
SELECT  dem.employee_id, age, occupation
from employee_demographics as dem
inner join employee_salary as sal
	On dem.employee_id=sal.employee_id;
    # this will only show employee id age and occupation so takes the age and occupation puts together
    
    
    
    
    ##outer joins right outer left outer 
    #left join takes left items and  only returns the matches from the right side
    SELECT  *
from employee_demographics as dem
right join employee_salary as sal
	On dem.employee_id=sal.employee_id;
# this shows everything because there is a match of id

SELECT  *
from employee_demographics as dem
right join employee_salary as sal
	On dem.employee_id=sal.employee_id;
    # right beause 2 is not in demographic it turns null
    
## SElf join
## a join when you tie a table to its self
#make the next person a secert santa
SELECT *
FROM employee_salary emp1
JOIN employee_Salary emp2 # alias
	ON emp1.employee_id +1 =emp2.employee_id ## makes leslie = to ran so thats her secert santa
;


SELECT emp1.employee_id AS emp_santa,
emp1.first_name AS first_name_santa,
emp1.last_name as last_name_santa,
emp2.employee_id AS emp_name,
emp2.first_name AS first_name_emp,
emp2.last_name as last_name_emp


FROM employee_salary emp1
JOIN employee_Salary emp2 # alias
	ON emp1.employee_id +1 =emp2.employee_id ## makes leslie = to ran so thats her secert santa
;


#joining multiple tables together
SELECT * 
FROM employee_demographics as dem
inner join employee_salary as sal
	ON dem.employee_id =sal.employee_id
INNER JOIN parks_departments pd
	ON sal.dept_id = pd.department_id
    ;
    
Select * 
from parks_departments;
