# An Analysis of Eligible Retirees for Pewlett Hackard

## Project Overview of the Pewlet Hackard Analysis
#### The goal of this project was to assist the human resources department of Pewlett Hackard determine the upcoming number of people eligible for retirement by job title.  Additionally, a mentorship program was established and eligible employees needed to be identified to participate.  

#### Resources
- Data Source:  departments.csv, employees.csv, dept_manager.csv, salaries.csv, titles.csv, dept_emp.csv
- Software:  PostgreSQL 11, PgAdmin 4 

## Results of the Analysis
The analysis of the workforce of Pewlett Hackard shows that there are currently 

![retirement_titles.png](https://github.com/frostbrosracing/Pewlett-Hackard-Analysis/blob/main/Images/retirement_titles.png)

![retirement_titles_query.png](https://github.com/frostbrosracing/Pewlett-Hackard-Analysis/blob/main/Images/retirement_titles_query.png)


![unique_titles.png](https://github.com/frostbrosracing/Pewlett-Hackard-Analysis/blob/main/Images/unique_titles.png)

![unique_titles_query.png](https://github.com/frostbrosracing/Pewlett-Hackard-Analysis/blob/main/Images/unique_titles_query.png)

![employee_numbers_comparison.png](https://github.com/frostbrosracing/Pewlett-Hackard-Analysis/blob/main/Images/employee_numbers_comparison.png)







## Pewlett Hackard Human Resources Analysis Summary

-- ****NOTE**** The Deliverable 1 instructions indicate to create a table that holds "current employees", but in the 
-- confirmation image it clearly shows employee 10011 Mary Sluis who is no longer with the company.  Because the request 
-- is to confirm that the table looks like that image no attempt was made to filter out former employees.  However, based
-- on the information that is generated from these queries, the total number of eligible retirees is going to overstated.
-- This erroneous reporting could be alleviated by adding an additional filter for "current employees" after the birth_date filter.
-- This would also negate the need to filter for most recent title in the second portion of Deliverable 1 by using the DISTINCT ON
-- method.  For the sake of this module challenge, I've written queries that will deliver the expected results.  Please take this 
-- into consideration in the grading of this challenge and consider adjustments to the prompts for future bootcamp cohorts.  This
-- ambiguity is the source of wasting time that could be better focused on learning more skills related to the subject matter, rather 
-- than speculating on what the intent of the assignment was.

Additional queries to run to assist with the analysis.
Total current employee roster


90398 about to retire
240124 total current workforce

37.6% of total current workforce about to retire

Adjusted numbers
72458 about to retire
240124 total current workforce

30.2% of total current workforce about to retire

