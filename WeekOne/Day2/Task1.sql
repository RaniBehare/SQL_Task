create database employeeDatabase;
 use employeeDatabase;
 
-- Table Name: Employees
-- Columns:
-- EmployeeID: INT, Primary Key
-- FirstName: VARCHAR(50), Not Null
-- LastName: VARCHAR(50), Not Null
-- Email: VARCHAR(100), Not Null
-- Salary: INT, Not Null
-- Department: VARCHAR(50
 create table Employees(EmployeeId int primary key, FirstName varchar(50) Not Null, LastName varchar(50) Not Null, Email varchar(100) Not Null, Salary int Not Null, Department varchar(50));
 
 -- insert data into table
-- Sample Records
-- Employees Table
-- EmployeeID: 1, FirstName: 'John', LastName: 'Doe', Email: 'john.doe@company.com', Salary: 60000, Department: 'Marketing'
-- EmployeeID: 2, FirstName: 'Jane', LastName: 'Smith', Email: 'jane.smith@company.com', Salary: 75000, Department: 'Sales'
-- EmployeeID: 3, FirstName: 'Michael', LastName: 'Johnson', Email: 'michael.johnson@company.com', Salary: 85000, Department: 'Marketing'
-- EmployeeID: 4, FirstName: 'Emily', LastName: 'Williams', Email: 'emily.williams@company.com', Salary: 72000, Department: 'IT'
-- EmployeeID: 5, FirstName: 'David', LastName: 'Brown', Email: 'david.brown@company.com', Salary: 65000, Department: 'Sales'
-- EmployeeID: 6, FirstName: 'Sarah', LastName: 'Davis', Email: 'sarah.davis@company.com', Salary: 90000, Department: 'IT'
-- EmployeeID: 7, FirstName: 'Robert', LastName: 'Miller', Email: 'robert.miller@company.com', Salary: 70000, Department: 'Finance'
-- EmployeeID: 8, FirstName: 'Jessica', LastName: 'Wilson', Email: 'jessica.wilson@company.com', Salary: 65000, Department: 'Finance'
-- EmployeeID: 9, FirstName: 'Daniel', LastName: 'Anderson', Email: 'daniel.anderson@company.com', Salary: 72000, Department: 'IT'
-- EmployeeID: 10, FirstName: 'Ashley', LastName: 'Taylor', Email: 'ashley.taylor@company.com', Salary: 58000, Department: 'Sales'
-- EmployeeID: 11, FirstName: 'William', LastName: 'Brown', Email: 'william.brown@company.com', Salary: 78000, Department: 'Marketing'
-- EmployeeID: 12, FirstName: 'Sophia', LastName: 'Davis', Email: 'sophia.davis@company.com', Salary: 62000, Department: 'HR'

insert into Employees values(1,"John","Doe",'john@company.com', 60000,"Markering");
insert into Employees values(2,"Jane","Smith",'jane@company.com', 75000,"Sales");
insert into Employees values(3,"Michael","Johnson",'michael@company.com', 85000,"Markering");
insert into Employees values(4,"Emily","Williams",'emily@company.com', 72000,"IT");
insert into Employees values(5,'David','Brown','david.brown@company.com',65000,'Sales');
insert into Employees values(6,'Sarah','Davis','sarah.davis@company.com', 90000,'IT');
insert into Employees values(7,'Robert','Miller','robert.miller@company.com',70000,'Finance');
insert into Employees values(8,'Jessica','Wilson','jessica.wilson@company.com',65000,'Finance');
insert into Employees values(9,'Daniel','Anderson','daniel.anderson@company.com',72000,'IT');
insert into Employees values(10,'Ashley','Taylor','ashley.taylor@company.com',58000,'Sales');
insert into Employees values(11,'William', 'Brown','william.brown@company.com',78000,'Marketing');
insert into Employees values(12,'Sophia','Davis','sophia.davis@company.com',62000,'HR');

-- 1.Create a constraint to ensure that the salary of an employee is greater than 0.
Alter table Employees add check (salary >=0);

-- 3.Create a unique constraint on the Email column in the Employees table
Alter table Employees add unique(Email);

-- 7.Attempt to insert a duplicate email address into the Employees table and observe the unique constraint violation
insert into Employees values(13,'ram','abc','sophia.davis@company.com',62000,'HR');
-- Result => 0	25	12:51:21	insert into Employees values(13,'ram','abc','sophia.davis@company.com',62000,'HR')	Error Code: 1062. Duplicate entry 'sophia.davis@company.com' for key 2

