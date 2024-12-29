# case allows you to have logic if else statement
SELECT first_name, last_name, age,
case
	WHEN AGE <=30 Then 'Young' 
    WHEN Age Between 31 and 50 THEN 'OLD'
    WHEN AGE >=50 then 'Dead'
End AS Life
From employee_Demographics; # shows who is considered young


#pay if they deserve bonus 
# if they made less than 50000 and 5% raise
# greater than 50000 and 7% raise
# finance= 10% bonus

SELECT first_name, last_name, salary,
Case 
	when salary < 50000 then salary +(salary *.05)
    when salary >= 50000 then salary +(salary *.07)
    
ENd as New_salary,
case
	when dept_id = 6 then (salary *.10)
end as bonus
From employee_salary;

