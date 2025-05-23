SELECT * FROM Employees_presidio;


SELECT FirstName, LastName, Salary 
FROM Employees_presidio
WHERE Department = 'IT';


SELECT * FROM Employees_presidio
ORDER BY Salary DESC;


SELECT * FROM Employees_presidio
WHERE Salary > 50000 AND HireDate > '2020-01-01';


SELECT Department, AVG(Salary) as AvgSalary
FROM Employees_presidio
GROUP BY Department;

Select Location ,avg(Salary) as avgsalary from Departments 
join Employees_presidio d on e.Department On e.Departments 


SELECT e.FirstName, e.LastName, d.DeptName, d.Location
FROM Employees_presidio e
JOIN Departments d ON e.Department = d.DeptName;


SELECT d.DeptName, e.FirstName, e.LastName
FROM Departments d
LEFT JOIN Employees_presidio e ON d.DeptName = e.Department;


SELECT FirstName, LastName, Salary
FROM Employees_presidio
WHERE Salary > (SELECT AVG(Salary) FROM Employees_presidio);


SELECT FirstName, LastName, HireDate,
       DATEDIFF(day, HireDate, GETDATE()) as DaysEmployed
FROM Employees_presidio;


select d.Location , avg(Salary)as avgSalary
from Employees_presidio e 
join Departments d on e.Department = d.DeptName
Group by d.Location;
