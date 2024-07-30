use employeeDatabase;

-- Select the first name, last name, and salary of the top 3 employees with the highest salaries.
select FirstName, LastName, Salary from Employees order by Salary desc limit 3;

-- Select the first name, last name, and salary of the top 3 employees with the lowest salaries 
select FirstName, LastName, Salary from Employees Order By Salary asc limit 3;

-- Select the first name, last name, and salary of the employee with the 2nd highest salary. 
select FirstName, LastName, Salary from Employees Order By salary desc limit 1, 1;

-- Select the first name, last name, and salary of the employee with the 2nd lowest salary. 
select FirstName, LastName, Salary from Employees Order By salary limit 1,1;

-- Select the first name, last name, and salary of the employee with the 3rd highest salary.
select FirstName, LastName, Salary from Employees Order By salary desc limit 2,1;

-- Select the first name, last name, and salary of the employee with the 3rd lowest salary. 
select FirstName, Lastname, Salary from employees Order By salary asc limit 2,1;

-- Select the first name, last name, email, and salary of employees with a salary between 65000 and 80000, ordered by their first name in descending order, and limit the result to 3 rows. 
select FirstName, Lastname, Email,Salary from Employees where salary BETWEEN 65000 and 80000 order by Firstname desc limit 2,1;
-- select * from employees;