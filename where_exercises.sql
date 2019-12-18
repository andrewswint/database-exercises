USE employees;
# nd all employees with first names 'Irena', 'Vidya', or 'Maya'
SELECT first_name, last_name
FROM employees
WHERE FIRST_NAME IN ('Irena', 'Vidya', 'Maya');
# Update your query for 'Irena', 'Vidya', or 'Maya' to use OR instead of IN — 709 rows.
SELECT first_name, last_name
FROM employees
WHERE FIRST_NAME = ('Irena')
 OR first_name = 'Vidya'
     OR first_name = 'Maya';

# Find all employees whose last name starts with 'E' — 7,330 rows.
SELECT first_name, last_name
FROM employees
WHERE last_name LIKE 'E%';

# Find all employees hired in the 90s — 135,214 rows.
SELECT first_name, last_name
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31';

# Find all employees born on Christmas — 842 rows.
SELECT first_name, last_name
FROM employees
WHERE birth_date LIKE '%-12-25';

# Find all employees with a 'q' in their last name — 1,873 rows.
SELECT first_name, last_name
FROM employees
WHERE last_name LIKE '%q%';

# Find all employees whose last name starts or ends with 'E' — 30,723 rows.
SELECT first_name, last_name
FROM employees
WHERE last_name LIKE ('E%')
   OR last_name LIKE '%e';
# Duplicate the previous query and update it to find all employees whose last name starts and ends with 'E' — 899 rows.
SELECT first_name, last_name
FROM employees
WHERE last_name LIKE ('E%')
   AND last_name LIKE '%e';

# Find all employees hired in the 90s and born on Christmas — 362 rows.
SELECT first_name, last_name
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31'
AND birth_date LIKE '%-12-25';

# Find all employees with a 'q' in their last name but not 'qu' — 547 rows.
SELECT first_name, last_name
FROM employees
WHERE last_name LIKE '%q%'
AND last_name NOT LIKE '%qu%';