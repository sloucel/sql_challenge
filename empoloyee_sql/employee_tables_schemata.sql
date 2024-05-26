-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/YCqTRh
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/YCqTRh
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- SELECT * FROM titles
CREATE TABLE titles (
    title_id VARCHAR (5)  NOT NULL,
    title VARCHAR (50)  NOT NULL,
    CONSTRAINT pk_titles PRIMARY KEY (title_id)
);

-- SELECT * FROM departments
CREATE TABLE departments (
    dept_no VARCHAR (4)  NOT NULL,
    dept_name VARCHAR (25)  NOT NULL,
    CONSTRAINT pk_departments PRIMARY KEY (dept_no)
);

SELECT * FROM employees
CREATE TABLE employees (
    emp_no INT  NOT NULL,
    title_id VARCHAR (5)   NOT NULL,
    birth_date DATE   NOT NULL,
    first_name VARCHAR (25)   NOT NULL,
    last_name VARCHAR (25)   NOT NULL,
    sex VARCHAR (1)   NOT NULL,
    hire_date DATE  NOT NULL,
    CONSTRAINT pk_employees PRIMARY KEY (emp_no)
);

-- SELECT * FROM department_employees
CREATE TABLE department_employees (
    emp_no INT  NOT NULL,
    dept_no VARCHAR (4)   NOT NULL
);

-- SELECT * FROM department_managers
CREATE TABLE department_managers (
    dept_no VARCHAR (4)   NOT NULL,
    emp_no INT   NOT NULL
);

SELECT * FROM salaries
CREATE TABLE salaries (
    emp_no INT  NOT NULL,
    salary INT  NOT NULL
);

ALTER TABLE employees ADD CONSTRAINT fk_employees_title_id FOREIGN KEY(title_id)
REFERENCES titles (title_id);

ALTER TABLE department_employees ADD CONSTRAINT fk_department_employees_emp_no FOREIGN KEY(emp_no)
REFERENCES employees (emp_no);

ALTER TABLE department_employees ADD CONSTRAINT fk_department_employees_dept_no FOREIGN KEY(dept_no)
REFERENCES departments (dept_no);

ALTER TABLE department_managers ADD CONSTRAINT fk_department_managers_dept_no FOREIGN KEY(dept_no)
REFERENCES departments (dept_no);

ALTER TABLE department_managers ADD CONSTRAINT fk_Department_Managers_emp_no FOREIGN KEY(emp_no)
REFERENCES employees (emp_no);

ALTER TABLE salaries ADD CONSTRAINT fk_salaries_emp_no FOREIGN KEY(emp_no)
REFERENCES employees (emp_no);
-- Change title_id from schema back to emp_title_id for the CVS import.
ALTER TABLE employees
RENAME COLUMN title_id TO emp_title_id;
-- Convert emp_title_id to match title_id naming convention across the tables.
ALTER TABLE employees
RENAME COLUMN emp_title_id TO title_id;