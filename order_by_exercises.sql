USE employees;
-- Change the order by clause so that you order by last name before first name. Your first result should still be Irena Acton but now the last result should be Maya Zyda.
SELECT first_name, last_name, gender
FROM employees
WHERE (first_name = 'Irena'
    OR first_name = 'Vidya'
    OR first_name = 'Maya')
    AND gender = 'M'
    ORDER BY last_name DESC, first_name;

-- Update your queries for employees with 'E' in their last name to sort the results by their employee number. Your results should not change!
SELECT first_name, last_name
FROM employees
WHERE last_name LIKE 'E%'
ORDER BY EMP_NO DESC;

-- # Find all employees hired in the 90s — 135,214 rows.
SELECT first_name, last_name
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31';

-- # Find all employees born on Christmas — 842 rows.
SELECT first_name, last_name
FROM employees
WHERE birth_date LIKE '%-12-25';

-- # Find all employees with a 'q' in their last name — 1,873 rows.
SELECT first_name, last_name
FROM employees
WHERE last_name LIKE '%q%';

-- # Find all employees whose last name starts or ends with 'E' — 30,723 rows.
SELECT first_name, last_name
FROM employees
WHERE last_name LIKE ('E%')
   OR last_name LIKE '%e';
-- # Duplicate the previous query and update it to find all employees whose last name starts and ends with 'E' — 899 rows.
SELECT first_name, last_name
FROM employees
WHERE last_name LIKE ('E%')
   AND last_name LIKE '%e';

-- # Find all employees hired in the 90s and born on Christmas — 362 rows.
SELECT first_name, last_name
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31'
AND birth_date LIKE '%-12-25'
ORDER BY birth_date, hire_date DESC;

-- # Find all employees with a 'q' in their last name but not 'qu' — 547 rows.
SELECT first_name, last_name
FROM employees
WHERE last_name LIKE '%q%'
AND last_name NOT LIKE '%qu%';