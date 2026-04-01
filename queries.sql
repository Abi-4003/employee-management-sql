-- View all employees
SELECT * FROM Employee;

-- Join query
SELECT e.emp_name, d.dept_name, e.salary
FROM Employee e
JOIN Department d
ON e.dept_id = d.dept_id;

-- Highest salary
SELECT emp_name, salary
FROM Employee
WHERE salary = (SELECT MAX(salary) FROM Employee);

-- Second highest salary
SELECT MAX(salary)
FROM Employee
WHERE salary < (SELECT MAX(salary) FROM Employee);

-- Average salary per department
SELECT dept_id, AVG(salary)
FROM Employee
GROUP BY dept_id;

-- Employees above average salary
SELECT emp_name, salary
FROM Employee
WHERE salary > (SELECT AVG(salary) FROM Employee);
