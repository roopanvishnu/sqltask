-- Create Database
CREATE DATABASE CompanyDB;
USE CompanyDB;

-- Create Employees Table
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DepartmentID INT,
    Salary DECIMAL(10,2),
    HireDate DATE
);

-- Create Departments Table
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY AUTO_INCREMENT,
    DeptName VARCHAR(50),
    Location VARCHAR(100),
    ManagerID INT,
    Budget DECIMAL(12,2),
    EstablishedYear INT
);

-- Create Projects Table
CREATE TABLE Projects (
    ProjectID INT PRIMARY KEY AUTO_INCREMENT,
    ProjectName VARCHAR(100),
    StartDate DATE,
    EndDate DATE,
    Budget DECIMAL(12,2),
    DepartmentID INT
);

-- Create Employee_Projects Table (Many-to-Many Relationship)
CREATE TABLE Employee_Projects (
    EmployeeProjectID INT PRIMARY KEY AUTO_INCREMENT,
    EmployeeID INT,
    ProjectID INT,
    Role VARCHAR(50),
    AssignedDate DATE,
    Status VARCHAR(50),
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID),
    FOREIGN KEY (ProjectID) REFERENCES Projects(ProjectID)
);

-- Insert data into Departments
INSERT INTO Departments (DeptName, Location, ManagerID, Budget, EstablishedYear) VALUES
('IT', 'New York', 1, 500000, 2010),
('HR', 'San Francisco', 2, 200000, 2012),
('Finance', 'Chicago', 3, 300000, 2015),
('Marketing', 'Los Angeles', 4, 400000, 2011),
('Sales', 'Miami', 5, 250000, 2013);

-- Insert data into Employees
INSERT INTO Employees (FirstName, LastName, DepartmentID, Salary, HireDate) VALUES
('Alice', 'Johnson', 1, 75000, '2020-06-15'),
('Bob', 'Smith', 2, 65000, '2019-08-22'),
('Charlie', 'Brown', 3, 80000, '2018-05-30'),
('David', 'Williams', 4, 90000, '2017-07-11'),
('Emma', 'Davis', 5, 70000, '2021-03-19'),
('Frank', 'Miller', 1, 85000, '2022-09-25'),
('Grace', 'Wilson', 2, 62000, '2020-01-14'),
('Hannah', 'Moore', 3, 78000, '2019-10-08'),
('Ian', 'Taylor', 4, 95000, '2016-11-05'),
('Jack', 'Anderson', 5, 72000, '2021-07-22'),
('Karen', 'Thomas', 1, 77000, '2020-12-18'),
('Leo', 'Jackson', 2, 69000, '2019-04-28'),
('Mia', 'White', 3, 81000, '2018-06-03'),
('Noah', 'Harris', 4, 92000, '2017-09-15'),
('Olivia', 'Martin', 5, 73000, '2021-08-10');

-- Insert data into Projects
INSERT INTO Projects (ProjectName, StartDate, EndDate, Budget, DepartmentID) VALUES
('ERP System', '2023-01-01', '2023-12-31', 200000, 1),
('HR Management', '2023-02-15', '2023-11-30', 150000, 2),
('Financial Analysis', '2023-03-20', '2023-10-20', 180000, 3),
('Marketing Campaign', '2023-04-10', '2023-12-01', 220000, 4),
('Sales Optimization', '2023-05-05', '2023-11-15', 170000, 5),
('Cloud Migration', '2023-06-12', '2023-09-30', 250000, 1),
('Recruitment System', '2023-07-18', '2023-12-25', 140000, 2),
('Investment Strategy', '2023-08-22', '2023-10-28', 190000, 3),
('SEO Optimization', '2023-09-30', '2023-11-30', 210000, 4),
('CRM Implementation', '2023-10-10', '2023-12-20', 160000, 5);

-- Insert data into Employee_Projects
INSERT INTO Employee_Projects (EmployeeID, ProjectID, Role, AssignedDate, Status) VALUES
(1, 1, 'Developer', '2023-01-05', 'Active'),
(2, 2, 'HR Specialist', '2023-02-18', 'Active'),
(3, 3, 'Analyst', '2023-03-22', 'Completed'),
(4, 4, 'Marketing Lead', '2023-04-12', 'Active'),
(5, 5, 'Sales Rep', '2023-05-08', 'Active'),
(6, 6, 'Cloud Engineer', '2023-06-15', 'Active'),
(7, 7, 'HR Assistant', '2023-07-20', 'Pending'),
(8, 8, 'Financial Planner', '2023-08-25', 'Completed'),
(9, 9, 'SEO Manager', '2023-09-05', 'Active'),
(10, 10, 'CRM Consultant', '2023-10-12', 'Pending'),
(11, 1, 'Tester', '2023-01-10', 'Active'),
(12, 3, 'Finance Manager', '2023-03-25', 'Completed'),
(13, 5, 'Sales Associate', '2023-05-10', 'Active'),
(14, 7, 'HR Analyst', '2023-07-22', 'Pending'),
(15, 9, 'SEO Specialist', '2023-09-08', 'Active');
