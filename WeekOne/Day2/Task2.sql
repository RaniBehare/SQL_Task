
 use employeeDatabase;
-- create Departments Table
-- DepartmentID: INT, Primary Key
-- DepartmentName: VARCHAR(50), Not Null

-- 4.Create a primary key constraint on the DepartmentID column in the Departments table
create table departments(DepartmentID int, DepartmentName varchar(50) Not Null, primary key (DepartmentID));

-- insert data into Departments Table
-- DepartmentID: 1, DepartmentName: 'Marketing'
-- DepartmentID: 2, DepartmentName: 'Sales'
-- DepartmentID: 3, DepartmentName: 'IT'
-- DepartmentID: 4, DepartmentName: 'Finance'
-- DepartmentID: 5, DepartmentName: 'HR'
insert into departments values(1, "Marketing");
insert into departments values(2, "Sales");
insert into departments values(3, "IT");
insert into departments values(4, "Finance");
insert into departments values(5, "HR");

-- add deprtmentId column to Employee table and make it as a foregin key
-- 2. Create a foreign key constraint in the Employees table to reference the DepartmentID in the Departments table
alter table employees add column (DepartmentID int);
alter table Employees add foreign key (DepartmentID) references Departments(DepartmentID);

-- 3.Create a unique constraint on the Email column in the Employees table
Alter table Employees add unique(Email);

-- Employees Table(Update the data into employee table)
-- EmployeeID: 1, FirstName: 'John', LastName: 'Doe', Email: 'john.doe@company.com', Salary: 60000, DepartmentID: 1
-- EmployeeID: 2, FirstName: 'Jane', LastName: 'Smith', Email: 'jane.smith@company.com', Salary: 75000, DepartmentID: 2
-- EmployeeID: 3, FirstName: 'Michael', LastName: 'Johnson', Email: 'michael.johnson@company.com', Salary: 85000, DepartmentID: 1
-- EmployeeID: 4, FirstName: 'Emily', LastName: 'Williams', Email: 'emily.williams@company.com', Salary: 72000, DepartmentID: 3
-- EmployeeID: 5, FirstName: 'David', LastName: 'Brown', Email: 'david.brown@company.com', Salary: 65000, DepartmentID: 2
-- EmployeeID: 6, FirstName: 'Sarah', LastName: 'Davis', Email: 'sarah.davis@company.com', Salary: 90000, DepartmentID: 3
Update Employees set DepartmentId = 1 where EmployeeID = 1;
Update Employees set DepartmentId = 2 where EmployeeID = 2;
Update Employees set DepartmentId = 3 where EmployeeID = 1;
Update Employees set DepartmentId = 4 where EmployeeID = 3;
Update Employees set DepartmentId = 5 where EmployeeID = 2;
Update Employees set DepartmentId = 6 where EmployeeID = 3;

-- create Projects Table
-- ProjectID: INT, Primary Key
-- ProjectName: VARCHAR(100), Not Null
-- DepartmentID: INT, Foreign Key referencing Departments(DepartmentID)
create table Projects(ProjectId int, ProjectName varchar(100) Not Null, primary key (ProjectId));

-- 5. Create a foreign key constraint in the Projects table to reference the DepartmentID in the Departments table
alter table Projects add column (DepartmentID int), add foreign key(DepartmentID) references Departments(DepartmentID);

-- Insert data to Projects Table
-- ProjectID: 1, ProjectName: 'Project A', DepartmentID: 1
-- ProjectID: 2, ProjectName: 'Project B', DepartmentID: 2
-- ProjectID: 3, ProjectName: 'Project C', DepartmentID: 3
-- ProjectID: 4, ProjectName: 'Project D', DepartmentID: 4
-- ProjectID: 5, ProjectName: 'Project E', DepartmentID: 5
insert into Projects values(1,"Project A",1);
insert into Projects values(2,"Project B",2);
insert into Projects values(3,"Project C",3);
insert into Projects values(4,"Project D",4);
insert into Projects values(5,"Project E",5);

-- 6.Insert a new employee with a DepartmentID that does not exist in the Departments table and observe the foreign key constraint violation 
insert into employees values(13,'AAA','BBB','aaa@company.com',62000,'HR',6);
-- result=> 0	70	15:16:54	insert into employees values(13,'AAA','BBB','aaa@company.com',62000,'HR',6)	Error Code: 1216. Cannot add or update a child row: a foreign key constraint fails	0.063 sec 

-- 7.Attempt to insert a duplicate email address into the Employees table and observe the unique constraint violation
insert into Employees values(13,'ram','abc','sophia.davis@company.com',62000,'HR');
-- Result => 0	25	12:51:21	insert into Employees values(13,'ram','abc','sophia.davis@company.com',62000,'HR')	Error Code: 1062. Duplicate entry 'sophia.davis@company.com' for key 2

-- 8.Delete a department from the Departments table that is being referenced by the Employees table and observe the foreign key constraint violation 
delete from departments where DepartmentID = 2;
-- result=> 0	71	15:20:30	delete from departments where DepartmentID = 2	Error Code: 1217. Cannot delete or update a parent row: a foreign key constraint fails	0.032 sec 

-- 9.Update the DepartmentID of an existing employee to a value that does not exist in the Departments table and observe the foreign key constraint violation 
update employees set DepartmentID = 6 where EmployeeId =2;
-- Result=> 0	72	15:27:22	update employees set DepartmentID = 6 where EmployeeId =2	Error Code: 1216. Cannot add or update a child row: a foreign key constraint fails
