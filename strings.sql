#string functions

Select Length('skyfall'); #gives us length of it


Select first_name, length(first_name)
From employee_demographics #length of their name
order by 2;  # can make sure everything is a tthe proper length

SELECT UPPER('sky'); # all upper case
Select lower('SKY');# all lower

Select first_name, upper(first_name)
From employee_demographics; #all upper case good for standarizations everything will be proper

#trim

SELECT TRIm('                sky            ');
# gets rid of the before and after spaces
SELECT ltrim('       sky          '); # left trim
SELECT rtrim('           sky        ');       #right trim



SELECT first_name, Left(first_name, 4), # this looks for a value from the left 4 chars
right(first_name, 4),
Substring(first_name, 3, 2), #starts at the 3rd position and moves 2 to the right

substring(birth_date, 6,2) # gives us the month of birth can help find peoples birthdaydates
FRom employee_demographics; # only gives us the first 4 letter


select first_name, REPLACE(first_name,'a', 'z')
from employee_demographics; #replaces a with z lowercase a

select locate('x','Alexander'); #tells us x is located at position 4 in alexaner

select first_name, locate('An', first_name)
From employee_demographics; #can help us find what we are looking for in a big database

select first_name, last_name, 
CONCAT(first_name,' ', last_name) AS FULL_name
FROM employee_demographics; # makes the names together with a space
