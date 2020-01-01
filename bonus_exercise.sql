USE employees;
-- get current manager name of Sales department
SELECT first_name, last_name, emp_no
FROM employees
WHERE emp_no IN (
        SELECT emp_no
        FROM dept_manager
        WHERE to_date > now() AND dept_no = (
            SELECT dept_no
            FROM departments
            WHERE dept_name = 'Sales'
            )
);