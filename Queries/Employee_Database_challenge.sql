-- MODULE 7 SQL CHALLENGE
-- DELIVERABLE 1
-- Create table with employee number, first and last name, title, from_date, and to_date 
-- for employees who were born between January 1, 1952 and December 31, 1955
-- and save as "retirement_titles.csv"
SELECT e.emp_no,
	e.first_name,
	e.last_name,
	t.title,
	t.from_date,
	t.to_date
INTO retirement_titles
FROM employees AS e
	INNER JOIN titles AS t
		ON e.emp_no = t.emp_no
WHERE birth_date BETWEEN '1952-01-01' AND '1955-12-31'
ORDER BY emp_no ASC;

-- Create table that contains the employee number, first and last name, and most recent title by
-- using DISTINCT with ORDER BY to remove duplicate rows and get the employee's current job title
-- and save as "unique_titles.csv"
SELECT DISTINCT ON (emp_no) emp_no,
	first_name,
	last_name,
	title
INTO unique_titles
FROM retirement_titles
ORDER BY emp_no ASC, to_date DESC;
		
-- Create table to retrieve the number of employees by their most recent job title who are about to retire
-- and save as "retiring_titles.csv"
SELECT COUNT (title), title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY count DESC;


-- DELIVERABLE 2
-- Create table that contains the employee number, first and last name, birth date, from_date, to_date and title
-- for employees who were born between January 1, 1965 and December 31, 1965.  Filter by current employees only
-- and save as "mentorship_eligibility.csv"
SELECT DISTINCT ON (emp_no) e.emp_no,
	e.first_name,
	e.last_name,
 	e.birth_date,
	de.from_date,
	de.to_date,
	t.title
INTO mentorship_eligibility
FROM employees AS e
	INNER JOIN dept_emp AS de
		ON e.emp_no = de.emp_no
	INNER JOIN titles AS t
		ON e.emp_no = t.emp_no
WHERE (de.to_date = '9999-01-01')
AND (birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no ASC, to_date DESC;


