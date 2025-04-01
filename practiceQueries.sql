-- Retrieve a list of all employees along with their respective department names.
SELECT e.FirstName, e.LastName, coalesce(p.ProjectName, 'Not assigned')
as ProjectName,
coalesce(ep.Role,'No Role') as Role
From Employees e
LEFT JOIN Employee_Projects ep on e.EmployeeID = ep.EmployeeID
LEFT JOIN Projects p on ep.ProjectID = p.ProjectID;
-- Display all employees and their assigned projects 
-- (include employee name, project name, and role).
SELECT d.DeptName, e.FirstName, e.LastName
FROM Departments d 
LEFT JOIN Employees e on d.DepartmentID = e.DepartmentID 
ORDER BY d.DeptName;

SELECT 
    d.DeptName, 
    d.Location, 
    e.FirstName, 
    e.LastName, 
    e.Salary
FROM Departments d
LEFT JOIN Employees e ON d.DepartmentID = e.DepartmentID
ORDER BY d.DeptName;
-- Show a list of all projects along with their respective department names.
select e.FirstName, e.LastName, d.DeptName
from Employees e JOIN Departments d 
on e.DepartmentID = d.DepartmentID;
-- Fetch all departments and their assigned employees 
-- (including those departments that do not have any employees).
select 
e.FirstName, 
e.Lastname, 
p.ProjectName, 
ep.Role
FROM Employees e JOIN Employee_Projects ep 
on e.EmployeeID = ep.EmployeeID
JOIN Projects p on ep.ProjectID = p.ProjectID;
-- Get a list of all employees and the projects they are working on, 
-- including employees who are not assigned to any projects.
SELECT 
d.DeptName, p.ProjectName 
FROM Departments d 
JOIN Projects p 
on d.DepartmentID = p.DepartmentID;


-- inner join / JOIN

-- Retrieve all employees who are part of a project along with 
-- their project details.
SELECT 
e.FirstName, 
e.LastName, 
p.ProjectName, 
p.StartDate,
p.EndDate,
p.Budget
FROM Employees e 
JOIN Employee_Projects ep on ep.EmployeeID = e.EmployeeID
JOIN Projects p on p.ProjectID = ep.ProjectID;

-- Fetch a list of all employees along with their department details, 
-- but only for employees who have a department assigned.
SELECT 
e.FirstName,
e.LastName,
d.DeptName,
d.Location,
d.Budget,
d.EstablishedYear
From Employees e 
JOIN Departments d
on e.DepartmentID = d.DepartmentID;

-- Get all employees who are assigned to a project and also fetch 
-- their department name.
SELECT 
e.FirstName, 
e.LastName,
p.ProjectName,
d.DeptName
FROM Employees e 
JOIN Employee_Projects ep 
on ep.EmployeeID = e.EmployeeID
JOIN Projects p 
on p.ProjectID = ep.ProjectID
JOIN Departments d 
on d.DepartmentID = e.DepartmentID;
-- List all employees who are working on the "ERP System" project.
SELECT
e.FirstName,
e.LastName,
p.ProjectName
FROM Employees e 
JOIN Employee_Projects ep 
ON ep.EmployeeID = e.EmployeeID
JOIN Projects p ON 
p.ProjectID = ep.ProjectID
WHERE p.ProjectName = 'ERP System';

-- Display all projects along with the employees working on them, 
-- filtering only for employees with the role of "Developer".

SELECT 
p.ProjectName,
e.FirstName,
e.LastName,
ep.Role
FROM Employees e 
JOIN Employee_Projects ep 
ON ep.EmployeeID = e.EmployeeID
JOIN Projects p ON p.ProjectID = ep.ProjectID
WHERE ep.Role = 'Developer';


-- left join

-- Retrieve a list of all departments along with the employees in 
-- those departments, including departments that have no employees.
SELECT 
d.DeptName,
e.FirstName,
e.LastName
FROM Departments d 
LEFT JOIN Employees e 
on d.DepartmentID = e.DepartmentID;
-- Show a list of all employees and their assigned projects, including 
-- employees who have not been assigned to any project.

-- Fetch all projects and list the employees working on them, ensuring 
-- that projects without employees are also displayed.

-- Get a list of all employees, their project names, and their 
-- assigned roles, ensuring employees without projects are included.

-- List all employees and show the project they are working on 
-- (if any), but replace NULL values in the project name with 
-- "Not Assigned".

