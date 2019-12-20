USE employees;

# Using the example in the Associative Table Joins section as a guide, write a query that shows each department along with the name of the current manager for that department.
SELECT d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS full_name
FROM employees as e
         JOIN dept_manager as dm
              ON dm.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01'
ORDER BY dept_name;

# Find the name of all departments currently managed by women.
SELECT d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS full_name
    FROM employees as e
    JOIN dept_manager as dm
        ON dm.emp_no = e.emp_no
    JOIN departments as d
        ON d.dept_no = dm.dept_no
    WHERE dm.to_date = '9999-01-01' AND e.gender = 'F'
    ORDER BY dept_name;

# Find the current titles of employees currently working in the Customer Service department.
SELECT dept_name FROM departments
    GROUP BY dept_name;

    SELECT t.title, COUNT(*) AS count
    FROM employees as e
    JOIN dept_emp as de
        ON de.emp_no = e.emp_no
    JOIN departments as d
        ON d.dept_no = de.dept_no
    JOIN titles as t
        ON t.emp_no = e.emp_no
    WHERE d.dept_name = 'Customer Service'
    GROUP BY t.title;


# Find the current salary of all current managers.
SELECT d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS full_name, s.salary as salary
    FROM employees as e
    JOIN dept_manager as dm
        ON dm.emp_no = e.emp_no
    JOIN departments as d
        ON d.dept_no = dm.dept_no
    JOIN salaries as s
        ON e.emp_no = s.emp_no
    WHERE s.to_date = '9999-01-01' and dm.to_date = '9999-01-01'
    GROUP BY dept_name, s.salary, CONCAT(e.first_name, ' ', e.last_name);

# Find the names of all current employees, their department name, and their current manager's name.
SELECT CONCAT(e.first_name, ' ', e.last_name) AS Employee_Name, d.dept_name AS Department_Name, CONCAT(em.first_name, ' ', em.last_name) AS Manager_Name
    FROM departments AS d
    JOIN dept_emp de
        ON de.dept_no = d.dept_no
    JOIN  employees as e
        ON de.emp_no = e.emp_no
    JOIN dept_manager as dm
        ON dm.dept_no = d.dept_no
    JOIN employees as em
        ON em.emp_no = dm.emp_no
    WHERE dm.to_date = '9999-01-01' AND de.to_date = '9999-01-01'
    ORDER BY d.dept_name;