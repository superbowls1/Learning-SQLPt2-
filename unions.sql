##Unions allows us to combine rows togther from seperate tables or same
Select first_name, last_name
From employee_demographics
UNION DISTINCT ## this will only give us one and not multiple
Select first_name, last_name
From employee_salary;
# this will give us the name and last name of new one is ROn cause hes only in one

Select first_name, last_name
From employee_demographics
UNION ALL ## this will only give us all and duplicates
Select first_name, last_name
From employee_salary;


Select first_name, last_name,  'OLD Man' as Label
From employee_demographics ## we can try to push out the older people that are also high paid
WHere age >40 and gender= 'Male'
Union
Select first_name, last_name, 'Old lady' as label
From employee_demographics
Where age>40 and gender='Female'
UNION
Select first_name, last_name, 'Highly paid' as Label
From employee_salary
WHERE salary >70000
Order by first_name, last_name; # this makes it easy to see who is what next by next

