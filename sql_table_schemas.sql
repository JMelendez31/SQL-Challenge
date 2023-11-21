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
