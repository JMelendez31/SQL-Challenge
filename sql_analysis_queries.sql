DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS titles;
DROP TABLE IF EXISTS salaries;
------ Creating Tables ------
---------departments---------
CREATE TABLE departments 
(dept_no VARCHAR(5) PRIMARY KEY NOT NULL,
dept_name VARCHAR(30) NOT NULL)
---------employees---------
CREATE TABLE employees
(emp_no INT PRIMARY KEY NOT NULL,
emp_title_id VARCHAR(30) NOT NULL, 
birth_date VARCHAR(30) NOT NULL, 
first_name VARCHAR(30) NOT NULL, 
last_name VARCHAR(30) NOT NULL, 
sex VARCHAR(1) NOT NULL,
hire_date VARCHAR(30) NOT NULL)
--------dept_emp----------
CREATE TABLE dept_emp
(emp_no INT NOT NULL,
dept_no VARCHAR(5) NOT NULL)
---------dept_manager------
CREATE TABLE dept_manager
(dept_no VARCHAR(5) NOT NULL,
emp_no INT NOT NULL)
--------- titles ----------
CREATE TABLE titles
(title_id VARCHAR(15) PRIMARY KEY,
title VARCHAR(30) NOT NULL)
 ---------salaries---------
 CREATE TABLE salaries
(emp_no INT PRIMARY KEY NOT NULL,
salary INT NOT NULL)

------ Data Analysis ------
SELECT 
employees.emp_no, 
employees.last_name, 
employees.first_name, 
employees.sex, 
salaries.salary
FROM employees
JOIN salaries ON employees.emp_no = salaries.emp_no

SELECT 
first_name,
last_name, 
hire_date
FROM employees
WHERE hire_date LIKE '%1986'

SELECT 
dept_manager.dept_no, 
departments.dept_name, 
dept_manager.emp_no, 
employees.last_name, 
employees.first_name
FROM dept_manager
JOIN employees ON dept_manager.emp_no = employees.emp_no
JOIN departments ON dept_manager.dept_no = departments.dept_no

SELECT 
departments.dept_no,
departments.dept_name,
employees.emp_no,
employees.last_name, 
employees.first_name
FROM employees
JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
JOIN departments ON dept_emp.dept_no = departments.dept_no

SELECT 
first_name, 
last_name, 
sex
FROM employees
WHERE first_name = 'Hercules' and last_name LIKE 'B%'

SELECT
dept_emp.emp_no,
departments.dept_name,
employees.first_name,
employees.last_name
FROM employees
JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
JOIN departments ON dept_emp.dept_no = departments.dept_no
WHERE departments.dept_no = 'd007'

SELECT
last_name, 
COUNT(last_name)
FROM employees
GROUP BY last_name
ORDER BY COUNT(last_name) DESC