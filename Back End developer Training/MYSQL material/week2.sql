-- This query displays the number of employees in each title that were born after 1965-01-01
SELECT t.title,sum(birth_date > '1965-01-01') 'Birthdays after 1965-01-01' 
FROM titles t
INNER JOIN employees e ON t.emp_no = e.emp_no
GROUP BY t.title;
-- 2. I want to know the average salary per title.
SELECT  t.title, avg(salary) 'Average salary'
From titles t
INNER JOIN employees e ON t.emp_no = e.emp_no
INNER JOIN salaries s ON e.emp_no = s.emp_no
GROUP BY t.title;
-- 3. How much money was spent on salary for the marketing department between the years 1990 and 1992?
SELECT dept_name, sum(salary) AS Total
	FROM salaries s 
	INNER JOIN dept_emp ON s.emp_no = dept_emp.emp_no
	INNER JOIN departments ON dept_emp.dept_no = departments.dept_no 
	WHERE departments.dept_name = "Marketing"
		AND (YEAR(s.from_date) BETWEEN "1990" AND "1992"
		OR YEAR(s.to_date) BETWEEN "1990" AND "1992")
	GROUP BY dept_emp.dept_no; 
    