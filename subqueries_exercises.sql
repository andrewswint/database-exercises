USE employees;

# Find all the employees with the same hire date as employee 101010 using a subquery.
# 69 Rows
SELECT first_name, last_name
FROM employees
WHERE hire_date IN (
    SELECT hire_date
    FROM employees
    WHERE emp_no = 101010
);

# Find all the titles held by all employees with the first name Aamod.
# 314 total titles, 6 unique titles
SELECT DISTINCT title
FROM titles
WHERE emp_no IN (
    SELECT emp_no
    FROM employees
    WHERE first_name = 'Aamod'
);

# Find all the current department managers that are female.
SELECT first_name, last_name
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM dept_manager
    WHERE gender = 'f'
      AND to_date > now()
);

# Find all the department names that currently have female managers.
SELECT dept_name
FROM departments
WHERE dept_no IN (
    SELECT dept_no
    FROM dept_manager
    WHERE emp_no IN (
        SELECT emp_no
        FROM employees
        WHERE to_date > now()
          AND gender = 'f'
    )
);

# Find the first and last name of the employee with the highest salary.
SELECT first_name, last_name
FROM employees
WHERE emp_no = (
    SELECT emp_no
    FROM salaries
    ORDER BY salary DESC
    LIMIT 1
);

# Concat the max salaries of the first two employees
SELECT CONCAT((SELECT MAX(salary)
               FROM salaries
               WHERE emp_no = (
                   SELECT emp_no
                   FROM employees
                   GROUP BY emp_no
                   ORDER BY emp_no
                   LIMIT 1
               )
               ), ' ',
    (SELECT MAX(salary)
     FROM salaries
     WHERE emp_no = (
         SELECT emp_no
         FROM employees
         GROUP BY emp_no
         ORDER BY emp_no
         LIMIT 1 OFFSET 1
        )
    )
);

