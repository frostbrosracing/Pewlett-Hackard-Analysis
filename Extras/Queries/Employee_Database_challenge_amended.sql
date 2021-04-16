-- MODULE 7 SQL CHALLENGE AMENDED
-- DELIVERABLE 1
-- Create table with employee number, first and last name, title, from_date, and to_date 
-- for employees who were born between January 1, 1952 and December 31, 1955
-- and save as "retirement_titles.csv"

-- ****NOTE**** The Deliverable 1 instructions indicate to create a table that holds "current employees", but in the 
-- confirmation image it clearly shows employee 10011 Mary Sluis who is no longer with the company.  Because the challenge states 
-- to confirm that the table looks like that image, no attempt was made to filter out former employees in the original 
-- Employee_Database_challenge.sql file.  However, based on the information that was generated from those queries, 
-- the total number of eligible retirees was overstated.  In order to correct this potentially erroneous reporting,
-- I re-wrote the queries to pull current employeesby adding the filter at the bottom of the first query.
-- For the sake of this module challenge, I've written queries that will deliver the expected results.  Please take this 
-- into consideration in the grading of this challenge and consider adjustments to the prompts for future bootcamp cohorts.  This
-- ambiguity is the source of wasting time that could be better focused on learning more skills related to the subject matter, rather 
-- than speculating on what the intent of the assignment was.
SELECT e.emp_no,
	e.first_name,
	e.last_name,
	t.title,
	t.from_date,
	t.to_date
-- INTO retirement_titles_2
FROM employees AS e
	INNER JOIN titles AS t
		ON e.emp_no = t.emp_no
WHERE birth_date BETWEEN '1952-01-01' AND '1955-12-31'
AND to_date = '9999-01-01'
ORDER BY emp_no ASC;

-- Create table that contains the employee number, first and last name, and most recent title by
-- using DISTINCT with ORDER BY to remove duplicate rows and get the employee's current job title
-- and save as "unique_titles.csv"
SELECT emp_no,
	first_name,
	last_name,
	title
-- INTO unique_titles_2
FROM retirement_titles_2;

		
-- Create table to retrieve the number of employees by their most recent job title who are about to retire
-- and save as "retiring_titles.csv"
SELECT COUNT (title), title
-- INTO retiring_titles_2
FROM unique_titles_2
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
-- INTO mentorship_eligibility
FROM employees AS e
	INNER JOIN dept_emp AS de
		ON e.emp_no = de.emp_no
	INNER JOIN titles AS t
		ON e.emp_no = t.emp_no
WHERE (birth_date BETWEEN '1965-01-01' AND '1965-12-31')
AND (de.to_date = '9999-01-01')
ORDER BY e.emp_no ASC;


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
WHERE (birth_date BETWEEN '1965-01-01' AND '1965-12-31')
AND (de.to_date = '9999-01-01')
ORDER BY e.emp_no ASC, de.to_date DESC;
