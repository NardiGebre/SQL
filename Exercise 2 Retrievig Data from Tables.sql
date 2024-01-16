Exercise 2 Retrievig Data from Tables 
--  Scenario:
Consider a scenario where you are working with a database that stores information about employees, departments, and projects. There are three tables: employees, departments, and projects.

Create table projects(
project_Name varchar(100),
project_StartDate date);

Update Table projects(
project_startdate date);

ALTER TABLE projects drop project_startdate;
ALTER TABLE projects add project_startdate date;

Insert Into projects(
project_Name, project_StartDate)
values  ('TigrayProject', '2020-11-11'),
		('BostonProject', '2021-09-02');
		
-- Retrieve the first and last names of all employees in the 'Management' department.

Select 
		
Insert Into departements(
department_id, departemnt_name)
values(0008, 'Management');

Insert Into employees(
employee_id,first_name, last_name, salary, department_id )
values  (5, 'Sara', 'Daniel', 185000, 0003),
		(6, 'Jacob', 'Issac', 260000, 0002),
		(7, 'Susan', 'Mark',  170000, 0001),
		(8, 'Afrina','Wendem', 260000, 0003),
		(9, 'Samuel', 'Girum', 350000, 0002),
		(10, 'Ezra', 'Nigus', 530000, 0008),
		(11, 'Semira', 'Eyob', 440000, 0001),
		(12, 'Yordi', 'Tesfay', 800000, 0008);
		
-- Retrieve the project names and start dates for projects that started after '2022-01-01'.
-- Use WHERE Clause to filter

Select projects.project_name, projects.project_startdate 
From projects WHERE project_startdate > '2022-01-01';

-- List the department names along with the total number of employees in each department.

Select departements.departemnt_name, COUNT (employee_id)AS TotalEmployees
FROM departements
LEFT JOIN employees ON departements.department_id = employees.department_id
GROUP BY departements.departemnt_name;

-- Retrieve the first 5 employees from the employees table.

Select first_name, last_name, employee_id, department_id
FROM employees
Limit 5;

-- Retrieve 10 employees starting from the 11th employee in the employees table.

Select * FROM employees
ORDER BY first_name
LIMIT 10 OFFSET 10;

--  Retrieve the first 10 employees from the 'Sales' department in the employees table.

Select * FROM employees
WHERE department_id = 0002
ORDER BY employee_id
FETCH FIRST 10 ROWS ONLY;



